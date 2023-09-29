计算机操作系统buflab实验(bufbomb)
===
# 实验准备
**1、VScode（宇宙第一编辑器！）**
2、WSL（虚拟机环境）
3、虚拟机安装i386
4、GDB调试环境
5、~~作案工具~~ 
# Level 0: smoke

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

在 getbuf 过程执行完其返回语句后，程序正常情况下应该从上列 test 过程中第 8 行的
if 语句继续执行，现在你应设法改变该行为。在 bufbomb 程序中有一个对应如下 C 代码的
过程 smoke： 

```c
void smoke() 
{ 
 printf("Smoke!: You called smoke()\n"); 
 validate(0); 
 exit(0); 
} 
```

本实验级别的任务是当 getbuf 过程执行它的 return 语句后，使 bufbomb 程序执行
smoke 过程的代码，而不是返回到 test 过程继续执行。（注意：攻击字符串可能会同时破坏
了与本阶段无关的栈结构部分，但在本级别中这没有问题，因为 smoke 过程会使程序直接
结束） 

> 建议： 
> 1、在本级别中，用来推断攻击字符串的所有信息都可从检查 bufbomb 的反汇编代码 中获得（使用 objdump –d 命令） 
> 2、注意字符串和代码中的字节顺序   可使用 GDB 工具单步跟踪 getbuf 过程的最后几条指令，以了解程序的运行情况

## 解答

# Level 1: fizz 
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

与 Level 0 类似，本实验级别的任务是让 bufbomb 程序在其中的 getbuf 过程执行 return
语句后转而执行 fizz 过程的代码，而不是返回到 test 过程。不过，与 Level 0 的 smoke 过程
不同，fizz 过程需要一个输入参数，如上列代码所示，本级别要求设法使该参数的值等于使
用 makecookie 得到的 cookie 值。 

> 建议： 
> 程序无需且不会真的调用 fizz——程序只是执行 fizz 过程的语句代码，因此需要仔细考虑将 cookie放置在栈中什么位置

## 解答
# Level 2: bang 
更复杂的缓冲区攻击将在攻击字符串中包含实际的机器指令，并通过攻击字符串将原返回地
址指针改写为位于栈上的攻击机器指令的开始地址。这样，当调用过程（这里是 getbuf）执
行 ret 指令时，程序将开始执行攻击代码而不是返回上层过程。 
使用这种攻击方式可以使被攻击程序执行任何操作。随攻击字符串被放置到栈上的代码
称为攻击代码（exploit code）。然而，此类攻击具有一定难度，因为必须设法将攻击机器代
码置入栈中，并且将返回地址指向攻击代码的起始位置。 
在 bufbomb 程序中，有一个 bang 过程，代码如下： 

```c
int global_value = 0; 
void bang(int val) 
{ 
 if (global_value == cookie) { 
 printf("Bang!: You set global_value to 0x%x\n", 
global_value); 
 validate(2); 
 } else 
 printf("Misfire: global_value = 0x%x\n", global_value); 
 exit(0); 
}
```

与 Level 0 和 Level 1 类似，本实验级别的任务是让 bufbomb 执行 bang 过程中的代码
而不是返回到 test 过程继续执行。具体来讲，攻击代码应首先将全局变量 global_value 设置
为对应 userid（即本慕课号“0809NJU064”）的 cookie 值，再将 bang 过程的地址压入栈
中，然后执行一条 ret 指令从而跳至 bang 过程的代码继续执行。 

> 建议：
> 1、可以使用 GDB 获得构造攻击字符串所需的信息。例如，在 getbuf 过程里设置一个断点并执行到该断点处，进而确定global_value 和缓冲区等变量的地址
> 2、手工进行指令的字节编码枯燥且容易出错。相反，你可以使用一些工具来完成该工作，具体可参考本文档最后的示例说明  
> 3、不要试图利用 jmp 或者 call 指令跳到 bang 过程的代码中，这些指令使用相对 PC的寻址，很难正确达到前述目标。相反，你应向栈中压入地址并使用 ret 指令实现跳转

## 解答
# Level 3: rumble 
与前一级别相同，本级别实验需要在攻击字符串中包含实际的机器指令以实现改写原返回地
址指针、执行特定的攻击行为等目标。与前一级别不同之处是，本级别需要在攻击字符串中
包含准备和传递过程调用参数的指令，注意所传递参数与攻击字符串一样将占用栈中的存储
空间。 
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
> 1、可以使用 OBJDUMP 工具分析被调用过程 eval2equal 的执行逻辑（可集中注意力于自`sprintf`过程调用及其参数压栈开始的指令，其前的多数指令与随机数的生成和使用有关——与本实验级别的主要目的关系不大），以获得传递参数的正确取值，从而构造满足实验目标的攻击字符串
> 2、如前一级别实验，你可以使用一些工具来帮助进行指令的字节编码（可参考本文档最后的示例说明），并通过向栈中压入地址并使用 ret 指令来实现跳转
> 3、在栈中合理安排调用参数的值的存储空间

