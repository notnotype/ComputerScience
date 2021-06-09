
test:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000238 <.interp>:
 238:	2f                   	(bad)  
 239:	6c                   	insb   (%dx),%es:(%rdi)
 23a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 246:	78 2d                	js     275 <_init-0x29b>
 248:	78 38                	js     282 <_init-0x28e>
 24a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 250:	6f                   	outsl  %ds:(%rsi),(%dx)
 251:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

0000000000000254 <.note.ABI-tag>:
 254:	04 00                	add    $0x0,%al
 256:	00 00                	add    %al,(%rax)
 258:	10 00                	adc    %al,(%rax)
 25a:	00 00                	add    %al,(%rax)
 25c:	01 00                	add    %eax,(%rax)
 25e:	00 00                	add    %al,(%rax)
 260:	47                   	rex.RXB
 261:	4e 55                	rex.WRX push %rbp
 263:	00 00                	add    %al,(%rax)
 265:	00 00                	add    %al,(%rax)
 267:	00 03                	add    %al,(%rbx)
 269:	00 00                	add    %al,(%rax)
 26b:	00 02                	add    %al,(%rdx)
 26d:	00 00                	add    %al,(%rax)
 26f:	00 00                	add    %al,(%rax)
 271:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000000274 <.note.gnu.build-id>:
 274:	04 00                	add    $0x0,%al
 276:	00 00                	add    %al,(%rax)
 278:	14 00                	adc    $0x0,%al
 27a:	00 00                	add    %al,(%rax)
 27c:	03 00                	add    (%rax),%eax
 27e:	00 00                	add    %al,(%rax)
 280:	47                   	rex.RXB
 281:	4e 55                	rex.WRX push %rbp
 283:	00 ff                	add    %bh,%bh
 285:	b5 39                	mov    $0x39,%ch
 287:	5d                   	pop    %rbp
 288:	b8 48 85 1c 98       	mov    $0x981c8548,%eax
 28d:	73 61                	jae    2f0 <_init-0x220>
 28f:	6e                   	outsb  %ds:(%rsi),(%dx)
 290:	41 f9                	rex.B stc 
 292:	5c                   	pop    %rsp
 293:	f6 c1 b1             	test   $0xb1,%cl
 296:	43                   	rex.XB
 297:	1a                   	.byte 0x1a

Disassembly of section .gnu.hash:

0000000000000298 <.gnu.hash>:
 298:	01 00                	add    %eax,(%rax)
 29a:	00 00                	add    %al,(%rax)
 29c:	01 00                	add    %eax,(%rax)
 29e:	00 00                	add    %al,(%rax)
 2a0:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .dynsym:

00000000000002b8 <.dynsym>:
	...
 2d0:	51                   	push   %rcx
 2d1:	00 00                	add    %al,(%rax)
 2d3:	00 20                	add    %ah,(%rax)
	...
 2e5:	00 00                	add    %al,(%rax)
 2e7:	00 27                	add    %ah,(%rdi)
 2e9:	00 00                	add    %al,(%rax)
 2eb:	00 12                	add    %dl,(%rdx)
	...
 2fd:	00 00                	add    %al,(%rax)
 2ff:	00 6d 00             	add    %ch,0x0(%rbp)
 302:	00 00                	add    %al,(%rax)
 304:	20 00                	and    %al,(%rax)
	...
 316:	00 00                	add    %al,(%rax)
 318:	0b 00                	or     (%rax),%eax
 31a:	00 00                	add    %al,(%rax)
 31c:	12 00                	adc    (%rax),%al
	...
 32e:	00 00                	add    %al,(%rax)
 330:	7c 00                	jl     332 <_init-0x1de>
 332:	00 00                	add    %al,(%rax)
 334:	20 00                	and    %al,(%rax)
	...
 346:	00 00                	add    %al,(%rax)
 348:	18 00                	sbb    %al,(%rax)
 34a:	00 00                	add    %al,(%rax)
 34c:	22 00                	and    (%rax),%al
	...

Disassembly of section .dynstr:

