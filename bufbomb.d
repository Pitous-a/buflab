
bufbomb:     file format elf32-i386


Disassembly of section .init:

08049000 <_init>:
 8049000:	53                   	push   %ebx
 8049001:	83 ec 08             	sub    $0x8,%esp
 8049004:	e8 c7 02 00 00       	call   80492d0 <__x86.get_pc_thunk.bx>
 8049009:	81 c3 f7 3f 00 00    	add    $0x3ff7,%ebx
 804900f:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8049015:	85 c0                	test   %eax,%eax
 8049017:	74 02                	je     804901b <_init+0x1b>
 8049019:	ff d0                	call   *%eax
 804901b:	83 c4 08             	add    $0x8,%esp
 804901e:	5b                   	pop    %ebx
 804901f:	c3                   	ret    

Disassembly of section .plt:

08049020 <.plt>:
 8049020:	ff 35 04 d0 04 08    	push   0x804d004
 8049026:	ff 25 08 d0 04 08    	jmp    *0x804d008
 804902c:	00 00                	add    %al,(%eax)
	...

08049030 <strcmp@plt>:
 8049030:	ff 25 0c d0 04 08    	jmp    *0x804d00c
 8049036:	68 00 00 00 00       	push   $0x0
 804903b:	e9 e0 ff ff ff       	jmp    8049020 <.plt>

08049040 <read@plt>:
 8049040:	ff 25 10 d0 04 08    	jmp    *0x804d010
 8049046:	68 08 00 00 00       	push   $0x8
 804904b:	e9 d0 ff ff ff       	jmp    8049020 <.plt>

08049050 <srandom@plt>:
 8049050:	ff 25 14 d0 04 08    	jmp    *0x804d014
 8049056:	68 10 00 00 00       	push   $0x10
 804905b:	e9 c0 ff ff ff       	jmp    8049020 <.plt>

08049060 <printf@plt>:
 8049060:	ff 25 18 d0 04 08    	jmp    *0x804d018
 8049066:	68 18 00 00 00       	push   $0x18
 804906b:	e9 b0 ff ff ff       	jmp    8049020 <.plt>

08049070 <memmove@plt>:
 8049070:	ff 25 1c d0 04 08    	jmp    *0x804d01c
 8049076:	68 20 00 00 00       	push   $0x20
 804907b:	e9 a0 ff ff ff       	jmp    8049020 <.plt>

08049080 <strdup@plt>:
 8049080:	ff 25 20 d0 04 08    	jmp    *0x804d020
 8049086:	68 28 00 00 00       	push   $0x28
 804908b:	e9 90 ff ff ff       	jmp    8049020 <.plt>

08049090 <memcpy@plt>:
 8049090:	ff 25 24 d0 04 08    	jmp    *0x804d024
 8049096:	68 30 00 00 00       	push   $0x30
 804909b:	e9 80 ff ff ff       	jmp    8049020 <.plt>

080490a0 <signal@plt>:
 80490a0:	ff 25 28 d0 04 08    	jmp    *0x804d028
 80490a6:	68 38 00 00 00       	push   $0x38
 80490ab:	e9 70 ff ff ff       	jmp    8049020 <.plt>

080490b0 <memcmp@plt>:
 80490b0:	ff 25 2c d0 04 08    	jmp    *0x804d02c
 80490b6:	68 40 00 00 00       	push   $0x40
 80490bb:	e9 60 ff ff ff       	jmp    8049020 <.plt>

080490c0 <alarm@plt>:
 80490c0:	ff 25 30 d0 04 08    	jmp    *0x804d030
 80490c6:	68 48 00 00 00       	push   $0x48
 80490cb:	e9 50 ff ff ff       	jmp    8049020 <.plt>

080490d0 <htons@plt>:
 80490d0:	ff 25 34 d0 04 08    	jmp    *0x804d034
 80490d6:	68 50 00 00 00       	push   $0x50
 80490db:	e9 40 ff ff ff       	jmp    8049020 <.plt>

080490e0 <fwrite@plt>:
 80490e0:	ff 25 38 d0 04 08    	jmp    *0x804d038
 80490e6:	68 58 00 00 00       	push   $0x58
 80490eb:	e9 30 ff ff ff       	jmp    8049020 <.plt>

080490f0 <strcpy@plt>:
 80490f0:	ff 25 3c d0 04 08    	jmp    *0x804d03c
 80490f6:	68 60 00 00 00       	push   $0x60
 80490fb:	e9 20 ff ff ff       	jmp    8049020 <.plt>

08049100 <getpid@plt>:
 8049100:	ff 25 40 d0 04 08    	jmp    *0x804d040
 8049106:	68 68 00 00 00       	push   $0x68
 804910b:	e9 10 ff ff ff       	jmp    8049020 <.plt>

08049110 <gethostname@plt>:
 8049110:	ff 25 44 d0 04 08    	jmp    *0x804d044
 8049116:	68 70 00 00 00       	push   $0x70
 804911b:	e9 00 ff ff ff       	jmp    8049020 <.plt>

08049120 <puts@plt>:
 8049120:	ff 25 48 d0 04 08    	jmp    *0x804d048
 8049126:	68 78 00 00 00       	push   $0x78
 804912b:	e9 f0 fe ff ff       	jmp    8049020 <.plt>

08049130 <exit@plt>:
 8049130:	ff 25 4c d0 04 08    	jmp    *0x804d04c
 8049136:	68 80 00 00 00       	push   $0x80
 804913b:	e9 e0 fe ff ff       	jmp    8049020 <.plt>

08049140 <srand@plt>:
 8049140:	ff 25 50 d0 04 08    	jmp    *0x804d050
 8049146:	68 88 00 00 00       	push   $0x88
 804914b:	e9 d0 fe ff ff       	jmp    8049020 <.plt>

08049150 <mmap@plt>:
 8049150:	ff 25 54 d0 04 08    	jmp    *0x804d054
 8049156:	68 90 00 00 00       	push   $0x90
 804915b:	e9 c0 fe ff ff       	jmp    8049020 <.plt>

08049160 <strlen@plt>:
 8049160:	ff 25 58 d0 04 08    	jmp    *0x804d058
 8049166:	68 98 00 00 00       	push   $0x98
 804916b:	e9 b0 fe ff ff       	jmp    8049020 <.plt>

08049170 <__libc_start_main@plt>:
 8049170:	ff 25 5c d0 04 08    	jmp    *0x804d05c
 8049176:	68 a0 00 00 00       	push   $0xa0
 804917b:	e9 a0 fe ff ff       	jmp    8049020 <.plt>

08049180 <write@plt>:
 8049180:	ff 25 60 d0 04 08    	jmp    *0x804d060
 8049186:	68 a8 00 00 00       	push   $0xa8
 804918b:	e9 90 fe ff ff       	jmp    8049020 <.plt>

08049190 <getopt@plt>:
 8049190:	ff 25 64 d0 04 08    	jmp    *0x804d064
 8049196:	68 b0 00 00 00       	push   $0xb0
 804919b:	e9 80 fe ff ff       	jmp    8049020 <.plt>

080491a0 <strcasecmp@plt>:
 80491a0:	ff 25 68 d0 04 08    	jmp    *0x804d068
 80491a6:	68 b8 00 00 00       	push   $0xb8
 80491ab:	e9 70 fe ff ff       	jmp    8049020 <.plt>

080491b0 <__isoc99_sscanf@plt>:
 80491b0:	ff 25 6c d0 04 08    	jmp    *0x804d06c
 80491b6:	68 c0 00 00 00       	push   $0xc0
 80491bb:	e9 60 fe ff ff       	jmp    8049020 <.plt>

080491c0 <memset@plt>:
 80491c0:	ff 25 70 d0 04 08    	jmp    *0x804d070
 80491c6:	68 c8 00 00 00       	push   $0xc8
 80491cb:	e9 50 fe ff ff       	jmp    8049020 <.plt>

080491d0 <__errno_location@plt>:
 80491d0:	ff 25 74 d0 04 08    	jmp    *0x804d074
 80491d6:	68 d0 00 00 00       	push   $0xd0
 80491db:	e9 40 fe ff ff       	jmp    8049020 <.plt>

080491e0 <rand@plt>:
 80491e0:	ff 25 78 d0 04 08    	jmp    *0x804d078
 80491e6:	68 d8 00 00 00       	push   $0xd8
 80491eb:	e9 30 fe ff ff       	jmp    8049020 <.plt>

080491f0 <munmap@plt>:
 80491f0:	ff 25 7c d0 04 08    	jmp    *0x804d07c
 80491f6:	68 e0 00 00 00       	push   $0xe0
 80491fb:	e9 20 fe ff ff       	jmp    8049020 <.plt>

08049200 <sprintf@plt>:
 8049200:	ff 25 80 d0 04 08    	jmp    *0x804d080
 8049206:	68 e8 00 00 00       	push   $0xe8
 804920b:	e9 10 fe ff ff       	jmp    8049020 <.plt>

08049210 <socket@plt>:
 8049210:	ff 25 84 d0 04 08    	jmp    *0x804d084
 8049216:	68 f0 00 00 00       	push   $0xf0
 804921b:	e9 00 fe ff ff       	jmp    8049020 <.plt>

08049220 <getc@plt>:
 8049220:	ff 25 88 d0 04 08    	jmp    *0x804d088
 8049226:	68 f8 00 00 00       	push   $0xf8
 804922b:	e9 f0 fd ff ff       	jmp    8049020 <.plt>

08049230 <random@plt>:
 8049230:	ff 25 8c d0 04 08    	jmp    *0x804d08c
 8049236:	68 00 01 00 00       	push   $0x100
 804923b:	e9 e0 fd ff ff       	jmp    8049020 <.plt>

08049240 <gethostbyname@plt>:
 8049240:	ff 25 90 d0 04 08    	jmp    *0x804d090
 8049246:	68 08 01 00 00       	push   $0x108
 804924b:	e9 d0 fd ff ff       	jmp    8049020 <.plt>

08049250 <connect@plt>:
 8049250:	ff 25 94 d0 04 08    	jmp    *0x804d094
 8049256:	68 10 01 00 00       	push   $0x110
 804925b:	e9 c0 fd ff ff       	jmp    8049020 <.plt>

08049260 <close@plt>:
 8049260:	ff 25 98 d0 04 08    	jmp    *0x804d098
 8049266:	68 18 01 00 00       	push   $0x118
 804926b:	e9 b0 fd ff ff       	jmp    8049020 <.plt>

08049270 <calloc@plt>:
 8049270:	ff 25 9c d0 04 08    	jmp    *0x804d09c
 8049276:	68 20 01 00 00       	push   $0x120
 804927b:	e9 a0 fd ff ff       	jmp    8049020 <.plt>

Disassembly of section .text:

08049280 <_start>:
 8049280:	31 ed                	xor    %ebp,%ebp
 8049282:	5e                   	pop    %esi
 8049283:	89 e1                	mov    %esp,%ecx
 8049285:	83 e4 f0             	and    $0xfffffff0,%esp
 8049288:	50                   	push   %eax
 8049289:	54                   	push   %esp
 804928a:	52                   	push   %edx
 804928b:	e8 23 00 00 00       	call   80492b3 <_start+0x33>
 8049290:	81 c3 70 3d 00 00    	add    $0x3d70,%ebx
 8049296:	8d 83 30 dc ff ff    	lea    -0x23d0(%ebx),%eax
 804929c:	50                   	push   %eax
 804929d:	8d 83 d0 db ff ff    	lea    -0x2430(%ebx),%eax
 80492a3:	50                   	push   %eax
 80492a4:	51                   	push   %ecx
 80492a5:	56                   	push   %esi
 80492a6:	c7 c0 e6 99 04 08    	mov    $0x80499e6,%eax
 80492ac:	50                   	push   %eax
 80492ad:	e8 be fe ff ff       	call   8049170 <__libc_start_main@plt>
 80492b2:	f4                   	hlt    
 80492b3:	8b 1c 24             	mov    (%esp),%ebx
 80492b6:	c3                   	ret    
 80492b7:	66 90                	xchg   %ax,%ax
 80492b9:	66 90                	xchg   %ax,%ax
 80492bb:	66 90                	xchg   %ax,%ax
 80492bd:	66 90                	xchg   %ax,%ax
 80492bf:	90                   	nop

080492c0 <_dl_relocate_static_pie>:
 80492c0:	c3                   	ret    
 80492c1:	66 90                	xchg   %ax,%ax
 80492c3:	66 90                	xchg   %ax,%ax
 80492c5:	66 90                	xchg   %ax,%ax
 80492c7:	66 90                	xchg   %ax,%ax
 80492c9:	66 90                	xchg   %ax,%ax
 80492cb:	66 90                	xchg   %ax,%ax
 80492cd:	66 90                	xchg   %ax,%ax
 80492cf:	90                   	nop

080492d0 <__x86.get_pc_thunk.bx>:
 80492d0:	8b 1c 24             	mov    (%esp),%ebx
 80492d3:	c3                   	ret    
 80492d4:	66 90                	xchg   %ax,%ax
 80492d6:	66 90                	xchg   %ax,%ax
 80492d8:	66 90                	xchg   %ax,%ax
 80492da:	66 90                	xchg   %ax,%ax
 80492dc:	66 90                	xchg   %ax,%ax
 80492de:	66 90                	xchg   %ax,%ax

080492e0 <deregister_tm_clones>:
 80492e0:	b8 4c d1 04 08       	mov    $0x804d14c,%eax
 80492e5:	3d 4c d1 04 08       	cmp    $0x804d14c,%eax
 80492ea:	74 24                	je     8049310 <deregister_tm_clones+0x30>
 80492ec:	b8 00 00 00 00       	mov    $0x0,%eax
 80492f1:	85 c0                	test   %eax,%eax
 80492f3:	74 1b                	je     8049310 <deregister_tm_clones+0x30>
 80492f5:	55                   	push   %ebp
 80492f6:	89 e5                	mov    %esp,%ebp
 80492f8:	83 ec 14             	sub    $0x14,%esp
 80492fb:	68 4c d1 04 08       	push   $0x804d14c
 8049300:	ff d0                	call   *%eax
 8049302:	83 c4 10             	add    $0x10,%esp
 8049305:	c9                   	leave  
 8049306:	c3                   	ret    
 8049307:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804930e:	66 90                	xchg   %ax,%ax
 8049310:	c3                   	ret    
 8049311:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049318:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804931f:	90                   	nop

08049320 <register_tm_clones>:
 8049320:	b8 4c d1 04 08       	mov    $0x804d14c,%eax
 8049325:	2d 4c d1 04 08       	sub    $0x804d14c,%eax
 804932a:	c1 f8 02             	sar    $0x2,%eax
 804932d:	89 c2                	mov    %eax,%edx
 804932f:	c1 ea 1f             	shr    $0x1f,%edx
 8049332:	01 d0                	add    %edx,%eax
 8049334:	d1 f8                	sar    %eax
 8049336:	74 20                	je     8049358 <register_tm_clones+0x38>
 8049338:	ba 00 00 00 00       	mov    $0x0,%edx
 804933d:	85 d2                	test   %edx,%edx
 804933f:	74 17                	je     8049358 <register_tm_clones+0x38>
 8049341:	55                   	push   %ebp
 8049342:	89 e5                	mov    %esp,%ebp
 8049344:	83 ec 10             	sub    $0x10,%esp
 8049347:	50                   	push   %eax
 8049348:	68 4c d1 04 08       	push   $0x804d14c
 804934d:	ff d2                	call   *%edx
 804934f:	83 c4 10             	add    $0x10,%esp
 8049352:	c9                   	leave  
 8049353:	c3                   	ret    
 8049354:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049358:	c3                   	ret    
 8049359:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08049360 <__do_global_dtors_aux>:
 8049360:	80 3d 8c d1 04 08 00 	cmpb   $0x0,0x804d18c
 8049367:	75 17                	jne    8049380 <__do_global_dtors_aux+0x20>
 8049369:	55                   	push   %ebp
 804936a:	89 e5                	mov    %esp,%ebp
 804936c:	83 ec 08             	sub    $0x8,%esp
 804936f:	e8 6c ff ff ff       	call   80492e0 <deregister_tm_clones>
 8049374:	c6 05 8c d1 04 08 01 	movb   $0x1,0x804d18c
 804937b:	c9                   	leave  
 804937c:	c3                   	ret    
 804937d:	8d 76 00             	lea    0x0(%esi),%esi
 8049380:	c3                   	ret    
 8049381:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049388:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804938f:	90                   	nop

08049390 <frame_dummy>:
 8049390:	eb 8e                	jmp    8049320 <register_tm_clones>

