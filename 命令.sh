#!/bin/bash

#Cookie
# ./makecookie 631907060609 
# "0x3b1a3827"

#level 0 (smoke)
# cat smoke.txt | ./hex2raw | ./bufbomb -u 631907060609;

#level 1 (fizz)
# cat fizz.txt | ./hex2raw | ./bufbomb -u 631907060609;

#level 2 (bang)
# gcc -m32 -c "./level2(bang)/attack.S" -o "./level2(bang)/attack.o";
# objdump -d "./level2(bang)/attack.o" > "./level2(bang)/attack.d";
# cat "./level2(bang)/bang.txt" | ./hex2raw | ./bufbomb -u 631907060609;

#level 3 (rumble)
# gcc -m32 -c "./level3(rumble)/attack.S" -o "./level3(rumble)/attack.o";
# objdump -d "./level3(rumble)/attack.o" > "./level3(rumble)/attack.d";

# 方案一
# cat "./level3(rumble)/rumble.txt" | ./hex2raw | ./bufbomb -u 631907060609;

# 方案二
# ./hex2raw < "./level3(rumble)/rumble.txt" > "./level3(rumble)/rumble-row.txt";
# ./bufbomb -u 631907060609 < "./level3(rumble)/rumble-row.txt";