0000000000000360 <.dynstr>:
 360:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
 364:	63 2e                	movslq (%rsi),%ebp
 366:	73 6f                	jae    3d7 <_init-0x139>
 368:	2e 36 00 5f 5f       	cs add %bl,%ss:0x5f(%rdi)
 36d:	70 72                	jo     3e1 <_init-0x12f>
 36f:	69 6e 74 66 5f 63 68 	imul   $0x68635f66,0x74(%rsi),%ebp
 376:	6b 00 5f             	imul   $0x5f,(%rax),%eax
 379:	5f                   	pop    %rdi
 37a:	63 78 61             	movslq 0x61(%rax),%edi
 37d:	5f                   	pop    %rdi
 37e:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 384:	7a 65                	jp     3eb <_init-0x125>
 386:	00 5f 5f             	add    %bl,0x5f(%rdi)
 389:	6c                   	insb   (%dx),%es:(%rdi)
 38a:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 391:	72 74                	jb     407 <_init-0x109>
 393:	5f                   	pop    %rdi
 394:	6d                   	insl   (%dx),%es:(%rdi)
 395:	61                   	(bad)  
 396:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%rsi),%ebp
 39d:	43 5f                	rex.XB pop %r15
 39f:	32 2e                	xor    (%rsi),%ch
 3a1:	33 2e                	xor    (%rsi),%ebp
 3a3:	34 00                	xor    $0x0,%al
 3a5:	47                   	rex.RXB
 3a6:	4c                   	rex.WR
 3a7:	49                   	rex.WB
 3a8:	42                   	rex.X
 3a9:	43 5f                	rex.XB pop %r15
 3ab:	32 2e                	xor    (%rsi),%ch
 3ad:	32 2e                	xor    (%rsi),%ch
 3af:	35 00 5f 49 54       	xor    $0x54495f00,%eax
 3b4:	4d 5f                	rex.WRB pop %r15
 3b6:	64 65 72 65          	fs gs jb 41f <_init-0xf1>
 3ba:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 3c1:	4d 
 3c2:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 3c4:	6f                   	outsl  %ds:(%rsi),(%dx)
 3c5:	6e                   	outsb  %ds:(%rsi),(%dx)
 3c6:	65 54                	gs push %rsp
 3c8:	61                   	(bad)  
 3c9:	62                   	(bad)  
 3ca:	6c                   	insb   (%dx),%es:(%rdi)
 3cb:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 3cf:	67 6d                	insl   (%dx),%es:(%edi)
 3d1:	6f                   	outsl  %ds:(%rsi),(%dx)
 3d2:	6e                   	outsb  %ds:(%rsi),(%dx)
 3d3:	5f                   	pop    %rdi
 3d4:	73 74                	jae    44a <_init-0xc6>
 3d6:	61                   	(bad)  
 3d7:	72 74                	jb     44d <_init-0xc3>
 3d9:	5f                   	pop    %rdi
 3da:	5f                   	pop    %rdi
 3db:	00 5f 49             	add    %bl,0x49(%rdi)
 3de:	54                   	push   %rsp
 3df:	4d 5f                	rex.WRB pop %r15
 3e1:	72 65                	jb     448 <_init-0xc8>
 3e3:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 3ea:	4d 
 3eb:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 3ed:	6f                   	outsl  %ds:(%rsi),(%dx)
 3ee:	6e                   	outsb  %ds:(%rsi),(%dx)
 3ef:	65 54                	gs push %rsp
 3f1:	61                   	(bad)  
 3f2:	62                   	.byte 0x62
 3f3:	6c                   	insb   (%dx),%es:(%rdi)
 3f4:	65                   	gs
	...

Disassembly of section .gnu.version:

00000000000003f6 <.gnu.version>:
 3f6:	00 00                	add    %al,(%rax)
 3f8:	00 00                	add    %al,(%rax)
 3fa:	02 00                	add    (%rax),%al
 3fc:	00 00                	add    %al,(%rax)
 3fe:	03 00                	add    (%rax),%eax
 400:	00 00                	add    %al,(%rax)
 402:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

0000000000000408 <.gnu.version_r>:
 408:	01 00                	add    %eax,(%rax)
 40a:	02 00                	add    (%rax),%al
 40c:	01 00                	add    %eax,(%rax)
 40e:	00 00                	add    %al,(%rax)
 410:	10 00                	adc    %al,(%rax)
 412:	00 00                	add    %al,(%rax)
 414:	00 00                	add    %al,(%rax)
 416:	00 00                	add    %al,(%rax)
 418:	74 19                	je     433 <_init-0xdd>
 41a:	69 09 00 00 03 00    	imul   $0x30000,(%rcx),%ecx
 420:	39 00                	cmp    %eax,(%rax)
 422:	00 00                	add    %al,(%rax)
 424:	10 00                	adc    %al,(%rax)
 426:	00 00                	add    %al,(%rax)
 428:	75 1a                	jne    444 <_init-0xcc>
 42a:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
 430:	45 00 00             	add    %r8b,(%r8)
 433:	00 00                	add    %al,(%rax)
 435:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000000438 <.rela.dyn>:
 438:	b8 0d 20 00 00       	mov    $0x200d,%eax
 43d:	00 00                	add    %al,(%rax)
 43f:	00 08                	add    %cl,(%rax)
 441:	00 00                	add    %al,(%rax)
 443:	00 00                	add    %al,(%rax)
 445:	00 00                	add    %al,(%rax)
 447:	00 60 06             	add    %ah,0x6(%rax)
 44a:	00 00                	add    %al,(%rax)
 44c:	00 00                	add    %al,(%rax)
 44e:	00 00                	add    %al,(%rax)
 450:	c0 0d 20 00 00 00 00 	rorb   $0x0,0x20(%rip)        # 477 <_init-0x99>
 457:	00 08                	add    %cl,(%rax)
 459:	00 00                	add    %al,(%rax)
 45b:	00 00                	add    %al,(%rax)
 45d:	00 00                	add    %al,(%rax)
 45f:	00 20                	add    %ah,(%rax)
 461:	06                   	(bad)  
 462:	00 00                	add    %al,(%rax)
 464:	00 00                	add    %al,(%rax)
 466:	00 00                	add    %al,(%rax)
 468:	08 10                	or     %dl,(%rax)
 46a:	20 00                	and    %al,(%rax)
 46c:	00 00                	add    %al,(%rax)
 46e:	00 00                	add    %al,(%rax)
 470:	08 00                	or     %al,(%rax)
 472:	00 00                	add    %al,(%rax)
 474:	00 00                	add    %al,(%rax)
 476:	00 00                	add    %al,(%rax)
 478:	08 10                	or     %dl,(%rax)
 47a:	20 00                	and    %al,(%rax)
 47c:	00 00                	add    %al,(%rax)
 47e:	00 00                	add    %al,(%rax)
 480:	d8 0f                	fmuls  (%rdi)
 482:	20 00                	and    %al,(%rax)
 484:	00 00                	add    %al,(%rax)
 486:	00 00                	add    %al,(%rax)
 488:	06                   	(bad)  
 489:	00 00                	add    %al,(%rax)
 48b:	00 01                	add    %al,(%rcx)
	...
 495:	00 00                	add    %al,(%rax)
 497:	00 e0                	add    %ah,%al
 499:	0f 20 00             	mov    %cr0,%rax
 49c:	00 00                	add    %al,(%rax)
 49e:	00 00                	add    %al,(%rax)
 4a0:	06                   	(bad)  
 4a1:	00 00                	add    %al,(%rax)
 4a3:	00 02                	add    %al,(%rdx)
	...
 4ad:	00 00                	add    %al,(%rax)
 4af:	00 e8                	add    %ch,%al
 4b1:	0f 20 00             	mov    %cr0,%rax
 4b4:	00 00                	add    %al,(%rax)
 4b6:	00 00                	add    %al,(%rax)
 4b8:	06                   	(bad)  
 4b9:	00 00                	add    %al,(%rax)
 4bb:	00 03                	add    %al,(%rbx)
	...
 4c5:	00 00                	add    %al,(%rax)
 4c7:	00 f0                	add    %dh,%al
 4c9:	0f 20 00             	mov    %cr0,%rax
 4cc:	00 00                	add    %al,(%rax)
 4ce:	00 00                	add    %al,(%rax)
 4d0:	06                   	(bad)  
 4d1:	00 00                	add    %al,(%rax)
 4d3:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 4d9 <_init-0x37>
 4d9:	00 00                	add    %al,(%rax)
 4db:	00 00                	add    %al,(%rax)
 4dd:	00 00                	add    %al,(%rax)
 4df:	00 f8                	add    %bh,%al
 4e1:	0f 20 00             	mov    %cr0,%rax
 4e4:	00 00                	add    %al,(%rax)
 4e6:	00 00                	add    %al,(%rax)
 4e8:	06                   	(bad)  
 4e9:	00 00                	add    %al,(%rax)
 4eb:	00 06                	add    %al,(%rsi)
	...