08049392 <RIVGFzGRgZ>:
 8049392:	55                   	push   %ebp
 8049393:	89 e5                	mov    %esp,%ebp
 8049395:	90                   	nop
 8049396:	90                   	nop
 8049397:	90                   	nop
 8049398:	90                   	nop
 8049399:	90                   	nop
 804939a:	90                   	nop
 804939b:	90                   	nop
 804939c:	90                   	nop
 804939d:	90                   	nop
 804939e:	90                   	nop
 804939f:	90                   	nop
 80493a0:	90                   	nop
 80493a1:	90                   	nop
 80493a2:	90                   	nop
 80493a3:	90                   	nop
 80493a4:	90                   	nop
 80493a5:	90                   	nop
 80493a6:	90                   	nop
 80493a7:	90                   	nop
 80493a8:	90                   	nop
 80493a9:	90                   	nop
 80493aa:	90                   	nop
 80493ab:	90                   	nop
 80493ac:	90                   	nop
 80493ad:	90                   	nop
 80493ae:	90                   	nop
 80493af:	90                   	nop
 80493b0:	90                   	nop
 80493b1:	90                   	nop
 80493b2:	90                   	nop
 80493b3:	90                   	nop
 80493b4:	90                   	nop
 80493b5:	90                   	nop
 80493b6:	90                   	nop
 80493b7:	90                   	nop
 80493b8:	8b 55 0c             	mov    0xc(%ebp),%edx
 80493bb:	89 d0                	mov    %edx,%eax
 80493bd:	c1 e0 02             	shl    $0x2,%eax
 80493c0:	01 c2                	add    %eax,%edx
 80493c2:	8b 45 08             	mov    0x8(%ebp),%eax
 80493c5:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
 80493c8:	8b 45 08             	mov    0x8(%ebp),%eax
 80493cb:	99                   	cltd   
 80493cc:	f7 7d 0c             	idivl  0xc(%ebp)
 80493cf:	29 c1                	sub    %eax,%ecx
 80493d1:	89 c8                	mov    %ecx,%eax
 80493d3:	5d                   	pop    %ebp
 80493d4:	c3                   	ret    

080493d5 <smoke>:
 80493d5:	55                   	push   %ebp
 80493d6:	89 e5                	mov    %esp,%ebp
 80493d8:	83 ec 08             	sub    $0x8,%esp
 80493db:	83 ec 0c             	sub    $0xc,%esp
 80493de:	68 47 b0 04 08       	push   $0x804b047
 80493e3:	e8 38 fd ff ff       	call   8049120 <puts@plt>
 80493e8:	83 c4 10             	add    $0x10,%esp
 80493eb:	83 ec 0c             	sub    $0xc,%esp
 80493ee:	6a 00                	push   $0x0
 80493f0:	e8 c6 09 00 00       	call   8049dbb <validate>
 80493f5:	83 c4 10             	add    $0x10,%esp
 80493f8:	83 ec 0c             	sub    $0xc,%esp
 80493fb:	6a 00                	push   $0x0
 80493fd:	e8 2e fd ff ff       	call   8049130 <exit@plt>

08049402 <fizz>:
 8049402:	55                   	push   %ebp
 8049403:	89 e5                	mov    %esp,%ebp
 8049405:	83 ec 08             	sub    $0x8,%esp
 8049408:	8b 55 08             	mov    0x8(%ebp),%edx
 804940b:	a1 a0 d1 04 08       	mov    0x804d1a0,%eax
 8049410:	39 c2                	cmp    %eax,%edx
 8049412:	75 22                	jne    8049436 <fizz+0x34>
 8049414:	83 ec 08             	sub    $0x8,%esp
 8049417:	ff 75 08             	push   0x8(%ebp)
 804941a:	68 62 b0 04 08       	push   $0x804b062
 804941f:	e8 3c fc ff ff       	call   8049060 <printf@plt>
 8049424:	83 c4 10             	add    $0x10,%esp
 8049427:	83 ec 0c             	sub    $0xc,%esp
 804942a:	6a 01                	push   $0x1
 804942c:	e8 8a 09 00 00       	call   8049dbb <validate>
 8049431:	83 c4 10             	add    $0x10,%esp
 8049434:	eb 13                	jmp    8049449 <fizz+0x47>
 8049436:	83 ec 08             	sub    $0x8,%esp
 8049439:	ff 75 08             	push   0x8(%ebp)
 804943c:	68 80 b0 04 08       	push   $0x804b080
 8049441:	e8 1a fc ff ff       	call   8049060 <printf@plt>
 8049446:	83 c4 10             	add    $0x10,%esp
 8049449:	83 ec 0c             	sub    $0xc,%esp
 804944c:	6a 00                	push   $0x0
 804944e:	e8 dd fc ff ff       	call   8049130 <exit@plt>

08049453 <bang>:
 8049453:	55                   	push   %ebp
 8049454:	89 e5                	mov    %esp,%ebp
 8049456:	83 ec 08             	sub    $0x8,%esp
 8049459:	a1 a8 d1 04 08       	mov    0x804d1a8,%eax
 804945e:	89 c2                	mov    %eax,%edx
 8049460:	a1 a0 d1 04 08       	mov    0x804d1a0,%eax
 8049465:	39 c2                	cmp    %eax,%edx
 8049467:	75 25                	jne    804948e <bang+0x3b>
 8049469:	a1 a8 d1 04 08       	mov    0x804d1a8,%eax
 804946e:	83 ec 08             	sub    $0x8,%esp
 8049471:	50                   	push   %eax
 8049472:	68 a0 b0 04 08       	push   $0x804b0a0
 8049477:	e8 e4 fb ff ff       	call   8049060 <printf@plt>
 804947c:	83 c4 10             	add    $0x10,%esp
 804947f:	83 ec 0c             	sub    $0xc,%esp
 8049482:	6a 02                	push   $0x2
 8049484:	e8 32 09 00 00       	call   8049dbb <validate>
 8049489:	83 c4 10             	add    $0x10,%esp
 804948c:	eb 16                	jmp    80494a4 <bang+0x51>
 804948e:	a1 a8 d1 04 08       	mov    0x804d1a8,%eax
 8049493:	83 ec 08             	sub    $0x8,%esp
 8049496:	50                   	push   %eax
 8049497:	68 c5 b0 04 08       	push   $0x804b0c5
 804949c:	e8 bf fb ff ff       	call   8049060 <printf@plt>
 80494a1:	83 c4 10             	add    $0x10,%esp
 80494a4:	83 ec 0c             	sub    $0xc,%esp
 80494a7:	6a 00                	push   $0x0
 80494a9:	e8 82 fc ff ff       	call   8049130 <exit@plt>

080494ae <eval2equal>:
 80494ae:	55                   	push   %ebp
 80494af:	89 e5                	mov    %esp,%ebp
 80494b1:	83 ec 48             	sub    $0x48,%esp
 80494b4:	e8 77 fd ff ff       	call   8049230 <random@plt>
 80494b9:	89 c1                	mov    %eax,%ecx
 80494bb:	ba 9d 82 97 53       	mov    $0x5397829d,%edx
 80494c0:	89 c8                	mov    %ecx,%eax
 80494c2:	f7 ea                	imul   %edx
 80494c4:	c1 fa 04             	sar    $0x4,%edx
 80494c7:	89 c8                	mov    %ecx,%eax
 80494c9:	c1 f8 1f             	sar    $0x1f,%eax
 80494cc:	29 c2                	sub    %eax,%edx
 80494ce:	89 d0                	mov    %edx,%eax
 80494d0:	6b c0 31             	imul   $0x31,%eax,%eax
 80494d3:	29 c1                	sub    %eax,%ecx
 80494d5:	89 c8                	mov    %ecx,%eax
 80494d7:	89 c2                	mov    %eax,%edx
 80494d9:	8d 45 b9             	lea    -0x47(%ebp),%eax
 80494dc:	01 d0                	add    %edx,%eax
 80494de:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80494e1:	83 ec 04             	sub    $0x4,%esp
 80494e4:	ff 75 0c             	push   0xc(%ebp)
 80494e7:	68 e3 b0 04 08       	push   $0x804b0e3
 80494ec:	ff 75 f4             	push   -0xc(%ebp)
 80494ef:	e8 0c fd ff ff       	call   8049200 <sprintf@plt>
 80494f4:	83 c4 10             	add    $0x10,%esp
 80494f7:	83 ec 04             	sub    $0x4,%esp
 80494fa:	6a 09                	push   $0x9
 80494fc:	ff 75 f4             	push   -0xc(%ebp)
 80494ff:	ff 75 08             	push   0x8(%ebp)
 8049502:	e8 a9 fb ff ff       	call   80490b0 <memcmp@plt>
 8049507:	83 c4 10             	add    $0x10,%esp
 804950a:	85 c0                	test   %eax,%eax
 804950c:	0f 94 c0             	sete   %al
 804950f:	0f b6 c0             	movzbl %al,%eax
 8049512:	c9                   	leave  
 8049513:	c3                   	ret    

08049514 <rumble>:
 8049514:	55                   	push   %ebp
 8049515:	89 e5                	mov    %esp,%ebp
 8049517:	83 ec 08             	sub    $0x8,%esp
 804951a:	a1 a0 d1 04 08       	mov    0x804d1a0,%eax
 804951f:	83 ec 08             	sub    $0x8,%esp
 8049522:	50                   	push   %eax
 8049523:	ff 75 08             	push   0x8(%ebp)
 8049526:	e8 83 ff ff ff       	call   80494ae <eval2equal>
 804952b:	83 c4 10             	add    $0x10,%esp
 804952e:	85 c0                	test   %eax,%eax
 8049530:	74 22                	je     8049554 <rumble+0x40>
 8049532:	83 ec 08             	sub    $0x8,%esp
 8049535:	ff 75 08             	push   0x8(%ebp)
 8049538:	68 e8 b0 04 08       	push   $0x804b0e8
 804953d:	e8 1e fb ff ff       	call   8049060 <printf@plt>
 8049542:	83 c4 10             	add    $0x10,%esp
 8049545:	83 ec 0c             	sub    $0xc,%esp
 8049548:	6a 03                	push   $0x3
 804954a:	e8 6c 08 00 00       	call   8049dbb <validate>
 804954f:	83 c4 10             	add    $0x10,%esp
 8049552:	eb 13                	jmp    8049567 <rumble+0x53>
 8049554:	83 ec 08             	sub    $0x8,%esp
 8049557:	ff 75 08             	push   0x8(%ebp)
 804955a:	68 0c b1 04 08       	push   $0x804b10c
 804955f:	e8 fc fa ff ff       	call   8049060 <printf@plt>
 8049564:	83 c4 10             	add    $0x10,%esp
 8049567:	83 ec 0c             	sub    $0xc,%esp
 804956a:	6a 00                	push   $0x0
 804956c:	e8 bf fb ff ff       	call   8049130 <exit@plt>

08049571 <test>:
 8049571:	55                   	push   %ebp
 8049572:	89 e5                	mov    %esp,%ebp
 8049574:	83 ec 18             	sub    $0x18,%esp
 8049577:	e8 4c 04 00 00       	call   80499c8 <uniqueval>
 804957c:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804957f:	e8 ba 06 00 00       	call   8049c3e <getbuf>
 8049584:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049587:	e8 3c 04 00 00       	call   80499c8 <uniqueval>
 804958c:	89 c2                	mov    %eax,%edx
 804958e:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049591:	39 c2                	cmp    %eax,%edx
 8049593:	74 12                	je     80495a7 <test+0x36>
 8049595:	83 ec 0c             	sub    $0xc,%esp
 8049598:	68 30 b1 04 08       	push   $0x804b130
 804959d:	e8 7e fb ff ff       	call   8049120 <puts@plt>
 80495a2:	83 c4 10             	add    $0x10,%esp
 80495a5:	eb 41                	jmp    80495e8 <test+0x77>
 80495a7:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80495aa:	a1 a0 d1 04 08       	mov    0x804d1a0,%eax
 80495af:	39 c2                	cmp    %eax,%edx
 80495b1:	75 22                	jne    80495d5 <test+0x64>
 80495b3:	83 ec 08             	sub    $0x8,%esp
 80495b6:	ff 75 f4             	push   -0xc(%ebp)
 80495b9:	68 59 b1 04 08       	push   $0x804b159
 80495be:	e8 9d fa ff ff       	call   8049060 <printf@plt>
 80495c3:	83 c4 10             	add    $0x10,%esp
 80495c6:	83 ec 0c             	sub    $0xc,%esp
 80495c9:	6a 04                	push   $0x4
 80495cb:	e8 eb 07 00 00       	call   8049dbb <validate>
 80495d0:	83 c4 10             	add    $0x10,%esp
 80495d3:	eb 13                	jmp    80495e8 <test+0x77>
 80495d5:	83 ec 08             	sub    $0x8,%esp
 80495d8:	ff 75 f4             	push   -0xc(%ebp)
 80495db:	68 76 b1 04 08       	push   $0x804b176
 80495e0:	e8 7b fa ff ff       	call   8049060 <printf@plt>
 80495e5:	83 c4 10             	add    $0x10,%esp
 80495e8:	90                   	nop
 80495e9:	c9                   	leave  
 80495ea:	c3                   	ret    

080495eb <testn>:
 80495eb:	55                   	push   %ebp
 80495ec:	89 e5                	mov    %esp,%ebp
 80495ee:	83 ec 28             	sub    $0x28,%esp
 80495f1:	e8 d2 03 00 00       	call   80499c8 <uniqueval>
 80495f6:	89 45 dc             	mov    %eax,-0x24(%ebp)
 80495f9:	e8 5c 06 00 00       	call   8049c5a <getbufn>
 80495fe:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049601:	e8 c2 03 00 00       	call   80499c8 <uniqueval>
 8049606:	89 c2                	mov    %eax,%edx
 8049608:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804960b:	39 c2                	cmp    %eax,%edx
 804960d:	74 12                	je     8049621 <testn+0x36>
 804960f:	83 ec 0c             	sub    $0xc,%esp
 8049612:	68 30 b1 04 08       	push   $0x804b130
 8049617:	e8 04 fb ff ff       	call   8049120 <puts@plt>
 804961c:	83 c4 10             	add    $0x10,%esp
 804961f:	eb 41                	jmp    8049662 <testn+0x77>
 8049621:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049624:	a1 a0 d1 04 08       	mov    0x804d1a0,%eax
 8049629:	39 c2                	cmp    %eax,%edx
 804962b:	75 22                	jne    804964f <testn+0x64>
 804962d:	83 ec 08             	sub    $0x8,%esp
 8049630:	ff 75 f4             	push   -0xc(%ebp)
 8049633:	68 94 b1 04 08       	push   $0x804b194
 8049638:	e8 23 fa ff ff       	call   8049060 <printf@plt>
 804963d:	83 c4 10             	add    $0x10,%esp
 8049640:	83 ec 0c             	sub    $0xc,%esp
 8049643:	6a 05                	push   $0x5
 8049645:	e8 71 07 00 00       	call   8049dbb <validate>
 804964a:	83 c4 10             	add    $0x10,%esp
 804964d:	eb 13                	jmp    8049662 <testn+0x77>
 804964f:	83 ec 08             	sub    $0x8,%esp
 8049652:	ff 75 f4             	push   -0xc(%ebp)
 8049655:	68 b4 b1 04 08       	push   $0x804b1b4
 804965a:	e8 01 fa ff ff       	call   8049060 <printf@plt>
 804965f:	83 c4 10             	add    $0x10,%esp
 8049662:	90                   	nop
 8049663:	c9                   	leave  
 8049664:	c3                   	ret    

08049665 <save_char>:
 8049665:	55                   	push   %ebp
 8049666:	89 e5                	mov    %esp,%ebp
 8049668:	83 ec 04             	sub    $0x4,%esp
 804966b:	8b 45 08             	mov    0x8(%ebp),%eax
 804966e:	88 45 fc             	mov    %al,-0x4(%ebp)
 8049671:	a1 ac d1 04 08       	mov    0x804d1ac,%eax
 8049676:	3d ff 03 00 00       	cmp    $0x3ff,%eax
 804967b:	7f 70                	jg     80496ed <save_char+0x88>
 804967d:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
 8049681:	c0 f8 04             	sar    $0x4,%al
 8049684:	0f be c0             	movsbl %al,%eax
 8049687:	83 e0 0f             	and    $0xf,%eax
 804968a:	89 c1                	mov    %eax,%ecx
 804968c:	8b 15 ac d1 04 08    	mov    0x804d1ac,%edx
 8049692:	89 d0                	mov    %edx,%eax
 8049694:	01 c0                	add    %eax,%eax
 8049696:	01 c2                	add    %eax,%edx
 8049698:	0f b6 81 24 d1 04 08 	movzbl 0x804d124(%ecx),%eax
 804969f:	88 82 e0 e1 04 08    	mov    %al,0x804e1e0(%edx)
 80496a5:	0f be 45 fc          	movsbl -0x4(%ebp),%eax
 80496a9:	83 e0 0f             	and    $0xf,%eax
 80496ac:	89 c1                	mov    %eax,%ecx
 80496ae:	8b 15 ac d1 04 08    	mov    0x804d1ac,%edx
 80496b4:	89 d0                	mov    %edx,%eax
 80496b6:	01 c0                	add    %eax,%eax
 80496b8:	01 d0                	add    %edx,%eax
 80496ba:	8d 50 01             	lea    0x1(%eax),%edx
 80496bd:	0f b6 81 24 d1 04 08 	movzbl 0x804d124(%ecx),%eax
 80496c4:	88 82 e0 e1 04 08    	mov    %al,0x804e1e0(%edx)
 80496ca:	8b 15 ac d1 04 08    	mov    0x804d1ac,%edx
 80496d0:	89 d0                	mov    %edx,%eax
 80496d2:	01 c0                	add    %eax,%eax
 80496d4:	01 d0                	add    %edx,%eax
 80496d6:	83 c0 02             	add    $0x2,%eax
 80496d9:	c6 80 e0 e1 04 08 20 	movb   $0x20,0x804e1e0(%eax)
 80496e0:	a1 ac d1 04 08       	mov    0x804d1ac,%eax
 80496e5:	83 c0 01             	add    $0x1,%eax
 80496e8:	a3 ac d1 04 08       	mov    %eax,0x804d1ac
 80496ed:	90                   	nop
 80496ee:	c9                   	leave  
 80496ef:	c3                   	ret    

080496f0 <save_term>:
 80496f0:	55                   	push   %ebp
 80496f1:	89 e5                	mov    %esp,%ebp
 80496f3:	8b 15 ac d1 04 08    	mov    0x804d1ac,%edx
 80496f9:	89 d0                	mov    %edx,%eax
 80496fb:	01 c0                	add    %eax,%eax
 80496fd:	01 d0                	add    %edx,%eax
 80496ff:	c6 80 e0 e1 04 08 00 	movb   $0x0,0x804e1e0(%eax)
 8049706:	90                   	nop
 8049707:	5d                   	pop    %ebp
 8049708:	c3                   	ret    

08049709 <Gets>:
 8049709:	55                   	push   %ebp
 804970a:	89 e5                	mov    %esp,%ebp
 804970c:	83 ec 18             	sub    $0x18,%esp
 804970f:	8b 45 08             	mov    0x8(%ebp),%eax
 8049712:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049715:	c7 05 ac d1 04 08 00 	movl   $0x0,0x804d1ac
 804971c:	00 00 00 
 804971f:	eb 1d                	jmp    804973e <Gets+0x35>
 8049721:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049724:	8d 50 01             	lea    0x1(%eax),%edx
 8049727:	89 55 f4             	mov    %edx,-0xc(%ebp)
 804972a:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804972d:	88 10                	mov    %dl,(%eax)
 804972f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049732:	0f be c0             	movsbl %al,%eax
 8049735:	50                   	push   %eax
 8049736:	e8 2a ff ff ff       	call   8049665 <save_char>
 804973b:	83 c4 04             	add    $0x4,%esp
 804973e:	a1 9c d1 04 08       	mov    0x804d19c,%eax
 8049743:	83 ec 0c             	sub    $0xc,%esp
 8049746:	50                   	push   %eax
 8049747:	e8 d4 fa ff ff       	call   8049220 <getc@plt>
 804974c:	83 c4 10             	add    $0x10,%esp
 804974f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049752:	83 7d f0 ff          	cmpl   $0xffffffff,-0x10(%ebp)
 8049756:	74 06                	je     804975e <Gets+0x55>
 8049758:	83 7d f0 0a          	cmpl   $0xa,-0x10(%ebp)
 804975c:	75 c3                	jne    8049721 <Gets+0x18>
 804975e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049761:	8d 50 01             	lea    0x1(%eax),%edx
 8049764:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8049767:	c6 00 00             	movb   $0x0,(%eax)
 804976a:	e8 81 ff ff ff       	call   80496f0 <save_term>
 804976f:	8b 45 08             	mov    0x8(%ebp),%eax
 8049772:	c9                   	leave  
 8049773:	c3                   	ret    

08049774 <usage>:
 8049774:	55                   	push   %ebp
 8049775:	89 e5                	mov    %esp,%ebp
 8049777:	83 ec 08             	sub    $0x8,%esp
 804977a:	83 ec 08             	sub    $0x8,%esp
 804977d:	ff 75 08             	push   0x8(%ebp)
 8049780:	68 d0 b1 04 08       	push   $0x804b1d0
 8049785:	e8 d6 f8 ff ff       	call   8049060 <printf@plt>
 804978a:	83 c4 10             	add    $0x10,%esp
 804978d:	83 ec 0c             	sub    $0xc,%esp
 8049790:	68 ee b1 04 08       	push   $0x804b1ee
 8049795:	e8 86 f9 ff ff       	call   8049120 <puts@plt>
 804979a:	83 c4 10             	add    $0x10,%esp
 804979d:	83 ec 0c             	sub    $0xc,%esp
 80497a0:	68 04 b2 04 08       	push   $0x804b204
 80497a5:	e8 76 f9 ff ff       	call   8049120 <puts@plt>
 80497aa:	83 c4 10             	add    $0x10,%esp
 80497ad:	83 ec 0c             	sub    $0xc,%esp
 80497b0:	68 20 b2 04 08       	push   $0x804b220
 80497b5:	e8 66 f9 ff ff       	call   8049120 <puts@plt>
 80497ba:	83 c4 10             	add    $0x10,%esp
 80497bd:	83 ec 0c             	sub    $0xc,%esp
 80497c0:	68 5c b2 04 08       	push   $0x804b25c
 80497c5:	e8 56 f9 ff ff       	call   8049120 <puts@plt>
 80497ca:	83 c4 10             	add    $0x10,%esp
 80497cd:	83 ec 0c             	sub    $0xc,%esp
 80497d0:	6a 00                	push   $0x0
 80497d2:	e8 59 f9 ff ff       	call   8049130 <exit@plt>

080497d7 <bushandler>:
 80497d7:	55                   	push   %ebp
 80497d8:	89 e5                	mov    %esp,%ebp
 80497da:	83 ec 08             	sub    $0x8,%esp
 80497dd:	83 ec 0c             	sub    $0xc,%esp
 80497e0:	68 84 b2 04 08       	push   $0x804b284
 80497e5:	e8 36 f9 ff ff       	call   8049120 <puts@plt>
 80497ea:	83 c4 10             	add    $0x10,%esp
 80497ed:	83 ec 0c             	sub    $0xc,%esp
 80497f0:	68 a4 b2 04 08       	push   $0x804b2a4
 80497f5:	e8 26 f9 ff ff       	call   8049120 <puts@plt>
 80497fa:	83 c4 10             	add    $0x10,%esp
 80497fd:	83 ec 0c             	sub    $0xc,%esp
 8049800:	6a 00                	push   $0x0
 8049802:	e8 29 f9 ff ff       	call   8049130 <exit@plt>

08049807 <seghandler>:
 8049807:	55                   	push   %ebp
 8049808:	89 e5                	mov    %esp,%ebp
 804980a:	83 ec 08             	sub    $0x8,%esp
 804980d:	83 ec 0c             	sub    $0xc,%esp
 8049810:	68 bc b2 04 08       	push   $0x804b2bc
 8049815:	e8 06 f9 ff ff       	call   8049120 <puts@plt>
 804981a:	83 c4 10             	add    $0x10,%esp
 804981d:	83 ec 0c             	sub    $0xc,%esp
 8049820:	68 a4 b2 04 08       	push   $0x804b2a4
 8049825:	e8 f6 f8 ff ff       	call   8049120 <puts@plt>
 804982a:	83 c4 10             	add    $0x10,%esp
 804982d:	83 ec 0c             	sub    $0xc,%esp
 8049830:	6a 00                	push   $0x0
 8049832:	e8 f9 f8 ff ff       	call   8049130 <exit@plt>

08049837 <illegalhandler>:
 8049837:	55                   	push   %ebp
 8049838:	89 e5                	mov    %esp,%ebp
 804983a:	83 ec 08             	sub    $0x8,%esp
 804983d:	83 ec 0c             	sub    $0xc,%esp
 8049840:	68 e4 b2 04 08       	push   $0x804b2e4
 8049845:	e8 d6 f8 ff ff       	call   8049120 <puts@plt>
 804984a:	83 c4 10             	add    $0x10,%esp
 804984d:	83 ec 0c             	sub    $0xc,%esp
 8049850:	68 a4 b2 04 08       	push   $0x804b2a4
 8049855:	e8 c6 f8 ff ff       	call   8049120 <puts@plt>
 804985a:	83 c4 10             	add    $0x10,%esp
 804985d:	83 ec 0c             	sub    $0xc,%esp
 8049860:	6a 00                	push   $0x0
 8049862:	e8 c9 f8 ff ff       	call   8049130 <exit@plt>

08049867 <launch>:
 8049867:	55                   	push   %ebp
 8049868:	89 e5                	mov    %esp,%ebp
 804986a:	83 ec 58             	sub    $0x58,%esp
 804986d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8049874:	8d 45 b0             	lea    -0x50(%ebp),%eax
 8049877:	25 f0 3f 00 00       	and    $0x3ff0,%eax
 804987c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804987f:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049882:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049885:	01 d0                	add    %edx,%eax
 8049887:	8d 50 0c             	lea    0xc(%eax),%edx
 804988a:	b8 10 00 00 00       	mov    $0x10,%eax
 804988f:	83 e8 01             	sub    $0x1,%eax
 8049892:	01 d0                	add    %edx,%eax
 8049894:	b9 10 00 00 00       	mov    $0x10,%ecx
 8049899:	ba 00 00 00 00       	mov    $0x0,%edx
 804989e:	f7 f1                	div    %ecx
 80498a0:	6b c0 10             	imul   $0x10,%eax,%eax
 80498a3:	29 c4                	sub    %eax,%esp
 80498a5:	89 e0                	mov    %esp,%eax
 80498a7:	83 c0 0f             	add    $0xf,%eax
 80498aa:	c1 e8 04             	shr    $0x4,%eax
 80498ad:	c1 e0 04             	shl    $0x4,%eax
 80498b0:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80498b3:	83 ec 04             	sub    $0x4,%esp
 80498b6:	ff 75 f4             	push   -0xc(%ebp)
 80498b9:	68 f4 00 00 00       	push   $0xf4
 80498be:	ff 75 f0             	push   -0x10(%ebp)
 80498c1:	e8 fa f8 ff ff       	call   80491c0 <memset@plt>
 80498c6:	83 c4 10             	add    $0x10,%esp
 80498c9:	83 ec 0c             	sub    $0xc,%esp
 80498cc:	68 0f b3 04 08       	push   $0x804b30f
 80498d1:	e8 8a f7 ff ff       	call   8049060 <printf@plt>
 80498d6:	83 c4 10             	add    $0x10,%esp
 80498d9:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80498dd:	74 07                	je     80498e6 <launch+0x7f>
 80498df:	e8 07 fd ff ff       	call   80495eb <testn>
 80498e4:	eb 05                	jmp    80498eb <launch+0x84>
 80498e6:	e8 86 fc ff ff       	call   8049571 <test>
 80498eb:	a1 a4 d1 04 08       	mov    0x804d1a4,%eax
 80498f0:	85 c0                	test   %eax,%eax
 80498f2:	75 1a                	jne    804990e <launch+0xa7>
 80498f4:	83 ec 0c             	sub    $0xc,%esp
 80498f7:	68 a4 b2 04 08       	push   $0x804b2a4
 80498fc:	e8 1f f8 ff ff       	call   8049120 <puts@plt>
 8049901:	83 c4 10             	add    $0x10,%esp
 8049904:	c7 05 a4 d1 04 08 00 	movl   $0x0,0x804d1a4
 804990b:	00 00 00 
 804990e:	90                   	nop
 804990f:	c9                   	leave  
 8049910:	c3                   	ret    

08049911 <launcher>:
 8049911:	55                   	push   %ebp
 8049912:	89 e5                	mov    %esp,%ebp
 8049914:	83 ec 18             	sub    $0x18,%esp
 8049917:	8b 45 08             	mov    0x8(%ebp),%eax
 804991a:	a3 b0 d1 04 08       	mov    %eax,0x804d1b0
 804991f:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049922:	a3 b4 d1 04 08       	mov    %eax,0x804d1b4
 8049927:	83 ec 08             	sub    $0x8,%esp
 804992a:	6a 00                	push   $0x0
 804992c:	6a 00                	push   $0x0
 804992e:	68 32 01 00 00       	push   $0x132
 8049933:	6a 07                	push   $0x7
 8049935:	68 00 00 10 00       	push   $0x100000
 804993a:	68 00 70 58 55       	push   $0x55587000
 804993f:	e8 0c f8 ff ff       	call   8049150 <mmap@plt>
 8049944:	83 c4 20             	add    $0x20,%esp
 8049947:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804994a:	81 7d f4 00 70 58 55 	cmpl   $0x55587000,-0xc(%ebp)
 8049951:	74 21                	je     8049974 <launcher+0x63>
 8049953:	a1 60 d1 04 08       	mov    0x804d160,%eax
 8049958:	50                   	push   %eax
 8049959:	6a 47                	push   $0x47
 804995b:	6a 01                	push   $0x1
 804995d:	68 1c b3 04 08       	push   $0x804b31c
 8049962:	e8 79 f7 ff ff       	call   80490e0 <fwrite@plt>
 8049967:	83 c4 10             	add    $0x10,%esp
 804996a:	83 ec 0c             	sub    $0xc,%esp
 804996d:	6a 01                	push   $0x1
 804996f:	e8 bc f7 ff ff       	call   8049130 <exit@plt>
 8049974:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049977:	05 f8 ff 0f 00       	add    $0xffff8,%eax
 804997c:	a3 c0 e1 04 08       	mov    %eax,0x804e1c0
 8049981:	8b 15 c0 e1 04 08    	mov    0x804e1c0,%edx
 8049987:	89 e0                	mov    %esp,%eax
 8049989:	89 d4                	mov    %edx,%esp
 804998b:	89 c2                	mov    %eax,%edx
 804998d:	89 15 b8 d1 04 08    	mov    %edx,0x804d1b8
 8049993:	8b 15 b4 d1 04 08    	mov    0x804d1b4,%edx
 8049999:	a1 b0 d1 04 08       	mov    0x804d1b0,%eax
 804999e:	83 ec 08             	sub    $0x8,%esp
 80499a1:	52                   	push   %edx
 80499a2:	50                   	push   %eax
 80499a3:	e8 bf fe ff ff       	call   8049867 <launch>
 80499a8:	83 c4 10             	add    $0x10,%esp
 80499ab:	a1 b8 d1 04 08       	mov    0x804d1b8,%eax
 80499b0:	89 c4                	mov    %eax,%esp
 80499b2:	83 ec 08             	sub    $0x8,%esp
 80499b5:	68 00 00 10 00       	push   $0x100000
 80499ba:	ff 75 f4             	push   -0xc(%ebp)
 80499bd:	e8 2e f8 ff ff       	call   80491f0 <munmap@plt>
 80499c2:	83 c4 10             	add    $0x10,%esp
 80499c5:	90                   	nop
 80499c6:	c9                   	leave  
 80499c7:	c3                   	ret    

080499c8 <uniqueval>:
 80499c8:	55                   	push   %ebp
 80499c9:	89 e5                	mov    %esp,%ebp
 80499cb:	83 ec 08             	sub    $0x8,%esp
 80499ce:	e8 2d f7 ff ff       	call   8049100 <getpid@plt>
 80499d3:	83 ec 0c             	sub    $0xc,%esp
 80499d6:	50                   	push   %eax
 80499d7:	e8 74 f6 ff ff       	call   8049050 <srandom@plt>
 80499dc:	83 c4 10             	add    $0x10,%esp
 80499df:	e8 4c f8 ff ff       	call   8049230 <random@plt>
 80499e4:	c9                   	leave  
 80499e5:	c3                   	ret    