Disassembly of section .rela.plt:

00000000000004f8 <.rela.plt>:
 4f8:	d0 0f                	rorb   (%rdi)
 4fa:	20 00                	and    %al,(%rax)
 4fc:	00 00                	add    %al,(%rax)
 4fe:	00 00                	add    %al,(%rax)
 500:	07                   	(bad)  
 501:	00 00                	add    %al,(%rax)
 503:	00 04 00             	add    %al,(%rax,%rax,1)
	...

Disassembly of section .init:

0000000000000510 <_init>:
 510:	48 83 ec 08          	sub    $0x8,%rsp
 514:	48 8b 05 cd 0a 20 00 	mov    0x200acd(%rip),%rax        # 200fe8 <__gmon_start__>
 51b:	48 85 c0             	test   %rax,%rax
 51e:	74 02                	je     522 <_init+0x12>
 520:	ff d0                	callq  *%rax
 522:	48 83 c4 08          	add    $0x8,%rsp
 526:	c3                   	retq   

Disassembly of section .plt:

0000000000000530 <.plt>:
 530:	ff 35 8a 0a 20 00    	pushq  0x200a8a(%rip)        # 200fc0 <_GLOBAL_OFFSET_TABLE_+0x8>
 536:	ff 25 8c 0a 20 00    	jmpq   *0x200a8c(%rip)        # 200fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
 53c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000540 <__printf_chk@plt>:
 540:	ff 25 8a 0a 20 00    	jmpq   *0x200a8a(%rip)        # 200fd0 <__printf_chk@GLIBC_2.3.4>
 546:	68 00 00 00 00       	pushq  $0x0
 54b:	e9 e0 ff ff ff       	jmpq   530 <.plt>

Disassembly of section .plt.got:

0000000000000550 <__cxa_finalize@plt>:
 550:	ff 25 a2 0a 20 00    	jmpq   *0x200aa2(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 556:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000560 <_start>:
 560:	31 ed                	xor    %ebp,%ebp
 562:	49 89 d1             	mov    %rdx,%r9
 565:	5e                   	pop    %rsi
 566:	48 89 e2             	mov    %rsp,%rdx
 569:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 56d:	50                   	push   %rax
 56e:	54                   	push   %rsp
 56f:	4c 8d 05 9a 01 00 00 	lea    0x19a(%rip),%r8        # 710 <__libc_csu_fini>
 576:	48 8d 0d 23 01 00 00 	lea    0x123(%rip),%rcx        # 6a0 <__libc_csu_init>
 57d:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 66a <main>
 584:	ff 15 56 0a 20 00    	callq  *0x200a56(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 58a:	f4                   	hlt    
 58b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000590 <deregister_tm_clones>:
 590:	48 8d 3d 79 0a 20 00 	lea    0x200a79(%rip),%rdi        # 201010 <__TMC_END__>
 597:	55                   	push   %rbp
 598:	48 8d 05 71 0a 20 00 	lea    0x200a71(%rip),%rax        # 201010 <__TMC_END__>
 59f:	48 39 f8             	cmp    %rdi,%rax
 5a2:	48 89 e5             	mov    %rsp,%rbp
 5a5:	74 19                	je     5c0 <deregister_tm_clones+0x30>
 5a7:	48 8b 05 2a 0a 20 00 	mov    0x200a2a(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 5ae:	48 85 c0             	test   %rax,%rax
 5b1:	74 0d                	je     5c0 <deregister_tm_clones+0x30>
 5b3:	5d                   	pop    %rbp
 5b4:	ff e0                	jmpq   *%rax
 5b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 5bd:	00 00 00 
 5c0:	5d                   	pop    %rbp
 5c1:	c3                   	retq   
 5c2:	0f 1f 40 00          	nopl   0x0(%rax)
 5c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 5cd:	00 00 00 

00000000000005d0 <register_tm_clones>:
 5d0:	48 8d 3d 39 0a 20 00 	lea    0x200a39(%rip),%rdi        # 201010 <__TMC_END__>
 5d7:	48 8d 35 32 0a 20 00 	lea    0x200a32(%rip),%rsi        # 201010 <__TMC_END__>
 5de:	55                   	push   %rbp
 5df:	48 29 fe             	sub    %rdi,%rsi
 5e2:	48 89 e5             	mov    %rsp,%rbp
 5e5:	48 c1 fe 03          	sar    $0x3,%rsi
 5e9:	48 89 f0             	mov    %rsi,%rax
 5ec:	48 c1 e8 3f          	shr    $0x3f,%rax
 5f0:	48 01 c6             	add    %rax,%rsi
 5f3:	48 d1 fe             	sar    %rsi
 5f6:	74 18                	je     610 <register_tm_clones+0x40>
 5f8:	48 8b 05 f1 09 20 00 	mov    0x2009f1(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 5ff:	48 85 c0             	test   %rax,%rax
 602:	74 0c                	je     610 <register_tm_clones+0x40>
 604:	5d                   	pop    %rbp
 605:	ff e0                	jmpq   *%rax
 607:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 60e:	00 00 
 610:	5d                   	pop    %rbp
 611:	c3                   	retq   
 612:	0f 1f 40 00          	nopl   0x0(%rax)
 616:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 61d:	00 00 00 

0000000000000620 <__do_global_dtors_aux>:
 620:	80 3d e9 09 20 00 00 	cmpb   $0x0,0x2009e9(%rip)        # 201010 <__TMC_END__>
 627:	75 2f                	jne    658 <__do_global_dtors_aux+0x38>
 629:	48 83 3d c7 09 20 00 	cmpq   $0x0,0x2009c7(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 630:	00 
 631:	55                   	push   %rbp
 632:	48 89 e5             	mov    %rsp,%rbp
 635:	74 0c                	je     643 <__do_global_dtors_aux+0x23>
 637:	48 8b 3d ca 09 20 00 	mov    0x2009ca(%rip),%rdi        # 201008 <__dso_handle>
 63e:	e8 0d ff ff ff       	callq  550 <__cxa_finalize@plt>
 643:	e8 48 ff ff ff       	callq  590 <deregister_tm_clones>
 648:	c6 05 c1 09 20 00 01 	movb   $0x1,0x2009c1(%rip)        # 201010 <__TMC_END__>
 64f:	5d                   	pop    %rbp
 650:	c3                   	retq   
 651:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 658:	f3 c3                	repz retq 
 65a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000660 <frame_dummy>:
 660:	55                   	push   %rbp
 661:	48 89 e5             	mov    %rsp,%rbp
 664:	5d                   	pop    %rbp
 665:	e9 66 ff ff ff       	jmpq   5d0 <register_tm_clones>

000000000000066a <main>:
 66a:	48 83 ec 08          	sub    $0x8,%rsp
 66e:	ba 01 00 00 00       	mov    $0x1,%edx
 673:	48 8d 35 aa 00 00 00 	lea    0xaa(%rip),%rsi        # 724 <_IO_stdin_used+0x4>
 67a:	bf 01 00 00 00       	mov    $0x1,%edi
 67f:	b8 00 00 00 00       	mov    $0x0,%eax
 684:	e8 b7 fe ff ff       	callq  540 <__printf_chk@plt>
 689:	b8 00 00 00 00       	mov    $0x0,%eax
 68e:	48 83 c4 08          	add    $0x8,%rsp
 692:	c3                   	retq   
 693:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 69a:	00 00 00 
 69d:	0f 1f 00             	nopl   (%rax)

00000000000006a0 <__libc_csu_init>:
 6a0:	41 57                	push   %r15
 6a2:	41 56                	push   %r14
 6a4:	49 89 d7             	mov    %rdx,%r15
 6a7:	41 55                	push   %r13
 6a9:	41 54                	push   %r12
 6ab:	4c 8d 25 06 07 20 00 	lea    0x200706(%rip),%r12        # 200db8 <__frame_dummy_init_array_entry>
 6b2:	55                   	push   %rbp
 6b3:	48 8d 2d 06 07 20 00 	lea    0x200706(%rip),%rbp        # 200dc0 <__init_array_end>
 6ba:	53                   	push   %rbx
 6bb:	41 89 fd             	mov    %edi,%r13d
 6be:	49 89 f6             	mov    %rsi,%r14
 6c1:	4c 29 e5             	sub    %r12,%rbp
 6c4:	48 83 ec 08          	sub    $0x8,%rsp
 6c8:	48 c1 fd 03          	sar    $0x3,%rbp
 6cc:	e8 3f fe ff ff       	callq  510 <_init>
 6d1:	48 85 ed             	test   %rbp,%rbp
 6d4:	74 20                	je     6f6 <__libc_csu_init+0x56>
 6d6:	31 db                	xor    %ebx,%ebx
 6d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 6df:	00 
 6e0:	4c 89 fa             	mov    %r15,%rdx
 6e3:	4c 89 f6             	mov    %r14,%rsi
 6e6:	44 89 ef             	mov    %r13d,%edi
 6e9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 6ed:	48 83 c3 01          	add    $0x1,%rbx
 6f1:	48 39 dd             	cmp    %rbx,%rbp
 6f4:	75 ea                	jne    6e0 <__libc_csu_init+0x40>
 6f6:	48 83 c4 08          	add    $0x8,%rsp
 6fa:	5b                   	pop    %rbx
 6fb:	5d                   	pop    %rbp
 6fc:	41 5c                	pop    %r12
 6fe:	41 5d                	pop    %r13
 700:	41 5e                	pop    %r14
 702:	41 5f                	pop    %r15
 704:	c3                   	retq   
 705:	90                   	nop
 706:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 70d:	00 00 00 

0000000000000710 <__libc_csu_fini>:
 710:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000714 <_fini>:
 714:	48 83 ec 08          	sub    $0x8,%rsp
 718:	48 83 c4 08          	add    $0x8,%rsp
 71c:	c3                   	retq   

Disassembly of section .rodata:

0000000000000720 <_IO_stdin_used>:
 720:	01 00                	add    %eax,(%rax)
 722:	02 00                	add    (%rax),%al
 724:	48                   	rex.W
 725:	65 6c                	gs insb (%dx),%es:(%rdi)
 727:	6c                   	insb   (%dx),%es:(%rdi)
 728:	6f                   	outsl  %ds:(%rsi),(%dx)
 729:	2c 20                	sub    $0x20,%al
 72b:	57                   	push   %rdi
 72c:	6f                   	outsl  %ds:(%rsi),(%dx)
 72d:	72 6c                	jb     79b <__GNU_EH_FRAME_HDR+0x5f>
 72f:	64 20 66 72          	and    %ah,%fs:0x72(%rsi)
 733:	6f                   	outsl  %ds:(%rsi),(%dx)
 734:	6d                   	insl   (%dx),%es:(%rdi)
 735:	20                   	.byte 0x20
 736:	25                   	.byte 0x25
 737:	64 0a 00             	or     %fs:(%rax),%al

Disassembly of section .eh_frame_hdr:

000000000000073c <__GNU_EH_FRAME_HDR>:
 73c:	01 1b                	add    %ebx,(%rbx)
 73e:	03 3b                	add    (%rbx),%edi
 740:	38 00                	cmp    %al,(%rax)
 742:	00 00                	add    %al,(%rax)
 744:	06                   	(bad)  
 745:	00 00                	add    %al,(%rax)
 747:	00 f4                	add    %dh,%ah
 749:	fd                   	std    
 74a:	ff                   	(bad)  
 74b:	ff 84 00 00 00 14 fe 	incl   -0x1ec0000(%rax,%rax,1)
 752:	ff                   	(bad)  
 753:	ff ac 00 00 00 24 fe 	ljmp   *-0x1dc0000(%rax,%rax,1)
 75a:	ff                   	(bad)  
 75b:	ff 54 00 00          	callq  *0x0(%rax,%rax,1)
 75f:	00 2e                	add    %ch,(%rsi)
 761:	ff                   	(bad)  
 762:	ff                   	(bad)  
 763:	ff c4                	inc    %esp
 765:	00 00                	add    %al,(%rax)
 767:	00 64 ff ff          	add    %ah,-0x1(%rdi,%rdi,8)
 76b:	ff                   	(bad)  
 76c:	dc 00                	faddl  (%rax)
 76e:	00 00                	add    %al,(%rax)
 770:	d4                   	(bad)  
 771:	ff                   	(bad)  
 772:	ff                   	(bad)  
 773:	ff 24 01             	jmpq   *(%rcx,%rax,1)
	...

Disassembly of section .eh_frame:

0000000000000778 <__FRAME_END__-0xfc>:
 778:	14 00                	adc    $0x0,%al
 77a:	00 00                	add    %al,(%rax)
 77c:	00 00                	add    %al,(%rax)
 77e:	00 00                	add    %al,(%rax)
 780:	01 7a 52             	add    %edi,0x52(%rdx)
 783:	00 01                	add    %al,(%rcx)
 785:	78 10                	js     797 <__GNU_EH_FRAME_HDR+0x5b>
 787:	01 1b                	add    %ebx,(%rbx)
 789:	0c 07                	or     $0x7,%al
 78b:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
 791:	00 00                	add    %al,(%rax)
 793:	00 1c 00             	add    %bl,(%rax,%rax,1)
 796:	00 00                	add    %al,(%rax)
 798:	c8 fd ff ff          	enterq $0xfffd,$0xff
 79c:	2b 00                	sub    (%rax),%eax
	...
 7a6:	00 00                	add    %al,(%rax)
 7a8:	14 00                	adc    $0x0,%al
 7aa:	00 00                	add    %al,(%rax)
 7ac:	00 00                	add    %al,(%rax)
 7ae:	00 00                	add    %al,(%rax)
 7b0:	01 7a 52             	add    %edi,0x52(%rdx)
 7b3:	00 01                	add    %al,(%rcx)
 7b5:	78 10                	js     7c7 <__GNU_EH_FRAME_HDR+0x8b>
 7b7:	01 1b                	add    %ebx,(%rbx)
 7b9:	0c 07                	or     $0x7,%al
 7bb:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
 7c1:	00 00                	add    %al,(%rax)
 7c3:	00 1c 00             	add    %bl,(%rax,%rax,1)
 7c6:	00 00                	add    %al,(%rax)
 7c8:	68 fd ff ff 20       	pushq  $0x20fffffd
 7cd:	00 00                	add    %al,(%rax)
 7cf:	00 00                	add    %al,(%rax)
 7d1:	0e                   	(bad)  
 7d2:	10 46 0e             	adc    %al,0xe(%rsi)
 7d5:	18 4a 0f             	sbb    %cl,0xf(%rdx)
 7d8:	0b 77 08             	or     0x8(%rdi),%esi
 7db:	80 00 3f             	addb   $0x3f,(%rax)
 7de:	1a 3b                	sbb    (%rbx),%bh
 7e0:	2a 33                	sub    (%rbx),%dh
 7e2:	24 22                	and    $0x22,%al
 7e4:	00 00                	add    %al,(%rax)
 7e6:	00 00                	add    %al,(%rax)
 7e8:	14 00                	adc    $0x0,%al
 7ea:	00 00                	add    %al,(%rax)
 7ec:	44 00 00             	add    %r8b,(%rax)
 7ef:	00 60 fd             	add    %ah,-0x3(%rax)
 7f2:	ff                   	(bad)  
 7f3:	ff 08                	decl   (%rax)
	...
 7fd:	00 00                	add    %al,(%rax)
 7ff:	00 14 00             	add    %dl,(%rax,%rax,1)
 802:	00 00                	add    %al,(%rax)
 804:	5c                   	pop    %rsp
 805:	00 00                	add    %al,(%rax)
 807:	00 62 fe             	add    %ah,-0x2(%rdx)
 80a:	ff                   	(bad)  
 80b:	ff 29                	ljmp   *(%rcx)
 80d:	00 00                	add    %al,(%rax)
 80f:	00 00                	add    %al,(%rax)
 811:	44 0e                	rex.R (bad) 
 813:	10 64 0e 08          	adc    %ah,0x8(%rsi,%rcx,1)
 817:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
 81b:	00 74 00 00          	add    %dh,0x0(%rax,%rax,1)
 81f:	00 80 fe ff ff 65    	add    %al,0x65fffffe(%rax)
 825:	00 00                	add    %al,(%rax)
 827:	00 00                	add    %al,(%rax)
 829:	42 0e                	rex.X (bad) 
 82b:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
 831:	8e 03                	mov    (%rbx),%es
 833:	45 0e                	rex.RB (bad) 
 835:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
 83b:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86301689 <_end+0xffffffff86100671>
 841:	06                   	(bad)  
 842:	48 0e                	rex.W (bad) 
 844:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
 84a:	72 0e                	jb     85a <__GNU_EH_FRAME_HDR+0x11e>
 84c:	38 41 0e             	cmp    %al,0xe(%rcx)
 84f:	30 41 0e             	xor    %al,0xe(%rcx)
 852:	28 42 0e             	sub    %al,0xe(%rdx)
 855:	20 42 0e             	and    %al,0xe(%rdx)
 858:	18 42 0e             	sbb    %al,0xe(%rdx)
 85b:	10 42 0e             	adc    %al,0xe(%rdx)
 85e:	08 00                	or     %al,(%rax)
 860:	10 00                	adc    %al,(%rax)
 862:	00 00                	add    %al,(%rax)
 864:	bc 00 00 00 a8       	mov    $0xa8000000,%esp
 869:	fe                   	(bad)  
 86a:	ff                   	(bad)  
 86b:	ff 02                	incl   (%rdx)
 86d:	00 00                	add    %al,(%rax)
 86f:	00 00                	add    %al,(%rax)
 871:	00 00                	add    %al,(%rax)
	...

0000000000000874 <__FRAME_END__>:
 874:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000200db8 <__frame_dummy_init_array_entry>:
  200db8:	60                   	(bad)  
  200db9:	06                   	(bad)  
  200dba:	00 00                	add    %al,(%rax)
  200dbc:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000200dc0 <__do_global_dtors_aux_fini_array_entry>:
  200dc0:	20 06                	and    %al,(%rsi)
  200dc2:	00 00                	add    %al,(%rax)
  200dc4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000200dc8 <_DYNAMIC>:
  200dc8:	01 00                	add    %eax,(%rax)
  200dca:	00 00                	add    %al,(%rax)
  200dcc:	00 00                	add    %al,(%rax)
  200dce:	00 00                	add    %al,(%rax)
  200dd0:	01 00                	add    %eax,(%rax)
  200dd2:	00 00                	add    %al,(%rax)
  200dd4:	00 00                	add    %al,(%rax)
  200dd6:	00 00                	add    %al,(%rax)
  200dd8:	0c 00                	or     $0x0,%al
  200dda:	00 00                	add    %al,(%rax)
  200ddc:	00 00                	add    %al,(%rax)
  200dde:	00 00                	add    %al,(%rax)
  200de0:	10 05 00 00 00 00    	adc    %al,0x0(%rip)        # 200de6 <_DYNAMIC+0x1e>
  200de6:	00 00                	add    %al,(%rax)
  200de8:	0d 00 00 00 00       	or     $0x0,%eax
  200ded:	00 00                	add    %al,(%rax)
  200def:	00 14 07             	add    %dl,(%rdi,%rax,1)
  200df2:	00 00                	add    %al,(%rax)
  200df4:	00 00                	add    %al,(%rax)
  200df6:	00 00                	add    %al,(%rax)
  200df8:	19 00                	sbb    %eax,(%rax)
  200dfa:	00 00                	add    %al,(%rax)
  200dfc:	00 00                	add    %al,(%rax)
  200dfe:	00 00                	add    %al,(%rax)
  200e00:	b8 0d 20 00 00       	mov    $0x200d,%eax
  200e05:	00 00                	add    %al,(%rax)
  200e07:	00 1b                	add    %bl,(%rbx)
  200e09:	00 00                	add    %al,(%rax)
  200e0b:	00 00                	add    %al,(%rax)
  200e0d:	00 00                	add    %al,(%rax)
  200e0f:	00 08                	add    %cl,(%rax)
  200e11:	00 00                	add    %al,(%rax)
  200e13:	00 00                	add    %al,(%rax)
  200e15:	00 00                	add    %al,(%rax)
  200e17:	00 1a                	add    %bl,(%rdx)
  200e19:	00 00                	add    %al,(%rax)
  200e1b:	00 00                	add    %al,(%rax)
  200e1d:	00 00                	add    %al,(%rax)
  200e1f:	00 c0                	add    %al,%al
  200e21:	0d 20 00 00 00       	or     $0x20,%eax
  200e26:	00 00                	add    %al,(%rax)
  200e28:	1c 00                	sbb    $0x0,%al
  200e2a:	00 00                	add    %al,(%rax)
  200e2c:	00 00                	add    %al,(%rax)
  200e2e:	00 00                	add    %al,(%rax)
  200e30:	08 00                	or     %al,(%rax)
  200e32:	00 00                	add    %al,(%rax)
  200e34:	00 00                	add    %al,(%rax)
  200e36:	00 00                	add    %al,(%rax)
  200e38:	f5                   	cmc    
  200e39:	fe                   	(bad)  
  200e3a:	ff 6f 00             	ljmp   *0x0(%rdi)
  200e3d:	00 00                	add    %al,(%rax)
  200e3f:	00 98 02 00 00 00    	add    %bl,0x2(%rax)
  200e45:	00 00                	add    %al,(%rax)
  200e47:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 200e4d <_DYNAMIC+0x85>
  200e4d:	00 00                	add    %al,(%rax)
  200e4f:	00 60 03             	add    %ah,0x3(%rax)
  200e52:	00 00                	add    %al,(%rax)
  200e54:	00 00                	add    %al,(%rax)
  200e56:	00 00                	add    %al,(%rax)
  200e58:	06                   	(bad)  
  200e59:	00 00                	add    %al,(%rax)
  200e5b:	00 00                	add    %al,(%rax)
  200e5d:	00 00                	add    %al,(%rax)
  200e5f:	00 b8 02 00 00 00    	add    %bh,0x2(%rax)
  200e65:	00 00                	add    %al,(%rax)
  200e67:	00 0a                	add    %cl,(%rdx)
  200e69:	00 00                	add    %al,(%rax)
  200e6b:	00 00                	add    %al,(%rax)
  200e6d:	00 00                	add    %al,(%rax)
  200e6f:	00 96 00 00 00 00    	add    %dl,0x0(%rsi)
  200e75:	00 00                	add    %al,(%rax)
  200e77:	00 0b                	add    %cl,(%rbx)
  200e79:	00 00                	add    %al,(%rax)
  200e7b:	00 00                	add    %al,(%rax)
  200e7d:	00 00                	add    %al,(%rax)
  200e7f:	00 18                	add    %bl,(%rax)
  200e81:	00 00                	add    %al,(%rax)
  200e83:	00 00                	add    %al,(%rax)
  200e85:	00 00                	add    %al,(%rax)
  200e87:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 200e8d <_DYNAMIC+0xc5>
	...
  200e95:	00 00                	add    %al,(%rax)
  200e97:	00 03                	add    %al,(%rbx)
  200e99:	00 00                	add    %al,(%rax)
  200e9b:	00 00                	add    %al,(%rax)
  200e9d:	00 00                	add    %al,(%rax)
  200e9f:	00 b8 0f 20 00 00    	add    %bh,0x200f(%rax)
  200ea5:	00 00                	add    %al,(%rax)
  200ea7:	00 02                	add    %al,(%rdx)
  200ea9:	00 00                	add    %al,(%rax)
  200eab:	00 00                	add    %al,(%rax)
  200ead:	00 00                	add    %al,(%rax)
  200eaf:	00 18                	add    %bl,(%rax)
  200eb1:	00 00                	add    %al,(%rax)
  200eb3:	00 00                	add    %al,(%rax)
  200eb5:	00 00                	add    %al,(%rax)
  200eb7:	00 14 00             	add    %dl,(%rax,%rax,1)
  200eba:	00 00                	add    %al,(%rax)
  200ebc:	00 00                	add    %al,(%rax)
  200ebe:	00 00                	add    %al,(%rax)
  200ec0:	07                   	(bad)  
  200ec1:	00 00                	add    %al,(%rax)
  200ec3:	00 00                	add    %al,(%rax)
  200ec5:	00 00                	add    %al,(%rax)
  200ec7:	00 17                	add    %dl,(%rdi)
  200ec9:	00 00                	add    %al,(%rax)
  200ecb:	00 00                	add    %al,(%rax)
  200ecd:	00 00                	add    %al,(%rax)
  200ecf:	00 f8                	add    %bh,%al
  200ed1:	04 00                	add    $0x0,%al
  200ed3:	00 00                	add    %al,(%rax)
  200ed5:	00 00                	add    %al,(%rax)
  200ed7:	00 07                	add    %al,(%rdi)
  200ed9:	00 00                	add    %al,(%rax)
  200edb:	00 00                	add    %al,(%rax)
  200edd:	00 00                	add    %al,(%rax)
  200edf:	00 38                	add    %bh,(%rax)
  200ee1:	04 00                	add    $0x0,%al
  200ee3:	00 00                	add    %al,(%rax)
  200ee5:	00 00                	add    %al,(%rax)
  200ee7:	00 08                	add    %cl,(%rax)
  200ee9:	00 00                	add    %al,(%rax)
  200eeb:	00 00                	add    %al,(%rax)
  200eed:	00 00                	add    %al,(%rax)
  200eef:	00 c0                	add    %al,%al
  200ef1:	00 00                	add    %al,(%rax)
  200ef3:	00 00                	add    %al,(%rax)
  200ef5:	00 00                	add    %al,(%rax)
  200ef7:	00 09                	add    %cl,(%rcx)
  200ef9:	00 00                	add    %al,(%rax)
  200efb:	00 00                	add    %al,(%rax)
  200efd:	00 00                	add    %al,(%rax)
  200eff:	00 18                	add    %bl,(%rax)
  200f01:	00 00                	add    %al,(%rax)
  200f03:	00 00                	add    %al,(%rax)
  200f05:	00 00                	add    %al,(%rax)
  200f07:	00 1e                	add    %bl,(%rsi)
  200f09:	00 00                	add    %al,(%rax)
  200f0b:	00 00                	add    %al,(%rax)
  200f0d:	00 00                	add    %al,(%rax)
  200f0f:	00 08                	add    %cl,(%rax)
  200f11:	00 00                	add    %al,(%rax)
  200f13:	00 00                	add    %al,(%rax)
  200f15:	00 00                	add    %al,(%rax)
  200f17:	00 fb                	add    %bh,%bl
  200f19:	ff                   	(bad)  
  200f1a:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f1d:	00 00                	add    %al,(%rax)
  200f1f:	00 01                	add    %al,(%rcx)
  200f21:	00 00                	add    %al,(%rax)
  200f23:	08 00                	or     %al,(%rax)
  200f25:	00 00                	add    %al,(%rax)
  200f27:	00 fe                	add    %bh,%dh
  200f29:	ff                   	(bad)  
  200f2a:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f2d:	00 00                	add    %al,(%rax)
  200f2f:	00 08                	add    %cl,(%rax)
  200f31:	04 00                	add    $0x0,%al
  200f33:	00 00                	add    %al,(%rax)
  200f35:	00 00                	add    %al,(%rax)
  200f37:	00 ff                	add    %bh,%bh
  200f39:	ff                   	(bad)  
  200f3a:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f3d:	00 00                	add    %al,(%rax)
  200f3f:	00 01                	add    %al,(%rcx)
  200f41:	00 00                	add    %al,(%rax)
  200f43:	00 00                	add    %al,(%rax)
  200f45:	00 00                	add    %al,(%rax)
  200f47:	00 f0                	add    %dh,%al
  200f49:	ff                   	(bad)  
  200f4a:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f4d:	00 00                	add    %al,(%rax)
  200f4f:	00 f6                	add    %dh,%dh
  200f51:	03 00                	add    (%rax),%eax
  200f53:	00 00                	add    %al,(%rax)
  200f55:	00 00                	add    %al,(%rax)
  200f57:	00 f9                	add    %bh,%cl
  200f59:	ff                   	(bad)  
  200f5a:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f5d:	00 00                	add    %al,(%rax)
  200f5f:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .got:

0000000000200fb8 <_GLOBAL_OFFSET_TABLE_>:
  200fb8:	c8 0d 20 00          	enterq $0x200d,$0x0
	...
  200fd0:	46 05 00 00 00 00    	rex.RX add $0x0,%eax
	...

Disassembly of section .data:

0000000000201000 <__data_start>:
	...

0000000000201008 <__dso_handle>:
  201008:	08 10                	or     %dl,(%rax)
  20100a:	20 00                	and    %al,(%rax)
  20100c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .bss:

0000000000201010 <__bss_start>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <_init-0x498>
   a:	74 75                	je     81 <_init-0x48f>
   c:	20 37                	and    %dh,(%rdi)
   e:	2e 35 2e 30 2d 33    	cs xor $0x332d302e,%eax
  14:	75 62                	jne    78 <_init-0x498>
  16:	75 6e                	jne    86 <_init-0x48a>
  18:	74 75                	je     8f <_init-0x481>
  1a:	31 7e 31             	xor    %edi,0x31(%rsi)
  1d:	38 2e                	cmp    %ch,(%rsi)
  1f:	30 34 29             	xor    %dh,(%rcx,%rbp,1)
  22:	20 37                	and    %dh,(%rdi)
  24:	2e                   	cs
  25:	35                   	.byte 0x35
  26:	2e 30 00             	xor    %al,%cs:(%rax)