080499e6 <main>:
 80499e6:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 80499ea:	83 e4 f0             	and    $0xfffffff0,%esp
 80499ed:	ff 71 fc             	push   -0x4(%ecx)
 80499f0:	55                   	push   %ebp
 80499f1:	89 e5                	mov    %esp,%ebp
 80499f3:	53                   	push   %ebx
 80499f4:	51                   	push   %ecx
 80499f5:	83 ec 20             	sub    $0x20,%esp
 80499f8:	89 cb                	mov    %ecx,%ebx
 80499fa:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 8049a01:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8049a08:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
 8049a0f:	83 ec 08             	sub    $0x8,%esp
 8049a12:	68 07 98 04 08       	push   $0x8049807
 8049a17:	6a 0b                	push   $0xb
 8049a19:	e8 82 f6 ff ff       	call   80490a0 <signal@plt>
 8049a1e:	83 c4 10             	add    $0x10,%esp
 8049a21:	83 ec 08             	sub    $0x8,%esp
 8049a24:	68 d7 97 04 08       	push   $0x80497d7
 8049a29:	6a 07                	push   $0x7
 8049a2b:	e8 70 f6 ff ff       	call   80490a0 <signal@plt>
 8049a30:	83 c4 10             	add    $0x10,%esp
 8049a33:	83 ec 08             	sub    $0x8,%esp
 8049a36:	68 37 98 04 08       	push   $0x8049837
 8049a3b:	6a 04                	push   $0x4
 8049a3d:	e8 5e f6 ff ff       	call   80490a0 <signal@plt>
 8049a42:	83 c4 10             	add    $0x10,%esp
 8049a45:	a1 80 d1 04 08       	mov    0x804d180,%eax
 8049a4a:	a3 9c d1 04 08       	mov    %eax,0x804d19c
 8049a4f:	e9 a3 00 00 00       	jmp    8049af7 <main+0x111>
 8049a54:	0f be 45 e7          	movsbl -0x19(%ebp),%eax
 8049a58:	83 e8 67             	sub    $0x67,%eax
 8049a5b:	83 f8 0e             	cmp    $0xe,%eax
 8049a5e:	0f 87 82 00 00 00    	ja     8049ae6 <main+0x100>
 8049a64:	8b 04 85 dc b3 04 08 	mov    0x804b3dc(,%eax,4),%eax
 8049a6b:	ff e0                	jmp    *%eax
 8049a6d:	8b 43 04             	mov    0x4(%ebx),%eax
 8049a70:	8b 00                	mov    (%eax),%eax
 8049a72:	83 ec 0c             	sub    $0xc,%esp
 8049a75:	50                   	push   %eax
 8049a76:	e8 f9 fc ff ff       	call   8049774 <usage>
 8049a7b:	83 c4 10             	add    $0x10,%esp
 8049a7e:	eb 77                	jmp    8049af7 <main+0x111>
 8049a80:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 8049a87:	c7 45 ec 05 00 00 00 	movl   $0x5,-0x14(%ebp)
 8049a8e:	eb 67                	jmp    8049af7 <main+0x111>
 8049a90:	a1 88 d1 04 08       	mov    0x804d188,%eax
 8049a95:	83 ec 0c             	sub    $0xc,%esp
 8049a98:	50                   	push   %eax
 8049a99:	e8 e2 f5 ff ff       	call   8049080 <strdup@plt>
 8049a9e:	83 c4 10             	add    $0x10,%esp
 8049aa1:	a3 90 d1 04 08       	mov    %eax,0x804d190
 8049aa6:	a1 90 d1 04 08       	mov    0x804d190,%eax
 8049aab:	83 ec 0c             	sub    $0xc,%esp
 8049aae:	50                   	push   %eax
 8049aaf:	e8 d3 10 00 00       	call   804ab87 <gencookie>
 8049ab4:	83 c4 10             	add    $0x10,%esp
 8049ab7:	a3 a0 d1 04 08       	mov    %eax,0x804d1a0
 8049abc:	eb 39                	jmp    8049af7 <main+0x111>
 8049abe:	83 ec 0c             	sub    $0xc,%esp
 8049ac1:	68 64 b3 04 08       	push   $0x804b364
 8049ac6:	e8 55 f6 ff ff       	call   8049120 <puts@plt>
 8049acb:	83 c4 10             	add    $0x10,%esp
 8049ace:	c7 05 94 d1 04 08 00 	movl   $0x0,0x804d194
 8049ad5:	00 00 00 
 8049ad8:	eb 1d                	jmp    8049af7 <main+0x111>
 8049ada:	c7 05 98 d1 04 08 01 	movl   $0x1,0x804d198
 8049ae1:	00 00 00 
 8049ae4:	eb 11                	jmp    8049af7 <main+0x111>
 8049ae6:	8b 43 04             	mov    0x4(%ebx),%eax
 8049ae9:	8b 00                	mov    (%eax),%eax
 8049aeb:	83 ec 0c             	sub    $0xc,%esp
 8049aee:	50                   	push   %eax
 8049aef:	e8 80 fc ff ff       	call   8049774 <usage>
 8049af4:	83 c4 10             	add    $0x10,%esp
 8049af7:	83 ec 04             	sub    $0x4,%esp
 8049afa:	68 8c b3 04 08       	push   $0x804b38c
 8049aff:	ff 73 04             	push   0x4(%ebx)
 8049b02:	ff 33                	push   (%ebx)
 8049b04:	e8 87 f6 ff ff       	call   8049190 <getopt@plt>
 8049b09:	83 c4 10             	add    $0x10,%esp
 8049b0c:	88 45 e7             	mov    %al,-0x19(%ebp)
 8049b0f:	80 7d e7 ff          	cmpb   $0xff,-0x19(%ebp)
 8049b13:	0f 85 3b ff ff ff    	jne    8049a54 <main+0x6e>
 8049b19:	a1 90 d1 04 08       	mov    0x804d190,%eax
 8049b1e:	85 c0                	test   %eax,%eax
 8049b20:	75 27                	jne    8049b49 <main+0x163>
 8049b22:	8b 43 04             	mov    0x4(%ebx),%eax
 8049b25:	8b 00                	mov    (%eax),%eax
 8049b27:	83 ec 08             	sub    $0x8,%esp
 8049b2a:	50                   	push   %eax
 8049b2b:	68 94 b3 04 08       	push   $0x804b394
 8049b30:	e8 2b f5 ff ff       	call   8049060 <printf@plt>
 8049b35:	83 c4 10             	add    $0x10,%esp
 8049b38:	8b 43 04             	mov    0x4(%ebx),%eax
 8049b3b:	8b 00                	mov    (%eax),%eax
 8049b3d:	83 ec 0c             	sub    $0xc,%esp
 8049b40:	50                   	push   %eax
 8049b41:	e8 2e fc ff ff       	call   8049774 <usage>
 8049b46:	83 c4 10             	add    $0x10,%esp
 8049b49:	e8 2e 01 00 00       	call   8049c7c <initialize_bomb>
 8049b4e:	a1 90 d1 04 08       	mov    0x804d190,%eax
 8049b53:	83 ec 08             	sub    $0x8,%esp
 8049b56:	50                   	push   %eax
 8049b57:	68 c0 b3 04 08       	push   $0x804b3c0
 8049b5c:	e8 ff f4 ff ff       	call   8049060 <printf@plt>
 8049b61:	83 c4 10             	add    $0x10,%esp
 8049b64:	a1 a0 d1 04 08       	mov    0x804d1a0,%eax
 8049b69:	83 ec 08             	sub    $0x8,%esp
 8049b6c:	50                   	push   %eax
 8049b6d:	68 cc b3 04 08       	push   $0x804b3cc
 8049b72:	e8 e9 f4 ff ff       	call   8049060 <printf@plt>
 8049b77:	83 c4 10             	add    $0x10,%esp
 8049b7a:	a1 a0 d1 04 08       	mov    0x804d1a0,%eax
 8049b7f:	83 ec 0c             	sub    $0xc,%esp
 8049b82:	50                   	push   %eax
 8049b83:	e8 c8 f4 ff ff       	call   8049050 <srandom@plt>
 8049b88:	83 c4 10             	add    $0x10,%esp
 8049b8b:	e8 a0 f6 ff ff       	call   8049230 <random@plt>
 8049b90:	25 f0 0f 00 00       	and    $0xff0,%eax
 8049b95:	05 00 01 00 00       	add    $0x100,%eax
 8049b9a:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049b9d:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049ba0:	83 ec 08             	sub    $0x8,%esp
 8049ba3:	6a 04                	push   $0x4
 8049ba5:	50                   	push   %eax
 8049ba6:	e8 c5 f6 ff ff       	call   8049270 <calloc@plt>
 8049bab:	83 c4 10             	add    $0x10,%esp
 8049bae:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8049bb1:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049bb4:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8049bba:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 8049bc1:	eb 2a                	jmp    8049bed <main+0x207>
 8049bc3:	e8 68 f6 ff ff       	call   8049230 <random@plt>
 8049bc8:	25 f0 00 00 00       	and    $0xf0,%eax
 8049bcd:	89 c2                	mov    %eax,%edx
 8049bcf:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049bd2:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
 8049bd9:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049bdc:	01 c8                	add    %ecx,%eax
 8049bde:	b9 80 00 00 00       	mov    $0x80,%ecx
 8049be3:	29 d1                	sub    %edx,%ecx
 8049be5:	89 ca                	mov    %ecx,%edx
 8049be7:	89 10                	mov    %edx,(%eax)
 8049be9:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8049bed:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049bf0:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 8049bf3:	7c ce                	jl     8049bc3 <main+0x1dd>
 8049bf5:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8049bfc:	eb 29                	jmp    8049c27 <main+0x241>
 8049bfe:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049c01:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049c08:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049c0b:	01 d0                	add    %edx,%eax
 8049c0d:	8b 10                	mov    (%eax),%edx
 8049c0f:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049c12:	01 d0                	add    %edx,%eax
 8049c14:	83 ec 08             	sub    $0x8,%esp
 8049c17:	50                   	push   %eax
 8049c18:	ff 75 f4             	push   -0xc(%ebp)
 8049c1b:	e8 f1 fc ff ff       	call   8049911 <launcher>
 8049c20:	83 c4 10             	add    $0x10,%esp
 8049c23:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8049c27:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049c2a:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 8049c2d:	7c cf                	jl     8049bfe <main+0x218>
 8049c2f:	b8 00 00 00 00       	mov    $0x0,%eax
 8049c34:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8049c37:	59                   	pop    %ecx
 8049c38:	5b                   	pop    %ebx
 8049c39:	5d                   	pop    %ebp
 8049c3a:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8049c3d:	c3                   	ret    

08049c3e <getbuf>:
 8049c3e:	55                   	push   %ebp
 8049c3f:	89 e5                	mov    %esp,%ebp
 8049c41:	83 ec 68             	sub    $0x68,%esp
 8049c44:	83 ec 0c             	sub    $0xc,%esp
 8049c47:	8d 45 99             	lea    -0x67(%ebp),%eax
 8049c4a:	50                   	push   %eax
 8049c4b:	e8 b9 fa ff ff       	call   8049709 <Gets>
 8049c50:	83 c4 10             	add    $0x10,%esp
 8049c53:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c58:	c9                   	leave  
 8049c59:	c3                   	ret    

08049c5a <getbufn>:
 8049c5a:	55                   	push   %ebp
 8049c5b:	89 e5                	mov    %esp,%ebp
 8049c5d:	81 ec e8 02 00 00    	sub    $0x2e8,%esp
 8049c63:	83 ec 0c             	sub    $0xc,%esp
 8049c66:	8d 85 21 fd ff ff    	lea    -0x2df(%ebp),%eax
 8049c6c:	50                   	push   %eax
 8049c6d:	e8 97 fa ff ff       	call   8049709 <Gets>
 8049c72:	83 c4 10             	add    $0x10,%esp
 8049c75:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c7a:	c9                   	leave  
 8049c7b:	c3                   	ret    

08049c7c <initialize_bomb>:
 8049c7c:	55                   	push   %ebp
 8049c7d:	89 e5                	mov    %esp,%ebp
 8049c7f:	81 ec 18 24 00 00    	sub    $0x2418,%esp
 8049c85:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8049c8c:	a1 98 d1 04 08       	mov    0x804d198,%eax
 8049c91:	85 c0                	test   %eax,%eax
 8049c93:	74 0d                	je     8049ca2 <initialize_bomb+0x26>
 8049c95:	83 ec 0c             	sub    $0xc,%esp
 8049c98:	6a ff                	push   $0xffffffff
 8049c9a:	e8 ea 0b 00 00       	call   804a889 <init_timeout>
 8049c9f:	83 c4 10             	add    $0x10,%esp
 8049ca2:	a1 94 d1 04 08       	mov    0x804d194,%eax
 8049ca7:	85 c0                	test   %eax,%eax
 8049ca9:	0f 84 09 01 00 00    	je     8049db8 <initialize_bomb+0x13c>
 8049caf:	83 ec 08             	sub    $0x8,%esp
 8049cb2:	68 00 04 00 00       	push   $0x400
 8049cb7:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
 8049cbd:	50                   	push   %eax
 8049cbe:	e8 4d f4 ff ff       	call   8049110 <gethostname@plt>
 8049cc3:	83 c4 10             	add    $0x10,%esp
 8049cc6:	85 c0                	test   %eax,%eax
 8049cc8:	74 1a                	je     8049ce4 <initialize_bomb+0x68>
 8049cca:	83 ec 0c             	sub    $0xc,%esp
 8049ccd:	68 18 b4 04 08       	push   $0x804b418
 8049cd2:	e8 49 f4 ff ff       	call   8049120 <puts@plt>
 8049cd7:	83 c4 10             	add    $0x10,%esp
 8049cda:	83 ec 0c             	sub    $0xc,%esp
 8049cdd:	6a 08                	push   $0x8
 8049cdf:	e8 4c f4 ff ff       	call   8049130 <exit@plt>
 8049ce4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8049ceb:	eb 2e                	jmp    8049d1b <initialize_bomb+0x9f>
 8049ced:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049cf0:	8b 04 85 c0 d1 04 08 	mov    0x804d1c0(,%eax,4),%eax
 8049cf7:	83 ec 08             	sub    $0x8,%esp
 8049cfa:	8d 95 f0 fb ff ff    	lea    -0x410(%ebp),%edx
 8049d00:	52                   	push   %edx
 8049d01:	50                   	push   %eax
 8049d02:	e8 99 f4 ff ff       	call   80491a0 <strcasecmp@plt>
 8049d07:	83 c4 10             	add    $0x10,%esp
 8049d0a:	85 c0                	test   %eax,%eax
 8049d0c:	75 09                	jne    8049d17 <initialize_bomb+0x9b>
 8049d0e:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 8049d15:	eb 12                	jmp    8049d29 <initialize_bomb+0xad>
 8049d17:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8049d1b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049d1e:	8b 04 85 c0 d1 04 08 	mov    0x804d1c0(,%eax,4),%eax
 8049d25:	85 c0                	test   %eax,%eax
 8049d27:	75 c4                	jne    8049ced <initialize_bomb+0x71>
 8049d29:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8049d2d:	75 52                	jne    8049d81 <initialize_bomb+0x105>
 8049d2f:	83 ec 08             	sub    $0x8,%esp
 8049d32:	8d 85 f0 fb ff ff    	lea    -0x410(%ebp),%eax
 8049d38:	50                   	push   %eax
 8049d39:	68 50 b4 04 08       	push   $0x804b450
 8049d3e:	e8 1d f3 ff ff       	call   8049060 <printf@plt>
 8049d43:	83 c4 10             	add    $0x10,%esp
 8049d46:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8049d4d:	eb 1a                	jmp    8049d69 <initialize_bomb+0xed>
 8049d4f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049d52:	8b 04 85 c0 d1 04 08 	mov    0x804d1c0(,%eax,4),%eax
 8049d59:	83 ec 0c             	sub    $0xc,%esp
 8049d5c:	50                   	push   %eax
 8049d5d:	e8 be f3 ff ff       	call   8049120 <puts@plt>
 8049d62:	83 c4 10             	add    $0x10,%esp
 8049d65:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8049d69:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049d6c:	8b 04 85 c0 d1 04 08 	mov    0x804d1c0(,%eax,4),%eax
 8049d73:	85 c0                	test   %eax,%eax
 8049d75:	75 d8                	jne    8049d4f <initialize_bomb+0xd3>
 8049d77:	83 ec 0c             	sub    $0xc,%esp
 8049d7a:	6a 08                	push   $0x8
 8049d7c:	e8 af f3 ff ff       	call   8049130 <exit@plt>
 8049d81:	83 ec 0c             	sub    $0xc,%esp
 8049d84:	8d 85 f0 db ff ff    	lea    -0x2410(%ebp),%eax
 8049d8a:	50                   	push   %eax
 8049d8b:	e8 38 0b 00 00       	call   804a8c8 <init_driver>
 8049d90:	83 c4 10             	add    $0x10,%esp
 8049d93:	85 c0                	test   %eax,%eax
 8049d95:	79 21                	jns    8049db8 <initialize_bomb+0x13c>
 8049d97:	83 ec 08             	sub    $0x8,%esp
 8049d9a:	8d 85 f0 db ff ff    	lea    -0x2410(%ebp),%eax
 8049da0:	50                   	push   %eax
 8049da1:	68 8b b4 04 08       	push   $0x804b48b
 8049da6:	e8 b5 f2 ff ff       	call   8049060 <printf@plt>
 8049dab:	83 c4 10             	add    $0x10,%esp
 8049dae:	83 ec 0c             	sub    $0xc,%esp
 8049db1:	6a 08                	push   $0x8
 8049db3:	e8 78 f3 ff ff       	call   8049130 <exit@plt>
 8049db8:	90                   	nop
 8049db9:	c9                   	leave  
 8049dba:	c3                   	ret    

08049dbb <validate>:
 8049dbb:	55                   	push   %ebp
 8049dbc:	89 e5                	mov    %esp,%ebp
 8049dbe:	81 ec 18 40 00 00    	sub    $0x4018,%esp
 8049dc4:	a1 90 d1 04 08       	mov    0x804d190,%eax
 8049dc9:	85 c0                	test   %eax,%eax
 8049dcb:	75 15                	jne    8049de2 <validate+0x27>
 8049dcd:	83 ec 0c             	sub    $0xc,%esp
 8049dd0:	68 a0 b4 04 08       	push   $0x804b4a0
 8049dd5:	e8 46 f3 ff ff       	call   8049120 <puts@plt>
 8049dda:	83 c4 10             	add    $0x10,%esp
 8049ddd:	e9 36 01 00 00       	jmp    8049f18 <validate+0x15d>
 8049de2:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8049de6:	78 06                	js     8049dee <validate+0x33>
 8049de8:	83 7d 08 05          	cmpl   $0x5,0x8(%ebp)
 8049dec:	7e 15                	jle    8049e03 <validate+0x48>
 8049dee:	83 ec 0c             	sub    $0xc,%esp
 8049df1:	68 cc b4 04 08       	push   $0x804b4cc
 8049df6:	e8 25 f3 ff ff       	call   8049120 <puts@plt>
 8049dfb:	83 c4 10             	add    $0x10,%esp
 8049dfe:	e9 15 01 00 00       	jmp    8049f18 <validate+0x15d>
 8049e03:	c7 05 a4 d1 04 08 01 	movl   $0x1,0x804d1a4
 8049e0a:	00 00 00 
 8049e0d:	8b 45 08             	mov    0x8(%ebp),%eax
 8049e10:	8b 04 85 34 d1 04 08 	mov    0x804d134(,%eax,4),%eax
 8049e17:	8d 50 ff             	lea    -0x1(%eax),%edx
 8049e1a:	8b 45 08             	mov    0x8(%ebp),%eax
 8049e1d:	89 14 85 34 d1 04 08 	mov    %edx,0x804d134(,%eax,4)
 8049e24:	8b 45 08             	mov    0x8(%ebp),%eax
 8049e27:	8b 04 85 34 d1 04 08 	mov    0x804d134(,%eax,4),%eax
 8049e2e:	85 c0                	test   %eax,%eax
 8049e30:	7e 15                	jle    8049e47 <validate+0x8c>
 8049e32:	83 ec 0c             	sub    $0xc,%esp
 8049e35:	68 f2 b4 04 08       	push   $0x804b4f2
 8049e3a:	e8 e1 f2 ff ff       	call   8049120 <puts@plt>
 8049e3f:	83 c4 10             	add    $0x10,%esp
 8049e42:	e9 d1 00 00 00       	jmp    8049f18 <validate+0x15d>
 8049e47:	83 ec 0c             	sub    $0xc,%esp
 8049e4a:	68 fd b4 04 08       	push   $0x804b4fd
 8049e4f:	e8 cc f2 ff ff       	call   8049120 <puts@plt>
 8049e54:	83 c4 10             	add    $0x10,%esp
 8049e57:	a1 94 d1 04 08       	mov    0x804d194,%eax
 8049e5c:	85 c0                	test   %eax,%eax
 8049e5e:	0f 84 a4 00 00 00    	je     8049f08 <validate+0x14d>
 8049e64:	83 ec 0c             	sub    $0xc,%esp
 8049e67:	68 e0 e1 04 08       	push   $0x804e1e0
 8049e6c:	e8 ef f2 ff ff       	call   8049160 <strlen@plt>
 8049e71:	83 c4 10             	add    $0x10,%esp
 8049e74:	83 c0 20             	add    $0x20,%eax
 8049e77:	3d 00 20 00 00       	cmp    $0x2000,%eax
 8049e7c:	76 15                	jbe    8049e93 <validate+0xd8>
 8049e7e:	83 ec 0c             	sub    $0xc,%esp
 8049e81:	68 04 b5 04 08       	push   $0x804b504
 8049e86:	e8 95 f2 ff ff       	call   8049120 <puts@plt>
 8049e8b:	83 c4 10             	add    $0x10,%esp
 8049e8e:	e9 85 00 00 00       	jmp    8049f18 <validate+0x15d>
 8049e93:	a1 a0 d1 04 08       	mov    0x804d1a0,%eax
 8049e98:	83 ec 0c             	sub    $0xc,%esp
 8049e9b:	68 e0 e1 04 08       	push   $0x804e1e0
 8049ea0:	50                   	push   %eax
 8049ea1:	ff 75 08             	push   0x8(%ebp)
 8049ea4:	68 3b b5 04 08       	push   $0x804b53b
 8049ea9:	8d 85 f4 df ff ff    	lea    -0x200c(%ebp),%eax
 8049eaf:	50                   	push   %eax
 8049eb0:	e8 4b f3 ff ff       	call   8049200 <sprintf@plt>
 8049eb5:	83 c4 20             	add    $0x20,%esp
 8049eb8:	a1 90 d1 04 08       	mov    0x804d190,%eax
 8049ebd:	8d 95 f4 bf ff ff    	lea    -0x400c(%ebp),%edx
 8049ec3:	52                   	push   %edx
 8049ec4:	6a 00                	push   $0x0
 8049ec6:	8d 95 f4 df ff ff    	lea    -0x200c(%ebp),%edx
 8049ecc:	52                   	push   %edx
 8049ecd:	50                   	push   %eax
 8049ece:	e8 a8 0b 00 00       	call   804aa7b <driver_post>
 8049ed3:	83 c4 10             	add    $0x10,%esp
 8049ed6:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049ed9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049edd:	75 12                	jne    8049ef1 <validate+0x136>
 8049edf:	83 ec 0c             	sub    $0xc,%esp
 8049ee2:	68 44 b5 04 08       	push   $0x804b544
 8049ee7:	e8 34 f2 ff ff       	call   8049120 <puts@plt>
 8049eec:	83 c4 10             	add    $0x10,%esp
 8049eef:	eb 17                	jmp    8049f08 <validate+0x14d>
 8049ef1:	83 ec 08             	sub    $0x8,%esp
 8049ef4:	8d 85 f4 bf ff ff    	lea    -0x400c(%ebp),%eax
 8049efa:	50                   	push   %eax
 8049efb:	68 74 b5 04 08       	push   $0x804b574
 8049f00:	e8 5b f1 ff ff       	call   8049060 <printf@plt>
 8049f05:	83 c4 10             	add    $0x10,%esp
 8049f08:	83 ec 0c             	sub    $0xc,%esp
 8049f0b:	68 b2 b5 04 08       	push   $0x804b5b2
 8049f10:	e8 0b f2 ff ff       	call   8049120 <puts@plt>
 8049f15:	83 c4 10             	add    $0x10,%esp
 8049f18:	c9                   	leave  
 8049f19:	c3                   	ret    

08049f1a <sigalrm_handler>:
 8049f1a:	55                   	push   %ebp
 8049f1b:	89 e5                	mov    %esp,%ebp
 8049f1d:	83 ec 08             	sub    $0x8,%esp
 8049f20:	83 ec 08             	sub    $0x8,%esp
 8049f23:	6a 02                	push   $0x2
 8049f25:	68 bc b5 04 08       	push   $0x804b5bc
 8049f2a:	e8 31 f1 ff ff       	call   8049060 <printf@plt>
 8049f2f:	83 c4 10             	add    $0x10,%esp
 8049f32:	83 ec 0c             	sub    $0xc,%esp
 8049f35:	6a 01                	push   $0x1
 8049f37:	e8 f4 f1 ff ff       	call   8049130 <exit@plt>

08049f3c <rio_readinitb>:
 8049f3c:	55                   	push   %ebp
 8049f3d:	89 e5                	mov    %esp,%ebp
 8049f3f:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f42:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049f45:	89 10                	mov    %edx,(%eax)
 8049f47:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f4a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8049f51:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f54:	8d 50 0c             	lea    0xc(%eax),%edx
 8049f57:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f5a:	89 50 08             	mov    %edx,0x8(%eax)
 8049f5d:	90                   	nop
 8049f5e:	5d                   	pop    %ebp
 8049f5f:	c3                   	ret    

08049f60 <rio_read>:
 8049f60:	55                   	push   %ebp
 8049f61:	89 e5                	mov    %esp,%ebp
 8049f63:	83 ec 18             	sub    $0x18,%esp
 8049f66:	eb 5f                	jmp    8049fc7 <rio_read+0x67>
 8049f68:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f6b:	8d 50 0c             	lea    0xc(%eax),%edx
 8049f6e:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f71:	8b 00                	mov    (%eax),%eax
 8049f73:	83 ec 04             	sub    $0x4,%esp
 8049f76:	68 00 20 00 00       	push   $0x2000
 8049f7b:	52                   	push   %edx
 8049f7c:	50                   	push   %eax
 8049f7d:	e8 be f0 ff ff       	call   8049040 <read@plt>
 8049f82:	83 c4 10             	add    $0x10,%esp
 8049f85:	89 c2                	mov    %eax,%edx
 8049f87:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f8a:	89 50 04             	mov    %edx,0x4(%eax)
 8049f8d:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f90:	8b 40 04             	mov    0x4(%eax),%eax
 8049f93:	85 c0                	test   %eax,%eax
 8049f95:	79 13                	jns    8049faa <rio_read+0x4a>
 8049f97:	e8 34 f2 ff ff       	call   80491d0 <__errno_location@plt>
 8049f9c:	8b 00                	mov    (%eax),%eax
 8049f9e:	83 f8 04             	cmp    $0x4,%eax
 8049fa1:	74 24                	je     8049fc7 <rio_read+0x67>
 8049fa3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049fa8:	eb 7f                	jmp    804a029 <rio_read+0xc9>
 8049faa:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fad:	8b 40 04             	mov    0x4(%eax),%eax
 8049fb0:	85 c0                	test   %eax,%eax
 8049fb2:	75 07                	jne    8049fbb <rio_read+0x5b>
 8049fb4:	b8 00 00 00 00       	mov    $0x0,%eax
 8049fb9:	eb 6e                	jmp    804a029 <rio_read+0xc9>
 8049fbb:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fbe:	8d 50 0c             	lea    0xc(%eax),%edx
 8049fc1:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fc4:	89 50 08             	mov    %edx,0x8(%eax)
 8049fc7:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fca:	8b 40 04             	mov    0x4(%eax),%eax
 8049fcd:	85 c0                	test   %eax,%eax
 8049fcf:	7e 97                	jle    8049f68 <rio_read+0x8>
 8049fd1:	8b 45 10             	mov    0x10(%ebp),%eax
 8049fd4:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049fd7:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fda:	8b 40 04             	mov    0x4(%eax),%eax
 8049fdd:	39 45 10             	cmp    %eax,0x10(%ebp)
 8049fe0:	76 09                	jbe    8049feb <rio_read+0x8b>
 8049fe2:	8b 45 08             	mov    0x8(%ebp),%eax
 8049fe5:	8b 40 04             	mov    0x4(%eax),%eax
 8049fe8:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049feb:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049fee:	8b 45 08             	mov    0x8(%ebp),%eax
 8049ff1:	8b 40 08             	mov    0x8(%eax),%eax
 8049ff4:	83 ec 04             	sub    $0x4,%esp
 8049ff7:	52                   	push   %edx
 8049ff8:	50                   	push   %eax
 8049ff9:	ff 75 0c             	push   0xc(%ebp)
 8049ffc:	e8 8f f0 ff ff       	call   8049090 <memcpy@plt>
 804a001:	83 c4 10             	add    $0x10,%esp
 804a004:	8b 45 08             	mov    0x8(%ebp),%eax
 804a007:	8b 50 08             	mov    0x8(%eax),%edx
 804a00a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a00d:	01 c2                	add    %eax,%edx
 804a00f:	8b 45 08             	mov    0x8(%ebp),%eax
 804a012:	89 50 08             	mov    %edx,0x8(%eax)
 804a015:	8b 45 08             	mov    0x8(%ebp),%eax
 804a018:	8b 40 04             	mov    0x4(%eax),%eax
 804a01b:	2b 45 f4             	sub    -0xc(%ebp),%eax
 804a01e:	89 c2                	mov    %eax,%edx
 804a020:	8b 45 08             	mov    0x8(%ebp),%eax
 804a023:	89 50 04             	mov    %edx,0x4(%eax)
 804a026:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a029:	c9                   	leave  
 804a02a:	c3                   	ret    

0804a02b <rio_readlineb>:
 804a02b:	55                   	push   %ebp
 804a02c:	89 e5                	mov    %esp,%ebp
 804a02e:	83 ec 18             	sub    $0x18,%esp
 804a031:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a034:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a037:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 804a03e:	eb 54                	jmp    804a094 <rio_readlineb+0x69>
 804a040:	83 ec 04             	sub    $0x4,%esp
 804a043:	6a 01                	push   $0x1
 804a045:	8d 45 eb             	lea    -0x15(%ebp),%eax
 804a048:	50                   	push   %eax
 804a049:	ff 75 08             	push   0x8(%ebp)
 804a04c:	e8 0f ff ff ff       	call   8049f60 <rio_read>
 804a051:	83 c4 10             	add    $0x10,%esp
 804a054:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a057:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
 804a05b:	75 19                	jne    804a076 <rio_readlineb+0x4b>
 804a05d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a060:	8d 50 01             	lea    0x1(%eax),%edx
 804a063:	89 55 f0             	mov    %edx,-0x10(%ebp)
 804a066:	0f b6 55 eb          	movzbl -0x15(%ebp),%edx
 804a06a:	88 10                	mov    %dl,(%eax)
 804a06c:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
 804a070:	3c 0a                	cmp    $0xa,%al
 804a072:	75 1c                	jne    804a090 <rio_readlineb+0x65>
 804a074:	eb 29                	jmp    804a09f <rio_readlineb+0x74>
 804a076:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 804a07a:	75 0d                	jne    804a089 <rio_readlineb+0x5e>
 804a07c:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
 804a080:	75 1c                	jne    804a09e <rio_readlineb+0x73>
 804a082:	b8 00 00 00 00       	mov    $0x0,%eax
 804a087:	eb 1f                	jmp    804a0a8 <rio_readlineb+0x7d>
 804a089:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a08e:	eb 18                	jmp    804a0a8 <rio_readlineb+0x7d>
 804a090:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804a094:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a097:	39 45 10             	cmp    %eax,0x10(%ebp)
 804a09a:	77 a4                	ja     804a040 <rio_readlineb+0x15>
 804a09c:	eb 01                	jmp    804a09f <rio_readlineb+0x74>
 804a09e:	90                   	nop
 804a09f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a0a2:	c6 00 00             	movb   $0x0,(%eax)
 804a0a5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a0a8:	c9                   	leave  
 804a0a9:	c3                   	ret    

0804a0aa <rio_writen>:
 804a0aa:	55                   	push   %ebp
 804a0ab:	89 e5                	mov    %esp,%ebp
 804a0ad:	83 ec 18             	sub    $0x18,%esp
 804a0b0:	8b 45 10             	mov    0x10(%ebp),%eax
 804a0b3:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a0b6:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a0b9:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a0bc:	eb 45                	jmp    804a103 <rio_writen+0x59>
 804a0be:	83 ec 04             	sub    $0x4,%esp
 804a0c1:	ff 75 f4             	push   -0xc(%ebp)
 804a0c4:	ff 75 ec             	push   -0x14(%ebp)
 804a0c7:	ff 75 08             	push   0x8(%ebp)
 804a0ca:	e8 b1 f0 ff ff       	call   8049180 <write@plt>
 804a0cf:	83 c4 10             	add    $0x10,%esp
 804a0d2:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a0d5:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804a0d9:	7f 1c                	jg     804a0f7 <rio_writen+0x4d>
 804a0db:	e8 f0 f0 ff ff       	call   80491d0 <__errno_location@plt>
 804a0e0:	8b 00                	mov    (%eax),%eax
 804a0e2:	83 f8 04             	cmp    $0x4,%eax
 804a0e5:	75 09                	jne    804a0f0 <rio_writen+0x46>
 804a0e7:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804a0ee:	eb 07                	jmp    804a0f7 <rio_writen+0x4d>
 804a0f0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a0f5:	eb 15                	jmp    804a10c <rio_writen+0x62>
 804a0f7:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a0fa:	29 45 f4             	sub    %eax,-0xc(%ebp)
 804a0fd:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a100:	01 45 ec             	add    %eax,-0x14(%ebp)
 804a103:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804a107:	75 b5                	jne    804a0be <rio_writen+0x14>
 804a109:	8b 45 10             	mov    0x10(%ebp),%eax
 804a10c:	c9                   	leave  
 804a10d:	c3                   	ret    

0804a10e <urlencode>:
 804a10e:	55                   	push   %ebp
 804a10f:	89 e5                	mov    %esp,%ebp
 804a111:	83 ec 18             	sub    $0x18,%esp
 804a114:	83 ec 0c             	sub    $0xc,%esp
 804a117:	ff 75 08             	push   0x8(%ebp)
 804a11a:	e8 41 f0 ff ff       	call   8049160 <strlen@plt>
 804a11f:	83 c4 10             	add    $0x10,%esp
 804a122:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a125:	e9 0e 01 00 00       	jmp    804a238 <urlencode+0x12a>
 804a12a:	8b 45 08             	mov    0x8(%ebp),%eax
 804a12d:	0f b6 00             	movzbl (%eax),%eax
 804a130:	3c 2a                	cmp    $0x2a,%al
 804a132:	74 5a                	je     804a18e <urlencode+0x80>
 804a134:	8b 45 08             	mov    0x8(%ebp),%eax
 804a137:	0f b6 00             	movzbl (%eax),%eax
 804a13a:	3c 2d                	cmp    $0x2d,%al
 804a13c:	74 50                	je     804a18e <urlencode+0x80>
 804a13e:	8b 45 08             	mov    0x8(%ebp),%eax
 804a141:	0f b6 00             	movzbl (%eax),%eax
 804a144:	3c 2e                	cmp    $0x2e,%al
 804a146:	74 46                	je     804a18e <urlencode+0x80>
 804a148:	8b 45 08             	mov    0x8(%ebp),%eax
 804a14b:	0f b6 00             	movzbl (%eax),%eax
 804a14e:	3c 5f                	cmp    $0x5f,%al
 804a150:	74 3c                	je     804a18e <urlencode+0x80>
 804a152:	8b 45 08             	mov    0x8(%ebp),%eax
 804a155:	0f b6 00             	movzbl (%eax),%eax
 804a158:	3c 2f                	cmp    $0x2f,%al
 804a15a:	76 0a                	jbe    804a166 <urlencode+0x58>
 804a15c:	8b 45 08             	mov    0x8(%ebp),%eax
 804a15f:	0f b6 00             	movzbl (%eax),%eax
 804a162:	3c 39                	cmp    $0x39,%al
 804a164:	76 28                	jbe    804a18e <urlencode+0x80>
 804a166:	8b 45 08             	mov    0x8(%ebp),%eax
 804a169:	0f b6 00             	movzbl (%eax),%eax
 804a16c:	3c 40                	cmp    $0x40,%al
 804a16e:	76 0a                	jbe    804a17a <urlencode+0x6c>
 804a170:	8b 45 08             	mov    0x8(%ebp),%eax
 804a173:	0f b6 00             	movzbl (%eax),%eax
 804a176:	3c 5a                	cmp    $0x5a,%al
 804a178:	76 14                	jbe    804a18e <urlencode+0x80>
 804a17a:	8b 45 08             	mov    0x8(%ebp),%eax
 804a17d:	0f b6 00             	movzbl (%eax),%eax
 804a180:	3c 60                	cmp    $0x60,%al
 804a182:	76 20                	jbe    804a1a4 <urlencode+0x96>
 804a184:	8b 45 08             	mov    0x8(%ebp),%eax
 804a187:	0f b6 00             	movzbl (%eax),%eax
 804a18a:	3c 7a                	cmp    $0x7a,%al
 804a18c:	77 16                	ja     804a1a4 <urlencode+0x96>
 804a18e:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a191:	8d 50 01             	lea    0x1(%eax),%edx
 804a194:	89 55 0c             	mov    %edx,0xc(%ebp)
 804a197:	8b 55 08             	mov    0x8(%ebp),%edx
 804a19a:	0f b6 12             	movzbl (%edx),%edx
 804a19d:	88 10                	mov    %dl,(%eax)
 804a19f:	e9 90 00 00 00       	jmp    804a234 <urlencode+0x126>
 804a1a4:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1a7:	0f b6 00             	movzbl (%eax),%eax
 804a1aa:	3c 20                	cmp    $0x20,%al
 804a1ac:	75 0e                	jne    804a1bc <urlencode+0xae>
 804a1ae:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a1b1:	8d 50 01             	lea    0x1(%eax),%edx
 804a1b4:	89 55 0c             	mov    %edx,0xc(%ebp)
 804a1b7:	c6 00 2b             	movb   $0x2b,(%eax)
 804a1ba:	eb 78                	jmp    804a234 <urlencode+0x126>
 804a1bc:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1bf:	0f b6 00             	movzbl (%eax),%eax
 804a1c2:	3c 1f                	cmp    $0x1f,%al
 804a1c4:	76 0a                	jbe    804a1d0 <urlencode+0xc2>
 804a1c6:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1c9:	0f b6 00             	movzbl (%eax),%eax
 804a1cc:	84 c0                	test   %al,%al
 804a1ce:	79 0a                	jns    804a1da <urlencode+0xcc>
 804a1d0:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1d3:	0f b6 00             	movzbl (%eax),%eax
 804a1d6:	3c 09                	cmp    $0x9,%al
 804a1d8:	75 53                	jne    804a22d <urlencode+0x11f>
 804a1da:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1dd:	0f b6 00             	movzbl (%eax),%eax
 804a1e0:	0f b6 c0             	movzbl %al,%eax
 804a1e3:	83 ec 04             	sub    $0x4,%esp
 804a1e6:	50                   	push   %eax
 804a1e7:	68 e0 b5 04 08       	push   $0x804b5e0
 804a1ec:	8d 45 ec             	lea    -0x14(%ebp),%eax
 804a1ef:	50                   	push   %eax
 804a1f0:	e8 0b f0 ff ff       	call   8049200 <sprintf@plt>
 804a1f5:	83 c4 10             	add    $0x10,%esp
 804a1f8:	0f b6 4d ec          	movzbl -0x14(%ebp),%ecx
 804a1fc:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a1ff:	8d 50 01             	lea    0x1(%eax),%edx
 804a202:	89 55 0c             	mov    %edx,0xc(%ebp)
 804a205:	89 ca                	mov    %ecx,%edx
 804a207:	88 10                	mov    %dl,(%eax)
 804a209:	0f b6 4d ed          	movzbl -0x13(%ebp),%ecx
 804a20d:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a210:	8d 50 01             	lea    0x1(%eax),%edx
 804a213:	89 55 0c             	mov    %edx,0xc(%ebp)
 804a216:	89 ca                	mov    %ecx,%edx
 804a218:	88 10                	mov    %dl,(%eax)
 804a21a:	0f b6 4d ee          	movzbl -0x12(%ebp),%ecx
 804a21e:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a221:	8d 50 01             	lea    0x1(%eax),%edx
 804a224:	89 55 0c             	mov    %edx,0xc(%ebp)
 804a227:	89 ca                	mov    %ecx,%edx
 804a229:	88 10                	mov    %dl,(%eax)
 804a22b:	eb 07                	jmp    804a234 <urlencode+0x126>
 804a22d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a232:	eb 1a                	jmp    804a24e <urlencode+0x140>
 804a234:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 804a238:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a23b:	8d 50 ff             	lea    -0x1(%eax),%edx
 804a23e:	89 55 f4             	mov    %edx,-0xc(%ebp)
 804a241:	85 c0                	test   %eax,%eax
 804a243:	0f 85 e1 fe ff ff    	jne    804a12a <urlencode+0x1c>
 804a249:	b8 00 00 00 00       	mov    $0x0,%eax
 804a24e:	c9                   	leave  
 804a24f:	c3                   	ret    

0804a250 <submitr>:
 804a250:	55                   	push   %ebp
 804a251:	89 e5                	mov    %esp,%ebp
 804a253:	57                   	push   %edi
 804a254:	56                   	push   %esi
 804a255:	53                   	push   %ebx
 804a256:	81 ec 3c a0 00 00    	sub    $0xa03c,%esp
 804a25c:	c7 85 b8 7f ff ff 00 	movl   $0x0,-0x8048(%ebp)
 804a263:	00 00 00 
 804a266:	83 ec 04             	sub    $0x4,%esp
 804a269:	6a 00                	push   $0x0
 804a26b:	6a 01                	push   $0x1
 804a26d:	6a 02                	push   $0x2
 804a26f:	e8 9c ef ff ff       	call   8049210 <socket@plt>
 804a274:	83 c4 10             	add    $0x10,%esp
 804a277:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804a27a:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 804a27e:	79 51                	jns    804a2d1 <submitr+0x81>
 804a280:	8b 45 20             	mov    0x20(%ebp),%eax
 804a283:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a289:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a290:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a297:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a29e:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a2a5:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a2ac:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 804a2b3:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 804a2ba:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 804a2c1:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 804a2c7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a2cc:	e9 b0 05 00 00       	jmp    804a881 <submitr+0x631>
 804a2d1:	83 ec 0c             	sub    $0xc,%esp
 804a2d4:	ff 75 08             	push   0x8(%ebp)
 804a2d7:	e8 64 ef ff ff       	call   8049240 <gethostbyname@plt>
 804a2dc:	83 c4 10             	add    $0x10,%esp
 804a2df:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804a2e2:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 804a2e6:	75 2e                	jne    804a316 <submitr+0xc6>
 804a2e8:	83 ec 04             	sub    $0x4,%esp
 804a2eb:	ff 75 08             	push   0x8(%ebp)
 804a2ee:	68 e8 b5 04 08       	push   $0x804b5e8
 804a2f3:	ff 75 20             	push   0x20(%ebp)
 804a2f6:	e8 05 ef ff ff       	call   8049200 <sprintf@plt>
 804a2fb:	83 c4 10             	add    $0x10,%esp
 804a2fe:	83 ec 0c             	sub    $0xc,%esp
 804a301:	ff 75 e4             	push   -0x1c(%ebp)
 804a304:	e8 57 ef ff ff       	call   8049260 <close@plt>
 804a309:	83 c4 10             	add    $0x10,%esp
 804a30c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a311:	e9 6b 05 00 00       	jmp    804a881 <submitr+0x631>
 804a316:	8d 45 c8             	lea    -0x38(%ebp),%eax
 804a319:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804a31f:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804a326:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 804a32d:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
 804a334:	66 c7 45 c8 02 00    	movw   $0x2,-0x38(%ebp)
 804a33a:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a33d:	8b 40 0c             	mov    0xc(%eax),%eax
 804a340:	89 c2                	mov    %eax,%edx
 804a342:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a345:	8b 40 10             	mov    0x10(%eax),%eax
 804a348:	8b 00                	mov    (%eax),%eax
 804a34a:	83 ec 04             	sub    $0x4,%esp
 804a34d:	52                   	push   %edx
 804a34e:	50                   	push   %eax
 804a34f:	8d 45 c8             	lea    -0x38(%ebp),%eax
 804a352:	83 c0 04             	add    $0x4,%eax
 804a355:	50                   	push   %eax
 804a356:	e8 15 ed ff ff       	call   8049070 <memmove@plt>
 804a35b:	83 c4 10             	add    $0x10,%esp
 804a35e:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a361:	0f b7 c0             	movzwl %ax,%eax
 804a364:	83 ec 0c             	sub    $0xc,%esp
 804a367:	50                   	push   %eax
 804a368:	e8 63 ed ff ff       	call   80490d0 <htons@plt>
 804a36d:	83 c4 10             	add    $0x10,%esp
 804a370:	66 89 45 ca          	mov    %ax,-0x36(%ebp)
 804a374:	83 ec 04             	sub    $0x4,%esp
 804a377:	6a 10                	push   $0x10
 804a379:	8d 45 c8             	lea    -0x38(%ebp),%eax
 804a37c:	50                   	push   %eax
 804a37d:	ff 75 e4             	push   -0x1c(%ebp)
 804a380:	e8 cb ee ff ff       	call   8049250 <connect@plt>
 804a385:	83 c4 10             	add    $0x10,%esp
 804a388:	85 c0                	test   %eax,%eax
 804a38a:	79 2e                	jns    804a3ba <submitr+0x16a>
 804a38c:	83 ec 04             	sub    $0x4,%esp
 804a38f:	ff 75 08             	push   0x8(%ebp)
 804a392:	68 14 b6 04 08       	push   $0x804b614
 804a397:	ff 75 20             	push   0x20(%ebp)
 804a39a:	e8 61 ee ff ff       	call   8049200 <sprintf@plt>
 804a39f:	83 c4 10             	add    $0x10,%esp
 804a3a2:	83 ec 0c             	sub    $0xc,%esp
 804a3a5:	ff 75 e4             	push   -0x1c(%ebp)
 804a3a8:	e8 b3 ee ff ff       	call   8049260 <close@plt>
 804a3ad:	83 c4 10             	add    $0x10,%esp
 804a3b0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a3b5:	e9 c7 04 00 00       	jmp    804a881 <submitr+0x631>
 804a3ba:	83 ec 0c             	sub    $0xc,%esp
 804a3bd:	ff 75 1c             	push   0x1c(%ebp)
 804a3c0:	e8 9b ed ff ff       	call   8049160 <strlen@plt>
 804a3c5:	83 c4 10             	add    $0x10,%esp
 804a3c8:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804a3cb:	83 ec 0c             	sub    $0xc,%esp
 804a3ce:	ff 75 10             	push   0x10(%ebp)
 804a3d1:	e8 8a ed ff ff       	call   8049160 <strlen@plt>
 804a3d6:	83 c4 10             	add    $0x10,%esp
 804a3d9:	89 c3                	mov    %eax,%ebx
 804a3db:	83 ec 0c             	sub    $0xc,%esp
 804a3de:	ff 75 14             	push   0x14(%ebp)
 804a3e1:	e8 7a ed ff ff       	call   8049160 <strlen@plt>
 804a3e6:	83 c4 10             	add    $0x10,%esp
 804a3e9:	01 c3                	add    %eax,%ebx
 804a3eb:	83 ec 0c             	sub    $0xc,%esp
 804a3ee:	ff 75 18             	push   0x18(%ebp)
 804a3f1:	e8 6a ed ff ff       	call   8049160 <strlen@plt>
 804a3f6:	83 c4 10             	add    $0x10,%esp
 804a3f9:	8d 0c 03             	lea    (%ebx,%eax,1),%ecx
 804a3fc:	8b 55 dc             	mov    -0x24(%ebp),%edx
 804a3ff:	89 d0                	mov    %edx,%eax
 804a401:	01 c0                	add    %eax,%eax
 804a403:	01 d0                	add    %edx,%eax
 804a405:	01 c8                	add    %ecx,%eax
 804a407:	83 e8 80             	sub    $0xffffff80,%eax
 804a40a:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804a40d:	81 7d d8 00 20 00 00 	cmpl   $0x2000,-0x28(%ebp)
 804a414:	76 7c                	jbe    804a492 <submitr+0x242>
 804a416:	8b 45 20             	mov    0x20(%ebp),%eax
 804a419:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a41f:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
 804a426:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
 804a42d:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
 804a434:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
 804a43b:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
 804a442:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
 804a449:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
 804a450:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
 804a457:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
 804a45e:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
 804a465:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
 804a46c:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
 804a473:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
 804a47a:	83 ec 0c             	sub    $0xc,%esp
 804a47d:	ff 75 e4             	push   -0x1c(%ebp)
 804a480:	e8 db ed ff ff       	call   8049260 <close@plt>
 804a485:	83 c4 10             	add    $0x10,%esp
 804a488:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a48d:	e9 ef 03 00 00       	jmp    804a881 <submitr+0x631>
 804a492:	8d 85 bc 9f ff ff    	lea    -0x6044(%ebp),%eax
 804a498:	89 c3                	mov    %eax,%ebx
 804a49a:	b8 00 00 00 00       	mov    $0x0,%eax
 804a49f:	ba 00 08 00 00       	mov    $0x800,%edx
 804a4a4:	89 df                	mov    %ebx,%edi
 804a4a6:	89 d1                	mov    %edx,%ecx
 804a4a8:	f3 ab                	rep stos %eax,%es:(%edi)
 804a4aa:	83 ec 08             	sub    $0x8,%esp
 804a4ad:	8d 85 bc 9f ff ff    	lea    -0x6044(%ebp),%eax
 804a4b3:	50                   	push   %eax
 804a4b4:	ff 75 1c             	push   0x1c(%ebp)
 804a4b7:	e8 52 fc ff ff       	call   804a10e <urlencode>
 804a4bc:	83 c4 10             	add    $0x10,%esp
 804a4bf:	85 c0                	test   %eax,%eax
 804a4c1:	79 4b                	jns    804a50e <submitr+0x2be>
 804a4c3:	8b 45 20             	mov    0x20(%ebp),%eax
 804a4c6:	bb 3c b6 04 08       	mov    $0x804b63c,%ebx
 804a4cb:	ba 43 00 00 00       	mov    $0x43,%edx
 804a4d0:	8b 0b                	mov    (%ebx),%ecx
 804a4d2:	89 08                	mov    %ecx,(%eax)
 804a4d4:	8b 4c 13 fc          	mov    -0x4(%ebx,%edx,1),%ecx
 804a4d8:	89 4c 10 fc          	mov    %ecx,-0x4(%eax,%edx,1)
 804a4dc:	8d 78 04             	lea    0x4(%eax),%edi
 804a4df:	83 e7 fc             	and    $0xfffffffc,%edi
 804a4e2:	29 f8                	sub    %edi,%eax
 804a4e4:	29 c3                	sub    %eax,%ebx
 804a4e6:	01 c2                	add    %eax,%edx
 804a4e8:	83 e2 fc             	and    $0xfffffffc,%edx
 804a4eb:	89 d0                	mov    %edx,%eax
 804a4ed:	c1 e8 02             	shr    $0x2,%eax
 804a4f0:	89 de                	mov    %ebx,%esi
 804a4f2:	89 c1                	mov    %eax,%ecx
 804a4f4:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 804a4f6:	83 ec 0c             	sub    $0xc,%esp
 804a4f9:	ff 75 e4             	push   -0x1c(%ebp)
 804a4fc:	e8 5f ed ff ff       	call   8049260 <close@plt>
 804a501:	83 c4 10             	add    $0x10,%esp
 804a504:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a509:	e9 73 03 00 00       	jmp    804a881 <submitr+0x631>
 804a50e:	83 ec 08             	sub    $0x8,%esp
 804a511:	8d 85 bc 9f ff ff    	lea    -0x6044(%ebp),%eax
 804a517:	50                   	push   %eax
 804a518:	ff 75 18             	push   0x18(%ebp)
 804a51b:	ff 75 14             	push   0x14(%ebp)
 804a51e:	ff 75 10             	push   0x10(%ebp)
 804a521:	68 80 b6 04 08       	push   $0x804b680
 804a526:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 804a52c:	50                   	push   %eax
 804a52d:	e8 ce ec ff ff       	call   8049200 <sprintf@plt>
 804a532:	83 c4 20             	add    $0x20,%esp
 804a535:	83 ec 0c             	sub    $0xc,%esp
 804a538:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 804a53e:	50                   	push   %eax
 804a53f:	e8 1c ec ff ff       	call   8049160 <strlen@plt>
 804a544:	83 c4 10             	add    $0x10,%esp
 804a547:	83 ec 04             	sub    $0x4,%esp
 804a54a:	50                   	push   %eax
 804a54b:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 804a551:	50                   	push   %eax
 804a552:	ff 75 e4             	push   -0x1c(%ebp)
 804a555:	e8 50 fb ff ff       	call   804a0aa <rio_writen>
 804a55a:	83 c4 10             	add    $0x10,%esp
 804a55d:	85 c0                	test   %eax,%eax
 804a55f:	79 67                	jns    804a5c8 <submitr+0x378>
 804a561:	8b 45 20             	mov    0x20(%ebp),%eax
 804a564:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a56a:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a571:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a578:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a57f:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a586:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a58d:	c7 40 18 77 72 69 74 	movl   $0x74697277,0x18(%eax)
 804a594:	c7 40 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%eax)
 804a59b:	c7 40 20 20 74 68 65 	movl   $0x65687420,0x20(%eax)
 804a5a2:	c7 40 24 20 73 65 72 	movl   $0x72657320,0x24(%eax)
 804a5a9:	c7 40 28 76 65 72 00 	movl   $0x726576,0x28(%eax)
 804a5b0:	83 ec 0c             	sub    $0xc,%esp
 804a5b3:	ff 75 e4             	push   -0x1c(%ebp)
 804a5b6:	e8 a5 ec ff ff       	call   8049260 <close@plt>
 804a5bb:	83 c4 10             	add    $0x10,%esp
 804a5be:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a5c3:	e9 b9 02 00 00       	jmp    804a881 <submitr+0x631>
 804a5c8:	83 ec 08             	sub    $0x8,%esp
 804a5cb:	ff 75 e4             	push   -0x1c(%ebp)
 804a5ce:	8d 85 bc df ff ff    	lea    -0x2044(%ebp),%eax
 804a5d4:	50                   	push   %eax
 804a5d5:	e8 62 f9 ff ff       	call   8049f3c <rio_readinitb>
 804a5da:	83 c4 10             	add    $0x10,%esp
 804a5dd:	83 ec 04             	sub    $0x4,%esp
 804a5e0:	68 00 20 00 00       	push   $0x2000
 804a5e5:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 804a5eb:	50                   	push   %eax
 804a5ec:	8d 85 bc df ff ff    	lea    -0x2044(%ebp),%eax
 804a5f2:	50                   	push   %eax
 804a5f3:	e8 33 fa ff ff       	call   804a02b <rio_readlineb>
 804a5f8:	83 c4 10             	add    $0x10,%esp
 804a5fb:	85 c0                	test   %eax,%eax
 804a5fd:	7f 7b                	jg     804a67a <submitr+0x42a>
 804a5ff:	8b 45 20             	mov    0x20(%ebp),%eax
 804a602:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a608:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a60f:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a616:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a61d:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a624:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a62b:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 804a632:	c7 40 1c 20 66 69 72 	movl   $0x72696620,0x1c(%eax)
 804a639:	c7 40 20 73 74 20 68 	movl   $0x68207473,0x20(%eax)
 804a640:	c7 40 24 65 61 64 65 	movl   $0x65646165,0x24(%eax)
 804a647:	c7 40 28 72 20 66 72 	movl   $0x72662072,0x28(%eax)
 804a64e:	c7 40 2c 6f 6d 20 73 	movl   $0x73206d6f,0x2c(%eax)
 804a655:	c7 40 30 65 72 76 65 	movl   $0x65767265,0x30(%eax)
 804a65c:	66 c7 40 34 72 00    	movw   $0x72,0x34(%eax)
 804a662:	83 ec 0c             	sub    $0xc,%esp
 804a665:	ff 75 e4             	push   -0x1c(%ebp)
 804a668:	e8 f3 eb ff ff       	call   8049260 <close@plt>
 804a66d:	83 c4 10             	add    $0x10,%esp
 804a670:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a675:	e9 07 02 00 00       	jmp    804a881 <submitr+0x631>
 804a67a:	83 ec 0c             	sub    $0xc,%esp
 804a67d:	8d 85 b8 5f ff ff    	lea    -0xa048(%ebp),%eax
 804a683:	50                   	push   %eax
 804a684:	8d 85 b8 7f ff ff    	lea    -0x8048(%ebp),%eax
 804a68a:	50                   	push   %eax
 804a68b:	8d 85 bc 7f ff ff    	lea    -0x8044(%ebp),%eax
 804a691:	50                   	push   %eax
 804a692:	68 ca b6 04 08       	push   $0x804b6ca
 804a697:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 804a69d:	50                   	push   %eax
 804a69e:	e8 0d eb ff ff       	call   80491b0 <__isoc99_sscanf@plt>
 804a6a3:	83 c4 20             	add    $0x20,%esp
 804a6a6:	8b 85 b8 7f ff ff    	mov    -0x8048(%ebp),%eax
 804a6ac:	3d c8 00 00 00       	cmp    $0xc8,%eax
 804a6b1:	0f 84 ca 00 00 00    	je     804a781 <submitr+0x531>
 804a6b7:	8b 85 b8 7f ff ff    	mov    -0x8048(%ebp),%eax
 804a6bd:	8d 95 b8 5f ff ff    	lea    -0xa048(%ebp),%edx
 804a6c3:	52                   	push   %edx
 804a6c4:	50                   	push   %eax
 804a6c5:	68 dc b6 04 08       	push   $0x804b6dc
 804a6ca:	ff 75 20             	push   0x20(%ebp)
 804a6cd:	e8 2e eb ff ff       	call   8049200 <sprintf@plt>
 804a6d2:	83 c4 10             	add    $0x10,%esp
 804a6d5:	83 ec 0c             	sub    $0xc,%esp
 804a6d8:	ff 75 e4             	push   -0x1c(%ebp)
 804a6db:	e8 80 eb ff ff       	call   8049260 <close@plt>
 804a6e0:	83 c4 10             	add    $0x10,%esp
 804a6e3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a6e8:	e9 94 01 00 00       	jmp    804a881 <submitr+0x631>
 804a6ed:	83 ec 04             	sub    $0x4,%esp
 804a6f0:	68 00 20 00 00       	push   $0x2000
 804a6f5:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 804a6fb:	50                   	push   %eax
 804a6fc:	8d 85 bc df ff ff    	lea    -0x2044(%ebp),%eax
 804a702:	50                   	push   %eax
 804a703:	e8 23 f9 ff ff       	call   804a02b <rio_readlineb>
 804a708:	83 c4 10             	add    $0x10,%esp
 804a70b:	85 c0                	test   %eax,%eax
 804a70d:	7f 72                	jg     804a781 <submitr+0x531>
 804a70f:	8b 45 20             	mov    0x20(%ebp),%eax
 804a712:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a718:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a71f:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a726:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a72d:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a734:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a73b:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 804a742:	c7 40 1c 20 68 65 61 	movl   $0x61656820,0x1c(%eax)
 804a749:	c7 40 20 64 65 72 73 	movl   $0x73726564,0x20(%eax)
 804a750:	c7 40 24 20 66 72 6f 	movl   $0x6f726620,0x24(%eax)
 804a757:	c7 40 28 6d 20 73 65 	movl   $0x6573206d,0x28(%eax)
 804a75e:	c7 40 2c 72 76 65 72 	movl   $0x72657672,0x2c(%eax)
 804a765:	c6 40 30 00          	movb   $0x0,0x30(%eax)
 804a769:	83 ec 0c             	sub    $0xc,%esp
 804a76c:	ff 75 e4             	push   -0x1c(%ebp)
 804a76f:	e8 ec ea ff ff       	call   8049260 <close@plt>
 804a774:	83 c4 10             	add    $0x10,%esp
 804a777:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a77c:	e9 00 01 00 00       	jmp    804a881 <submitr+0x631>
 804a781:	83 ec 08             	sub    $0x8,%esp
 804a784:	68 09 b7 04 08       	push   $0x804b709
 804a789:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 804a78f:	50                   	push   %eax
 804a790:	e8 9b e8 ff ff       	call   8049030 <strcmp@plt>
 804a795:	83 c4 10             	add    $0x10,%esp
 804a798:	85 c0                	test   %eax,%eax
 804a79a:	0f 85 4d ff ff ff    	jne    804a6ed <submitr+0x49d>
 804a7a0:	83 ec 04             	sub    $0x4,%esp
 804a7a3:	68 00 20 00 00       	push   $0x2000
 804a7a8:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 804a7ae:	50                   	push   %eax
 804a7af:	8d 85 bc df ff ff    	lea    -0x2044(%ebp),%eax
 804a7b5:	50                   	push   %eax
 804a7b6:	e8 70 f8 ff ff       	call   804a02b <rio_readlineb>
 804a7bb:	83 c4 10             	add    $0x10,%esp
 804a7be:	85 c0                	test   %eax,%eax
 804a7c0:	7f 79                	jg     804a83b <submitr+0x5eb>
 804a7c2:	8b 45 20             	mov    0x20(%ebp),%eax
 804a7c5:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a7cb:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a7d2:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a7d9:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a7e0:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a7e7:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a7ee:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 804a7f5:	c7 40 1c 20 73 74 61 	movl   $0x61747320,0x1c(%eax)
 804a7fc:	c7 40 20 74 75 73 20 	movl   $0x20737574,0x20(%eax)
 804a803:	c7 40 24 6d 65 73 73 	movl   $0x7373656d,0x24(%eax)
 804a80a:	c7 40 28 61 67 65 20 	movl   $0x20656761,0x28(%eax)
 804a811:	c7 40 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%eax)
 804a818:	c7 40 30 20 73 65 72 	movl   $0x72657320,0x30(%eax)
 804a81f:	c7 40 34 76 65 72 00 	movl   $0x726576,0x34(%eax)
 804a826:	83 ec 0c             	sub    $0xc,%esp
 804a829:	ff 75 e4             	push   -0x1c(%ebp)
 804a82c:	e8 2f ea ff ff       	call   8049260 <close@plt>
 804a831:	83 c4 10             	add    $0x10,%esp
 804a834:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a839:	eb 46                	jmp    804a881 <submitr+0x631>
 804a83b:	83 ec 08             	sub    $0x8,%esp
 804a83e:	8d 85 bc bf ff ff    	lea    -0x4044(%ebp),%eax
 804a844:	50                   	push   %eax
 804a845:	ff 75 20             	push   0x20(%ebp)
 804a848:	e8 a3 e8 ff ff       	call   80490f0 <strcpy@plt>
 804a84d:	83 c4 10             	add    $0x10,%esp
 804a850:	83 ec 0c             	sub    $0xc,%esp
 804a853:	ff 75 e4             	push   -0x1c(%ebp)
 804a856:	e8 05 ea ff ff       	call   8049260 <close@plt>
 804a85b:	83 c4 10             	add    $0x10,%esp
 804a85e:	83 ec 08             	sub    $0x8,%esp
 804a861:	68 0c b7 04 08       	push   $0x804b70c
 804a866:	ff 75 20             	push   0x20(%ebp)
 804a869:	e8 c2 e7 ff ff       	call   8049030 <strcmp@plt>
 804a86e:	83 c4 10             	add    $0x10,%esp
 804a871:	85 c0                	test   %eax,%eax
 804a873:	75 07                	jne    804a87c <submitr+0x62c>
 804a875:	b8 00 00 00 00       	mov    $0x0,%eax
 804a87a:	eb 05                	jmp    804a881 <submitr+0x631>
 804a87c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a881:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804a884:	5b                   	pop    %ebx
 804a885:	5e                   	pop    %esi
 804a886:	5f                   	pop    %edi
 804a887:	5d                   	pop    %ebp
 804a888:	c3                   	ret    

0804a889 <init_timeout>:
 804a889:	55                   	push   %ebp
 804a88a:	89 e5                	mov    %esp,%ebp
 804a88c:	83 ec 08             	sub    $0x8,%esp
 804a88f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804a893:	74 30                	je     804a8c5 <init_timeout+0x3c>
 804a895:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804a899:	79 07                	jns    804a8a2 <init_timeout+0x19>
 804a89b:	c7 45 08 02 00 00 00 	movl   $0x2,0x8(%ebp)
 804a8a2:	83 ec 08             	sub    $0x8,%esp
 804a8a5:	68 1a 9f 04 08       	push   $0x8049f1a
 804a8aa:	6a 0e                	push   $0xe
 804a8ac:	e8 ef e7 ff ff       	call   80490a0 <signal@plt>
 804a8b1:	83 c4 10             	add    $0x10,%esp
 804a8b4:	8b 45 08             	mov    0x8(%ebp),%eax
 804a8b7:	83 ec 0c             	sub    $0xc,%esp
 804a8ba:	50                   	push   %eax
 804a8bb:	e8 00 e8 ff ff       	call   80490c0 <alarm@plt>
 804a8c0:	83 c4 10             	add    $0x10,%esp
 804a8c3:	eb 01                	jmp    804a8c6 <init_timeout+0x3d>
 804a8c5:	90                   	nop
 804a8c6:	c9                   	leave  
 804a8c7:	c3                   	ret    

0804a8c8 <init_driver>:
 804a8c8:	55                   	push   %ebp
 804a8c9:	89 e5                	mov    %esp,%ebp
 804a8cb:	83 ec 28             	sub    $0x28,%esp
 804a8ce:	c7 45 f4 0f b7 04 08 	movl   $0x804b70f,-0xc(%ebp)
 804a8d5:	c7 45 f0 03 d9 00 00 	movl   $0xd903,-0x10(%ebp)
 804a8dc:	83 ec 08             	sub    $0x8,%esp
 804a8df:	6a 01                	push   $0x1
 804a8e1:	6a 0d                	push   $0xd
 804a8e3:	e8 b8 e7 ff ff       	call   80490a0 <signal@plt>
 804a8e8:	83 c4 10             	add    $0x10,%esp
 804a8eb:	83 ec 08             	sub    $0x8,%esp
 804a8ee:	6a 01                	push   $0x1
 804a8f0:	6a 1d                	push   $0x1d
 804a8f2:	e8 a9 e7 ff ff       	call   80490a0 <signal@plt>
 804a8f7:	83 c4 10             	add    $0x10,%esp
 804a8fa:	83 ec 08             	sub    $0x8,%esp
 804a8fd:	6a 01                	push   $0x1
 804a8ff:	6a 1d                	push   $0x1d
 804a901:	e8 9a e7 ff ff       	call   80490a0 <signal@plt>
 804a906:	83 c4 10             	add    $0x10,%esp
 804a909:	83 ec 04             	sub    $0x4,%esp
 804a90c:	6a 00                	push   $0x0
 804a90e:	6a 01                	push   $0x1
 804a910:	6a 02                	push   $0x2
 804a912:	e8 f9 e8 ff ff       	call   8049210 <socket@plt>
 804a917:	83 c4 10             	add    $0x10,%esp
 804a91a:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a91d:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 804a921:	79 51                	jns    804a974 <init_driver+0xac>
 804a923:	8b 45 08             	mov    0x8(%ebp),%eax
 804a926:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804a92c:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 804a933:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804a93a:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 804a941:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804a948:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804a94f:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 804a956:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 804a95d:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 804a964:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 804a96a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a96f:	e9 05 01 00 00       	jmp    804aa79 <init_driver+0x1b1>
 804a974:	83 ec 0c             	sub    $0xc,%esp
 804a977:	ff 75 f4             	push   -0xc(%ebp)
 804a97a:	e8 c1 e8 ff ff       	call   8049240 <gethostbyname@plt>
 804a97f:	83 c4 10             	add    $0x10,%esp
 804a982:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804a985:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804a989:	75 2e                	jne    804a9b9 <init_driver+0xf1>
 804a98b:	83 ec 04             	sub    $0x4,%esp
 804a98e:	ff 75 f4             	push   -0xc(%ebp)
 804a991:	68 e8 b5 04 08       	push   $0x804b5e8
 804a996:	ff 75 08             	push   0x8(%ebp)
 804a999:	e8 62 e8 ff ff       	call   8049200 <sprintf@plt>
 804a99e:	83 c4 10             	add    $0x10,%esp
 804a9a1:	83 ec 0c             	sub    $0xc,%esp
 804a9a4:	ff 75 ec             	push   -0x14(%ebp)
 804a9a7:	e8 b4 e8 ff ff       	call   8049260 <close@plt>
 804a9ac:	83 c4 10             	add    $0x10,%esp
 804a9af:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a9b4:	e9 c0 00 00 00       	jmp    804aa79 <init_driver+0x1b1>
 804a9b9:	8d 45 d8             	lea    -0x28(%ebp),%eax
 804a9bc:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804a9c2:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804a9c9:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 804a9d0:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
 804a9d7:	66 c7 45 d8 02 00    	movw   $0x2,-0x28(%ebp)
 804a9dd:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804a9e0:	8b 40 0c             	mov    0xc(%eax),%eax
 804a9e3:	89 c2                	mov    %eax,%edx
 804a9e5:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804a9e8:	8b 40 10             	mov    0x10(%eax),%eax
 804a9eb:	8b 00                	mov    (%eax),%eax
 804a9ed:	83 ec 04             	sub    $0x4,%esp
 804a9f0:	52                   	push   %edx
 804a9f1:	50                   	push   %eax
 804a9f2:	8d 45 d8             	lea    -0x28(%ebp),%eax
 804a9f5:	83 c0 04             	add    $0x4,%eax
 804a9f8:	50                   	push   %eax
 804a9f9:	e8 72 e6 ff ff       	call   8049070 <memmove@plt>
 804a9fe:	83 c4 10             	add    $0x10,%esp
 804aa01:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804aa04:	0f b7 c0             	movzwl %ax,%eax
 804aa07:	83 ec 0c             	sub    $0xc,%esp
 804aa0a:	50                   	push   %eax
 804aa0b:	e8 c0 e6 ff ff       	call   80490d0 <htons@plt>
 804aa10:	83 c4 10             	add    $0x10,%esp
 804aa13:	66 89 45 da          	mov    %ax,-0x26(%ebp)
 804aa17:	83 ec 04             	sub    $0x4,%esp
 804aa1a:	6a 10                	push   $0x10
 804aa1c:	8d 45 d8             	lea    -0x28(%ebp),%eax
 804aa1f:	50                   	push   %eax
 804aa20:	ff 75 ec             	push   -0x14(%ebp)
 804aa23:	e8 28 e8 ff ff       	call   8049250 <connect@plt>
 804aa28:	83 c4 10             	add    $0x10,%esp
 804aa2b:	85 c0                	test   %eax,%eax
 804aa2d:	79 2b                	jns    804aa5a <init_driver+0x192>
 804aa2f:	ff 75 f0             	push   -0x10(%ebp)
 804aa32:	ff 75 f4             	push   -0xc(%ebp)
 804aa35:	68 20 b7 04 08       	push   $0x804b720
 804aa3a:	ff 75 08             	push   0x8(%ebp)
 804aa3d:	e8 be e7 ff ff       	call   8049200 <sprintf@plt>
 804aa42:	83 c4 10             	add    $0x10,%esp
 804aa45:	83 ec 0c             	sub    $0xc,%esp
 804aa48:	ff 75 ec             	push   -0x14(%ebp)
 804aa4b:	e8 10 e8 ff ff       	call   8049260 <close@plt>
 804aa50:	83 c4 10             	add    $0x10,%esp
 804aa53:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804aa58:	eb 1f                	jmp    804aa79 <init_driver+0x1b1>
 804aa5a:	83 ec 0c             	sub    $0xc,%esp
 804aa5d:	ff 75 ec             	push   -0x14(%ebp)
 804aa60:	e8 fb e7 ff ff       	call   8049260 <close@plt>
 804aa65:	83 c4 10             	add    $0x10,%esp
 804aa68:	8b 45 08             	mov    0x8(%ebp),%eax
 804aa6b:	66 c7 00 4f 4b       	movw   $0x4b4f,(%eax)
 804aa70:	c6 40 02 00          	movb   $0x0,0x2(%eax)
 804aa74:	b8 00 00 00 00       	mov    $0x0,%eax
 804aa79:	c9                   	leave  
 804aa7a:	c3                   	ret    

0804aa7b <driver_post>:
 804aa7b:	55                   	push   %ebp
 804aa7c:	89 e5                	mov    %esp,%ebp
 804aa7e:	83 ec 18             	sub    $0x18,%esp
 804aa81:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 804aa85:	74 26                	je     804aaad <driver_post+0x32>
 804aa87:	83 ec 08             	sub    $0x8,%esp
 804aa8a:	ff 75 0c             	push   0xc(%ebp)
 804aa8d:	68 49 b7 04 08       	push   $0x804b749
 804aa92:	e8 c9 e5 ff ff       	call   8049060 <printf@plt>
 804aa97:	83 c4 10             	add    $0x10,%esp
 804aa9a:	8b 45 14             	mov    0x14(%ebp),%eax
 804aa9d:	66 c7 00 4f 4b       	movw   $0x4b4f,(%eax)
 804aaa2:	c6 40 02 00          	movb   $0x0,0x2(%eax)
 804aaa6:	b8 00 00 00 00       	mov    $0x0,%eax
 804aaab:	eb 54                	jmp    804ab01 <driver_post+0x86>
 804aaad:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804aab1:	74 3d                	je     804aaf0 <driver_post+0x75>
 804aab3:	8b 45 08             	mov    0x8(%ebp),%eax
 804aab6:	0f b6 00             	movzbl (%eax),%eax
 804aab9:	0f b6 c0             	movzbl %al,%eax
 804aabc:	85 c0                	test   %eax,%eax
 804aabe:	74 30                	je     804aaf0 <driver_post+0x75>
 804aac0:	83 ec 04             	sub    $0x4,%esp
 804aac3:	ff 75 14             	push   0x14(%ebp)
 804aac6:	ff 75 0c             	push   0xc(%ebp)
 804aac9:	68 60 b7 04 08       	push   $0x804b760
 804aace:	ff 75 08             	push   0x8(%ebp)
 804aad1:	68 67 b7 04 08       	push   $0x804b767
 804aad6:	68 03 d9 00 00       	push   $0xd903
 804aadb:	68 0f b7 04 08       	push   $0x804b70f
 804aae0:	e8 6b f7 ff ff       	call   804a250 <submitr>
 804aae5:	83 c4 20             	add    $0x20,%esp
 804aae8:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804aaeb:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804aaee:	eb 11                	jmp    804ab01 <driver_post+0x86>
 804aaf0:	8b 45 14             	mov    0x14(%ebp),%eax
 804aaf3:	66 c7 00 4f 4b       	movw   $0x4b4f,(%eax)
 804aaf8:	c6 40 02 00          	movb   $0x0,0x2(%eax)
 804aafc:	b8 00 00 00 00       	mov    $0x0,%eax
 804ab01:	c9                   	leave  
 804ab02:	c3                   	ret    

0804ab03 <hash>:
 804ab03:	55                   	push   %ebp
 804ab04:	89 e5                	mov    %esp,%ebp
 804ab06:	83 ec 10             	sub    $0x10,%esp
 804ab09:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 804ab10:	eb 1a                	jmp    804ab2c <hash+0x29>
 804ab12:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804ab15:	6b c8 67             	imul   $0x67,%eax,%ecx
 804ab18:	8b 45 08             	mov    0x8(%ebp),%eax
 804ab1b:	8d 50 01             	lea    0x1(%eax),%edx
 804ab1e:	89 55 08             	mov    %edx,0x8(%ebp)
 804ab21:	0f b6 00             	movzbl (%eax),%eax
 804ab24:	0f be c0             	movsbl %al,%eax
 804ab27:	01 c8                	add    %ecx,%eax
 804ab29:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804ab2c:	8b 45 08             	mov    0x8(%ebp),%eax
 804ab2f:	0f b6 00             	movzbl (%eax),%eax
 804ab32:	84 c0                	test   %al,%al
 804ab34:	75 dc                	jne    804ab12 <hash+0xf>
 804ab36:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804ab39:	c9                   	leave  
 804ab3a:	c3                   	ret    

0804ab3b <check>:
 804ab3b:	55                   	push   %ebp
 804ab3c:	89 e5                	mov    %esp,%ebp
 804ab3e:	83 ec 10             	sub    $0x10,%esp
 804ab41:	8b 45 08             	mov    0x8(%ebp),%eax
 804ab44:	c1 e8 1c             	shr    $0x1c,%eax
 804ab47:	85 c0                	test   %eax,%eax
 804ab49:	75 07                	jne    804ab52 <check+0x17>
 804ab4b:	b8 00 00 00 00       	mov    $0x0,%eax
 804ab50:	eb 33                	jmp    804ab85 <check+0x4a>
 804ab52:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 804ab59:	eb 1f                	jmp    804ab7a <check+0x3f>
 804ab5b:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804ab5e:	8b 55 08             	mov    0x8(%ebp),%edx
 804ab61:	89 c1                	mov    %eax,%ecx
 804ab63:	d3 ea                	shr    %cl,%edx
 804ab65:	89 d0                	mov    %edx,%eax
 804ab67:	0f b6 c0             	movzbl %al,%eax
 804ab6a:	83 f8 0a             	cmp    $0xa,%eax
 804ab6d:	75 07                	jne    804ab76 <check+0x3b>
 804ab6f:	b8 00 00 00 00       	mov    $0x0,%eax
 804ab74:	eb 0f                	jmp    804ab85 <check+0x4a>
 804ab76:	83 45 fc 08          	addl   $0x8,-0x4(%ebp)
 804ab7a:	83 7d fc 1f          	cmpl   $0x1f,-0x4(%ebp)
 804ab7e:	7e db                	jle    804ab5b <check+0x20>
 804ab80:	b8 01 00 00 00       	mov    $0x1,%eax
 804ab85:	c9                   	leave  
 804ab86:	c3                   	ret    

0804ab87 <gencookie>:
 804ab87:	55                   	push   %ebp
 804ab88:	89 e5                	mov    %esp,%ebp
 804ab8a:	83 ec 18             	sub    $0x18,%esp
 804ab8d:	ff 75 08             	push   0x8(%ebp)
 804ab90:	e8 6e ff ff ff       	call   804ab03 <hash>
 804ab95:	83 c4 04             	add    $0x4,%esp
 804ab98:	83 ec 0c             	sub    $0xc,%esp
 804ab9b:	50                   	push   %eax
 804ab9c:	e8 9f e5 ff ff       	call   8049140 <srand@plt>
 804aba1:	83 c4 10             	add    $0x10,%esp
 804aba4:	e8 37 e6 ff ff       	call   80491e0 <rand@plt>
 804aba9:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804abac:	83 ec 0c             	sub    $0xc,%esp
 804abaf:	ff 75 f4             	push   -0xc(%ebp)
 804abb2:	e8 84 ff ff ff       	call   804ab3b <check>
 804abb7:	83 c4 10             	add    $0x10,%esp
 804abba:	85 c0                	test   %eax,%eax
 804abbc:	74 e6                	je     804aba4 <gencookie+0x1d>
 804abbe:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804abc1:	c9                   	leave  
 804abc2:	c3                   	ret    
 804abc3:	66 90                	xchg   %ax,%ax
 804abc5:	66 90                	xchg   %ax,%ax
 804abc7:	66 90                	xchg   %ax,%ax
 804abc9:	66 90                	xchg   %ax,%ax
 804abcb:	66 90                	xchg   %ax,%ax
 804abcd:	66 90                	xchg   %ax,%ax
 804abcf:	90                   	nop

0804abd0 <__libc_csu_init>:
 804abd0:	55                   	push   %ebp
 804abd1:	57                   	push   %edi
 804abd2:	56                   	push   %esi
 804abd3:	53                   	push   %ebx
 804abd4:	e8 f7 e6 ff ff       	call   80492d0 <__x86.get_pc_thunk.bx>
 804abd9:	81 c3 27 24 00 00    	add    $0x2427,%ebx
 804abdf:	83 ec 0c             	sub    $0xc,%esp
 804abe2:	8b 6c 24 28          	mov    0x28(%esp),%ebp
 804abe6:	e8 15 e4 ff ff       	call   8049000 <_init>
 804abeb:	8d b3 10 ff ff ff    	lea    -0xf0(%ebx),%esi
 804abf1:	8d 83 0c ff ff ff    	lea    -0xf4(%ebx),%eax
 804abf7:	29 c6                	sub    %eax,%esi
 804abf9:	c1 fe 02             	sar    $0x2,%esi
 804abfc:	74 1f                	je     804ac1d <__libc_csu_init+0x4d>
 804abfe:	31 ff                	xor    %edi,%edi
 804ac00:	83 ec 04             	sub    $0x4,%esp
 804ac03:	55                   	push   %ebp
 804ac04:	ff 74 24 2c          	push   0x2c(%esp)
 804ac08:	ff 74 24 2c          	push   0x2c(%esp)
 804ac0c:	ff 94 bb 0c ff ff ff 	call   *-0xf4(%ebx,%edi,4)
 804ac13:	83 c7 01             	add    $0x1,%edi
 804ac16:	83 c4 10             	add    $0x10,%esp
 804ac19:	39 fe                	cmp    %edi,%esi
 804ac1b:	75 e3                	jne    804ac00 <__libc_csu_init+0x30>
 804ac1d:	83 c4 0c             	add    $0xc,%esp
 804ac20:	5b                   	pop    %ebx
 804ac21:	5e                   	pop    %esi
 804ac22:	5f                   	pop    %edi
 804ac23:	5d                   	pop    %ebp
 804ac24:	c3                   	ret    
 804ac25:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804ac2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

0804ac30 <__libc_csu_fini>:
 804ac30:	c3                   	ret    

Disassembly of section .fini:

0804ac34 <_fini>:
 804ac34:	53                   	push   %ebx
 804ac35:	83 ec 08             	sub    $0x8,%esp
 804ac38:	e8 93 e6 ff ff       	call   80492d0 <__x86.get_pc_thunk.bx>
 804ac3d:	81 c3 c3 23 00 00    	add    $0x23c3,%ebx
 804ac43:	83 c4 08             	add    $0x8,%esp
 804ac46:	5b                   	pop    %ebx
 804ac47:	c3                   	ret    
