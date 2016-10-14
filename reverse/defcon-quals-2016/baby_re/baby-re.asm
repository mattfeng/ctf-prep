
baby-re:     file format elf64-x86-64


Disassembly of section .init:

0000000000400530 <_init>:
  400530:	48 83 ec 08          	sub    rsp,0x8
  400534:	48 8b 05 bd 2a 20 00 	mov    rax,QWORD PTR [rip+0x202abd]        # 602ff8 <_DYNAMIC+0x1d0>
  40053b:	48 85 c0             	test   rax,rax
  40053e:	74 05                	je     400545 <_init+0x15>
  400540:	e8 7b 00 00 00       	call   4005c0 <__isoc99_scanf@plt+0x10>
  400545:	48 83 c4 08          	add    rsp,0x8
  400549:	c3                   	ret    

Disassembly of section .plt:

0000000000400550 <puts@plt-0x10>:
  400550:	ff 35 b2 2a 20 00    	push   QWORD PTR [rip+0x202ab2]        # 603008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400556:	ff 25 b4 2a 20 00    	jmp    QWORD PTR [rip+0x202ab4]        # 603010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40055c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400560 <puts@plt>:
  400560:	ff 25 b2 2a 20 00    	jmp    QWORD PTR [rip+0x202ab2]        # 603018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400566:	68 00 00 00 00       	push   0x0
  40056b:	e9 e0 ff ff ff       	jmp    400550 <_init+0x20>

0000000000400570 <__stack_chk_fail@plt>:
  400570:	ff 25 aa 2a 20 00    	jmp    QWORD PTR [rip+0x202aaa]        # 603020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400576:	68 01 00 00 00       	push   0x1
  40057b:	e9 d0 ff ff ff       	jmp    400550 <_init+0x20>

0000000000400580 <printf@plt>:
  400580:	ff 25 a2 2a 20 00    	jmp    QWORD PTR [rip+0x202aa2]        # 603028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400586:	68 02 00 00 00       	push   0x2
  40058b:	e9 c0 ff ff ff       	jmp    400550 <_init+0x20>

0000000000400590 <__libc_start_main@plt>:
  400590:	ff 25 9a 2a 20 00    	jmp    QWORD PTR [rip+0x202a9a]        # 603030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400596:	68 03 00 00 00       	push   0x3
  40059b:	e9 b0 ff ff ff       	jmp    400550 <_init+0x20>

00000000004005a0 <fflush@plt>:
  4005a0:	ff 25 92 2a 20 00    	jmp    QWORD PTR [rip+0x202a92]        # 603038 <_GLOBAL_OFFSET_TABLE_+0x38>
  4005a6:	68 04 00 00 00       	push   0x4
  4005ab:	e9 a0 ff ff ff       	jmp    400550 <_init+0x20>

00000000004005b0 <__isoc99_scanf@plt>:
  4005b0:	ff 25 8a 2a 20 00    	jmp    QWORD PTR [rip+0x202a8a]        # 603040 <_GLOBAL_OFFSET_TABLE_+0x40>
  4005b6:	68 05 00 00 00       	push   0x5
  4005bb:	e9 90 ff ff ff       	jmp    400550 <_init+0x20>

Disassembly of section .plt.got:

00000000004005c0 <.plt.got>:
  4005c0:	ff 25 32 2a 20 00    	jmp    QWORD PTR [rip+0x202a32]        # 602ff8 <_DYNAMIC+0x1d0>
  4005c6:	66 90                	xchg   ax,ax

Disassembly of section .text:

00000000004005d0 <_start>:
  4005d0:	31 ed                	xor    ebp,ebp
  4005d2:	49 89 d1             	mov    r9,rdx
  4005d5:	5e                   	pop    rsi
  4005d6:	48 89 e2             	mov    rdx,rsp
  4005d9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  4005dd:	50                   	push   rax
  4005de:	54                   	push   rsp
  4005df:	49 c7 c0 f0 29 40 00 	mov    r8,0x4029f0
  4005e6:	48 c7 c1 80 29 40 00 	mov    rcx,0x402980
  4005ed:	48 c7 c7 e7 25 40 00 	mov    rdi,0x4025e7
  4005f4:	e8 97 ff ff ff       	call   400590 <__libc_start_main@plt>
  4005f9:	f4                   	hlt    
  4005fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400600 <deregister_tm_clones>:
  400600:	b8 5f 30 60 00       	mov    eax,0x60305f
  400605:	55                   	push   rbp
  400606:	48 2d 58 30 60 00    	sub    rax,0x603058
  40060c:	48 83 f8 0e          	cmp    rax,0xe
  400610:	48 89 e5             	mov    rbp,rsp
  400613:	76 1b                	jbe    400630 <deregister_tm_clones+0x30>
  400615:	b8 00 00 00 00       	mov    eax,0x0
  40061a:	48 85 c0             	test   rax,rax
  40061d:	74 11                	je     400630 <deregister_tm_clones+0x30>
  40061f:	5d                   	pop    rbp
  400620:	bf 58 30 60 00       	mov    edi,0x603058
  400625:	ff e0                	jmp    rax
  400627:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40062e:	00 00 
  400630:	5d                   	pop    rbp
  400631:	c3                   	ret    
  400632:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400636:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40063d:	00 00 00 

0000000000400640 <register_tm_clones>:
  400640:	be 58 30 60 00       	mov    esi,0x603058
  400645:	55                   	push   rbp
  400646:	48 81 ee 58 30 60 00 	sub    rsi,0x603058
  40064d:	48 c1 fe 03          	sar    rsi,0x3
  400651:	48 89 e5             	mov    rbp,rsp
  400654:	48 89 f0             	mov    rax,rsi
  400657:	48 c1 e8 3f          	shr    rax,0x3f
  40065b:	48 01 c6             	add    rsi,rax
  40065e:	48 d1 fe             	sar    rsi,1
  400661:	74 15                	je     400678 <register_tm_clones+0x38>
  400663:	b8 00 00 00 00       	mov    eax,0x0
  400668:	48 85 c0             	test   rax,rax
  40066b:	74 0b                	je     400678 <register_tm_clones+0x38>
  40066d:	5d                   	pop    rbp
  40066e:	bf 58 30 60 00       	mov    edi,0x603058
  400673:	ff e0                	jmp    rax
  400675:	0f 1f 00             	nop    DWORD PTR [rax]
  400678:	5d                   	pop    rbp
  400679:	c3                   	ret    
  40067a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400680 <__do_global_dtors_aux>:
  400680:	80 3d d9 29 20 00 00 	cmp    BYTE PTR [rip+0x2029d9],0x0        # 603060 <completed.7585>
  400687:	75 11                	jne    40069a <__do_global_dtors_aux+0x1a>
  400689:	55                   	push   rbp
  40068a:	48 89 e5             	mov    rbp,rsp
  40068d:	e8 6e ff ff ff       	call   400600 <deregister_tm_clones>
  400692:	5d                   	pop    rbp
  400693:	c6 05 c6 29 20 00 01 	mov    BYTE PTR [rip+0x2029c6],0x1        # 603060 <completed.7585>
  40069a:	f3 c3                	repz ret 
  40069c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004006a0 <frame_dummy>:
  4006a0:	bf 20 2e 60 00       	mov    edi,0x602e20
  4006a5:	48 83 3f 00          	cmp    QWORD PTR [rdi],0x0
  4006a9:	75 05                	jne    4006b0 <frame_dummy+0x10>
  4006ab:	eb 93                	jmp    400640 <register_tm_clones>
  4006ad:	0f 1f 00             	nop    DWORD PTR [rax]
  4006b0:	b8 00 00 00 00       	mov    eax,0x0
  4006b5:	48 85 c0             	test   rax,rax
  4006b8:	74 f1                	je     4006ab <frame_dummy+0xb>
  4006ba:	55                   	push   rbp
  4006bb:	48 89 e5             	mov    rbp,rsp
  4006be:	ff d0                	call   rax
  4006c0:	5d                   	pop    rbp
  4006c1:	e9 7a ff ff ff       	jmp    400640 <register_tm_clones>

00000000004006c6 <CheckSolution>:
  4006c6:	55                   	push   rbp
  4006c7:	48 89 e5             	mov    rbp,rsp
  4006ca:	48 81 ec c0 02 00 00 	sub    rsp,0x2c0
  4006d1:	48 89 bd 48 fd ff ff 	mov    QWORD PTR [rbp-0x2b8],rdi
  4006d8:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4006df:	00 00 
  4006e1:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4006e5:	31 c0                	xor    eax,eax
  4006e7:	eb 02                	jmp    4006eb <CheckSolution+0x25>
  4006e9:	28 02                	sub    BYTE PTR [rdx],al
  4006eb:	c7 85 50 fd ff ff 6c 	mov    DWORD PTR [rbp-0x2b0],0x926c
  4006f2:	92 00 00 
  4006f5:	8b 85 50 fd ff ff    	mov    eax,DWORD PTR [rbp-0x2b0]
  4006fb:	83 f0 01             	xor    eax,0x1
  4006fe:	89 85 50 fd ff ff    	mov    DWORD PTR [rbp-0x2b0],eax
  400704:	c7 85 54 fd ff ff a8 	mov    DWORD PTR [rbp-0x2ac],0x2a3a8
  40070b:	a3 02 00 
  40070e:	8b 85 54 fd ff ff    	mov    eax,DWORD PTR [rbp-0x2ac]
  400714:	c1 f8 03             	sar    eax,0x3
  400717:	89 85 54 fd ff ff    	mov    DWORD PTR [rbp-0x2ac],eax
  40071d:	c7 85 58 fd ff ff 90 	mov    DWORD PTR [rbp-0x2a8],0x3a90
  400724:	3a 00 00 
  400727:	8b 85 58 fd ff ff    	mov    eax,DWORD PTR [rbp-0x2a8]
  40072d:	c1 f8 03             	sar    eax,0x3
  400730:	89 85 58 fd ff ff    	mov    DWORD PTR [rbp-0x2a8],eax
  400736:	c7 85 5c fd ff ff c1 	mov    DWORD PTR [rbp-0x2a4],0xb4c1
  40073d:	b4 00 00 
  400740:	eb 02                	jmp    400744 <CheckSolution+0x7e>
  400742:	4f d9 eb             	rex.WRXB fldpi 
  400745:	02 51 b7             	add    dl,BYTE PTR [rcx-0x49]
  400748:	c7 85 60 fd ff ff 14 	mov    DWORD PTR [rbp-0x2a0],0xc514
  40074f:	c5 00 00 
  400752:	8b 85 60 fd ff ff    	mov    eax,DWORD PTR [rbp-0x2a0]
  400758:	34 dd                	xor    al,0xdd
  40075a:	89 85 60 fd ff ff    	mov    DWORD PTR [rbp-0x2a0],eax
  400760:	c7 85 64 fd ff ff 9e 	mov    DWORD PTR [rbp-0x29c],0xa89e
  400767:	a8 00 00 
  40076a:	eb 02                	jmp    40076e <CheckSolution+0xa8>
  40076c:	b2 88                	mov    dl,0x88
  40076e:	c7 85 68 fd ff ff c8 	mov    DWORD PTR [rbp-0x298],0x1cdc8
  400775:	cd 01 00 
  400778:	8b 85 68 fd ff ff    	mov    eax,DWORD PTR [rbp-0x298]
  40077e:	c1 f8 02             	sar    eax,0x2
  400781:	89 85 68 fd ff ff    	mov    DWORD PTR [rbp-0x298],eax
  400787:	c7 85 6c fd ff ff 10 	mov    DWORD PTR [rbp-0x294],0x10010
  40078e:	00 01 00 
  400791:	8b 85 6c fd ff ff    	mov    eax,DWORD PTR [rbp-0x294]
  400797:	c1 f8 02             	sar    eax,0x2
  40079a:	89 85 6c fd ff ff    	mov    DWORD PTR [rbp-0x294],eax
  4007a0:	c7 85 70 fd ff ff 5d 	mov    DWORD PTR [rbp-0x290],0xe15d
  4007a7:	e1 00 00 
  4007aa:	eb 02                	jmp    4007ae <CheckSolution+0xe8>
  4007ac:	d9 30                	fnstenv [rax]
  4007ae:	eb 02                	jmp    4007b2 <CheckSolution+0xec>
  4007b0:	2d ce c7 85 74       	sub    eax,0x7485c7ce
  4007b5:	fd                   	std    
  4007b6:	ff                   	(bad)  
  4007b7:	ff 91 1c 00 00 8b    	call   QWORD PTR [rcx-0x74ffffe4]
  4007bd:	85 74 fd ff          	test   DWORD PTR [rbp+rdi*8-0x1],esi
  4007c1:	ff 01                	inc    DWORD PTR [rcx]
  4007c3:	c0 89 85 74 fd ff ff 	ror    BYTE PTR [rcx-0x28b7b],0xff
  4007ca:	eb 02                	jmp    4007ce <CheckSolution+0x108>
  4007cc:	5d                   	pop    rbp
  4007cd:	e2 c7                	loop   400796 <CheckSolution+0xd0>
  4007cf:	85 78 fd             	test   DWORD PTR [rax-0x3],edi
  4007d2:	ff                   	(bad)  
  4007d3:	ff 4c 52 00          	dec    DWORD PTR [rdx+rdx*2+0x0]
  4007d7:	00 8b 85 78 fd ff    	add    BYTE PTR [rbx-0x2877b],cl
  4007dd:	ff 83 f0 2e 89 85    	inc    DWORD PTR [rbx-0x7a76d110]
  4007e3:	78 fd                	js     4007e2 <CheckSolution+0x11c>
  4007e5:	ff                   	(bad)  
  4007e6:	ff c7                	inc    edi
  4007e8:	85 7c fd ff          	test   DWORD PTR [rbp+rdi*8-0x1],edi
  4007ec:	ff ae 99 00 00 eb    	jmp    FWORD PTR [rsi-0x14ffff67]
  4007f2:	02 86 20 c7 85 80    	add    al,BYTE PTR [rsi-0x7f7a38e0]
  4007f8:	fd                   	std    
  4007f9:	ff                   	(bad)  
  4007fa:	ff e5                	jmp    rbp
  4007fc:	d5                   	(bad)  
  4007fd:	00 00                	add    BYTE PTR [rax],al
  4007ff:	eb 02                	jmp    400803 <CheckSolution+0x13d>
  400801:	7b 01                	jnp    400804 <CheckSolution+0x13e>
  400803:	c7 85 84 fd ff ff 80 	mov    DWORD PTR [rbp-0x27c],0xc6f80
  40080a:	6f 0c 00 
  40080d:	8b 85 84 fd ff ff    	mov    eax,DWORD PTR [rbp-0x27c]
  400813:	c1 f8 04             	sar    eax,0x4
  400816:	89 85 84 fd ff ff    	mov    DWORD PTR [rbp-0x27c],eax
  40081c:	c7 85 88 fd ff ff 90 	mov    DWORD PTR [rbp-0x278],0x12c90
  400823:	2c 01 00 
  400826:	8b 85 88 fd ff ff    	mov    eax,DWORD PTR [rbp-0x278]
  40082c:	c1 f8 04             	sar    eax,0x4
  40082f:	89 85 88 fd ff ff    	mov    DWORD PTR [rbp-0x278],eax
  400835:	c7 85 8c fd ff ff 83 	mov    DWORD PTR [rbp-0x274],0x1783
  40083c:	17 00 00 
  40083f:	eb 02                	jmp    400843 <CheckSolution+0x17d>
  400841:	84 ea                	test   dl,ch
  400843:	c7 85 90 fd ff ff 32 	mov    DWORD PTR [rbp-0x270],0x9832
  40084a:	98 00 00 
  40084d:	eb 02                	jmp    400851 <CheckSolution+0x18b>
  40084f:	f7                   	(bad)  
  400850:	0d eb 02 6c fc       	or     eax,0xfc6c02eb
  400855:	c7 85 94 fd ff ff e5 	mov    DWORD PTR [rbp-0x26c],0x1ce5
  40085c:	1c 00 00 
  40085f:	8b 85 94 fd ff ff    	mov    eax,DWORD PTR [rbp-0x26c]
  400865:	01 c0                	add    eax,eax
  400867:	89 85 94 fd ff ff    	mov    DWORD PTR [rbp-0x26c],eax
  40086d:	eb 02                	jmp    400871 <CheckSolution+0x1ab>
  40086f:	9e                   	sahf   
  400870:	99                   	cdq    
  400871:	c7 85 98 fd ff ff 08 	mov    DWORD PTR [rbp-0x268],0x5808
  400878:	58 00 00 
  40087b:	8b 85 98 fd ff ff    	mov    eax,DWORD PTR [rbp-0x268]
  400881:	83 f0 4f             	xor    eax,0x4f
  400884:	89 85 98 fd ff ff    	mov    DWORD PTR [rbp-0x268],eax
  40088a:	c7 85 9c fd ff ff 45 	mov    DWORD PTR [rbp-0x264],0x345
  400891:	03 00 00 
  400894:	eb 02                	jmp    400898 <CheckSolution+0x1d2>
  400896:	1c 9b                	sbb    al,0x9b
  400898:	c7 85 a0 fd ff ff ee 	mov    DWORD PTR [rbp-0x260],0x11eee
  40089f:	1e 01 00 
  4008a2:	8b 85 a0 fd ff ff    	mov    eax,DWORD PTR [rbp-0x260]
  4008a8:	d1 f8                	sar    eax,1
  4008aa:	89 85 a0 fd ff ff    	mov    DWORD PTR [rbp-0x260],eax
  4008b0:	c7 85 a4 fd ff ff a0 	mov    DWORD PTR [rbp-0x25c],0xc5a0
  4008b7:	c5 00 00 
  4008ba:	eb 02                	jmp    4008be <CheckSolution+0x1f8>
  4008bc:	46 cc                	rex.RX int3 
  4008be:	c7 85 a8 fd ff ff 35 	mov    DWORD PTR [rbp-0x258],0x2e35
  4008c5:	2e 00 00 
  4008c8:	eb 02                	jmp    4008cc <CheckSolution+0x206>
  4008ca:	cd b5                	int    0xb5
  4008cc:	c7 85 ac fd ff ff 4e 	mov    DWORD PTR [rbp-0x254],0x4e4e
  4008d3:	4e 00 00 
  4008d6:	eb 02                	jmp    4008da <CheckSolution+0x214>
  4008d8:	ae                   	scas   al,BYTE PTR es:[rdi]
  4008d9:	ff c7                	inc    edi
  4008db:	85 b0 fd ff ff a0    	test   DWORD PTR [rax-0x5f000003],esi
  4008e1:	90                   	nop
  4008e2:	00 00                	add    BYTE PTR [rax],al
  4008e4:	8b 85 b0 fd ff ff    	mov    eax,DWORD PTR [rbp-0x250]
  4008ea:	c1 f8 02             	sar    eax,0x2
  4008ed:	89 85 b0 fd ff ff    	mov    DWORD PTR [rbp-0x250],eax
  4008f3:	eb 02                	jmp    4008f7 <CheckSolution+0x231>
  4008f5:	cf                   	iret   
  4008f6:	92                   	xchg   edx,eax
  4008f7:	c7 85 b4 fd ff ff f6 	mov    DWORD PTR [rbp-0x24c],0x67f6
  4008fe:	67 00 00 
  400901:	8b 85 b4 fd ff ff    	mov    eax,DWORD PTR [rbp-0x24c]
  400907:	01 c0                	add    eax,eax
  400909:	89 85 b4 fd ff ff    	mov    DWORD PTR [rbp-0x24c],eax
  40090f:	c7 85 b8 fd ff ff a0 	mov    DWORD PTR [rbp-0x248],0x974a0
  400916:	74 09 00 
  400919:	8b 85 b8 fd ff ff    	mov    eax,DWORD PTR [rbp-0x248]
  40091f:	c1 f8 04             	sar    eax,0x4
  400922:	89 85 b8 fd ff ff    	mov    DWORD PTR [rbp-0x248],eax
  400928:	c7 85 bc fd ff ff 9e 	mov    DWORD PTR [rbp-0x244],0x19d9e
  40092f:	9d 01 00 
  400932:	8b 85 bc fd ff ff    	mov    eax,DWORD PTR [rbp-0x244]
  400938:	d1 f8                	sar    eax,1
  40093a:	89 85 bc fd ff ff    	mov    DWORD PTR [rbp-0x244],eax
  400940:	c7 85 c0 fd ff ff 90 	mov    DWORD PTR [rbp-0x240],0x20f90
  400947:	0f 02 00 
  40094a:	8b 85 c0 fd ff ff    	mov    eax,DWORD PTR [rbp-0x240]
  400950:	c1 f8 03             	sar    eax,0x3
  400953:	89 85 c0 fd ff ff    	mov    DWORD PTR [rbp-0x240],eax
  400959:	c7 85 c4 fd ff ff 1b 	mov    DWORD PTR [rbp-0x23c],0x691b
  400960:	69 00 00 
  400963:	eb 02                	jmp    400967 <CheckSolution+0x2a1>
  400965:	18 23                	sbb    BYTE PTR [rbx],ah
  400967:	eb 02                	jmp    40096b <CheckSolution+0x2a5>
  400969:	0d 5b c7 85 c8       	or     eax,0xc885c75b
  40096e:	fd                   	std    
  40096f:	ff                   	(bad)  
  400970:	ff cf                	dec    edi
  400972:	56                   	push   rsi
  400973:	00 00                	add    BYTE PTR [rax],al
  400975:	8b 85 c8 fd ff ff    	mov    eax,DWORD PTR [rbp-0x238]
  40097b:	01 c0                	add    eax,eax
  40097d:	89 85 c8 fd ff ff    	mov    DWORD PTR [rbp-0x238],eax
  400983:	eb 02                	jmp    400987 <CheckSolution+0x2c1>
  400985:	29 bd c7 85 cc fd    	sub    DWORD PTR [rbp-0x2337a39],edi
  40098b:	ff                   	(bad)  
  40098c:	ff 65 48             	jmp    QWORD PTR [rbp+0x48]
  40098f:	00 00                	add    BYTE PTR [rax],al
  400991:	8b 85 cc fd ff ff    	mov    eax,DWORD PTR [rbp-0x234]
  400997:	34 cc                	xor    al,0xcc
  400999:	89 85 cc fd ff ff    	mov    DWORD PTR [rbp-0x234],eax
  40099f:	c7 85 d0 fd ff ff c5 	mov    DWORD PTR [rbp-0x230],0xfec5
  4009a6:	fe 00 00 
  4009a9:	eb 02                	jmp    4009ad <CheckSolution+0x2e7>
  4009ab:	94                   	xchg   esp,eax
  4009ac:	51                   	push   rcx
  4009ad:	eb 02                	jmp    4009b1 <CheckSolution+0x2eb>
  4009af:	d8 18                	fcomp  DWORD PTR [rax]
  4009b1:	c7 85 d4 fd ff ff 47 	mov    DWORD PTR [rbp-0x22c],0xb947
  4009b8:	b9 00 00 
  4009bb:	8b 85 d4 fd ff ff    	mov    eax,DWORD PTR [rbp-0x22c]
  4009c1:	34 f0                	xor    al,0xf0
  4009c3:	89 85 d4 fd ff ff    	mov    DWORD PTR [rbp-0x22c],eax
  4009c9:	c7 85 d8 fd ff ff 26 	mov    DWORD PTR [rbp-0x228],0x4526
  4009d0:	45 00 00 
  4009d3:	eb 02                	jmp    4009d7 <CheckSolution+0x311>
  4009d5:	ca 7c c7             	retf   0xc77c
  4009d8:	85 dc                	test   esp,ebx
  4009da:	fd                   	std    
  4009db:	ff                   	(bad)  
  4009dc:	ff 76 84             	push   QWORD PTR [rsi-0x7c]
  4009df:	00 00                	add    BYTE PTR [rax],al
  4009e1:	eb 02                	jmp    4009e5 <CheckSolution+0x31f>
  4009e3:	59                   	pop    rcx
  4009e4:	9b                   	fwait
  4009e5:	eb 02                	jmp    4009e9 <CheckSolution+0x323>
  4009e7:	79 bc                	jns    4009a5 <CheckSolution+0x2df>
  4009e9:	c7 85 e0 fd ff ff 4f 	mov    DWORD PTR [rbp-0x220],0x534f
  4009f0:	53 00 00 
  4009f3:	8b 85 e0 fd ff ff    	mov    eax,DWORD PTR [rbp-0x220]
  4009f9:	01 c0                	add    eax,eax
  4009fb:	89 85 e0 fd ff ff    	mov    DWORD PTR [rbp-0x220],eax
  400a01:	eb 02                	jmp    400a05 <CheckSolution+0x33f>
  400a03:	a6                   	cmps   BYTE PTR ds:[rsi],BYTE PTR es:[rdi]
  400a04:	a7                   	cmps   DWORD PTR ds:[rsi],DWORD PTR es:[rdi]
  400a05:	c7 85 e4 fd ff ff 66 	mov    DWORD PTR [rbp-0x21c],0x1466
  400a0c:	14 00 00 
  400a0f:	8b 85 e4 fd ff ff    	mov    eax,DWORD PTR [rbp-0x21c]
  400a15:	34 9d                	xor    al,0x9d
  400a17:	89 85 e4 fd ff ff    	mov    DWORD PTR [rbp-0x21c],eax
  400a1d:	c7 85 e8 fd ff ff cd 	mov    DWORD PTR [rbp-0x218],0x2ccd
  400a24:	2c 00 00 
  400a27:	eb 02                	jmp    400a2b <CheckSolution+0x365>
  400a29:	5b                   	pop    rbx
  400a2a:	d0 c7                	rol    bh,1
  400a2c:	85 ec                	test   esp,ebp
  400a2e:	fd                   	std    
  400a2f:	ff                   	(bad)  
  400a30:	ff 4c 86 03          	dec    DWORD PTR [rsi+rax*4+0x3]
  400a34:	00 8b 85 ec fd ff    	add    BYTE PTR [rbx-0x2137b],cl
  400a3a:	ff c1                	inc    ecx
  400a3c:	f8                   	clc    
  400a3d:	02 89 85 ec fd ff    	add    cl,BYTE PTR [rcx-0x2137b]
  400a43:	ff                   	(bad)  
  400a44:	eb 02                	jmp    400a48 <CheckSolution+0x382>
  400a46:	2a d2                	sub    dl,dl
  400a48:	c7 85 f0 fd ff ff 02 	mov    DWORD PTR [rbp-0x210],0x5d02
  400a4f:	5d 00 00 
  400a52:	8b 85 f0 fd ff ff    	mov    eax,DWORD PTR [rbp-0x210]
  400a58:	83 f0 53             	xor    eax,0x53
  400a5b:	89 85 f0 fd ff ff    	mov    DWORD PTR [rbp-0x210],eax
  400a61:	c7 85 f4 fd ff ff 40 	mov    DWORD PTR [rbp-0x20c],0xcb40
  400a68:	cb 00 00 
  400a6b:	8b 85 f4 fd ff ff    	mov    eax,DWORD PTR [rbp-0x20c]
  400a71:	d1 f8                	sar    eax,1
  400a73:	89 85 f4 fd ff ff    	mov    DWORD PTR [rbp-0x20c],eax
  400a79:	eb 02                	jmp    400a7d <CheckSolution+0x3b7>
  400a7b:	e8 a7 c7 85 f8       	call   fffffffff8c5d227 <_end+0xfffffffff865a1bf>
  400a80:	fd                   	std    
  400a81:	ff                   	(bad)  
  400a82:	ff 29                	jmp    FWORD PTR [rcx]
  400a84:	31 00                	xor    DWORD PTR [rax],eax
  400a86:	00 8b 85 f8 fd ff    	add    BYTE PTR [rbx-0x2077b],cl
  400a8c:	ff 01                	inc    DWORD PTR [rcx]
  400a8e:	c0 89 85 f8 fd ff ff 	ror    BYTE PTR [rcx-0x2077b],0xff
  400a95:	c7 85 fc fd ff ff 2d 	mov    DWORD PTR [rbp-0x204],0xd42d
  400a9c:	d4 00 00 
  400a9f:	eb 02                	jmp    400aa3 <CheckSolution+0x3dd>
  400aa1:	d6                   	(bad)  
  400aa2:	81 c7 85 00 fe ff    	add    edi,0xfffe0085
  400aa8:	ff 51 7e             	call   QWORD PTR [rcx+0x7e]
  400aab:	00 00                	add    BYTE PTR [rax],al
  400aad:	eb 02                	jmp    400ab1 <CheckSolution+0x3eb>
  400aaf:	13 74 c7 85          	adc    esi,DWORD PTR [rdi+rax*8-0x7b]
  400ab3:	04 fe                	add    al,0xfe
  400ab5:	ff                   	(bad)  
  400ab6:	ff 64 a6 00          	jmp    QWORD PTR [rsi+riz*4+0x0]
  400aba:	00 8b 85 04 fe ff    	add    BYTE PTR [rbx-0x1fb7b],cl
  400ac0:	ff c1                	inc    ecx
  400ac2:	f8                   	clc    
  400ac3:	02 89 85 04 fe ff    	add    cl,BYTE PTR [rcx-0x1fb7b]
  400ac9:	ff                   	(bad)  
  400aca:	eb 02                	jmp    400ace <CheckSolution+0x408>
  400acc:	d2 a2 c7 85 08 fe    	shl    BYTE PTR [rdx-0x1f77a39],cl
  400ad2:	ff                   	(bad)  
  400ad3:	ff 8d 87 00 00 8b    	dec    DWORD PTR [rbp-0x74ffff79]
  400ad9:	85 08                	test   DWORD PTR [rax],ecx
  400adb:	fe                   	(bad)  
  400adc:	ff                   	(bad)  
  400add:	ff 83 f0 78 89 85    	inc    DWORD PTR [rbx-0x7a768710]
  400ae3:	08 fe                	or     dh,bh
  400ae5:	ff                   	(bad)  
  400ae6:	ff c7                	inc    edi
  400ae8:	85 0c fe             	test   DWORD PTR [rsi+rdi*8],ecx
  400aeb:	ff                   	(bad)  
  400aec:	ff 30                	push   QWORD PTR [rax]
  400aee:	3d 02 00 8b 85       	cmp    eax,0x858b0002
  400af3:	0c fe                	or     al,0xfe
  400af5:	ff                   	(bad)  
  400af6:	ff c1                	inc    ecx
  400af8:	f8                   	clc    
  400af9:	04 89                	add    al,0x89
  400afb:	85 0c fe             	test   DWORD PTR [rsi+rdi*8],ecx
  400afe:	ff                   	(bad)  
  400aff:	ff                   	(bad)  
  400b00:	eb 02                	jmp    400b04 <CheckSolution+0x43e>
  400b02:	cd be                	int    0xbe
  400b04:	c7 85 10 fe ff ff a7 	mov    DWORD PTR [rbp-0x1f0],0x59a7
  400b0b:	59 00 00 
  400b0e:	8b 85 10 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1f0]
  400b14:	34 e0                	xor    al,0xe0
  400b16:	89 85 10 fe ff ff    	mov    DWORD PTR [rbp-0x1f0],eax
  400b1c:	c7 85 14 fe ff ff b4 	mov    DWORD PTR [rbp-0x1ec],0x86b4
  400b23:	86 00 00 
  400b26:	8b 85 14 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1ec]
  400b2c:	c1 f8 02             	sar    eax,0x2
  400b2f:	89 85 14 fe ff ff    	mov    DWORD PTR [rbp-0x1ec],eax
  400b35:	c7 85 18 fe ff ff f4 	mov    DWORD PTR [rbp-0x1e8],0x4f4
  400b3c:	04 00 00 
  400b3f:	8b 85 18 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1e8]
  400b45:	d1 f8                	sar    eax,1
  400b47:	89 85 18 fe ff ff    	mov    DWORD PTR [rbp-0x1e8],eax
  400b4d:	eb 02                	jmp    400b51 <CheckSolution+0x48b>
  400b4f:	ab                   	stos   DWORD PTR es:[rdi],eax
  400b50:	7e c7                	jle    400b19 <CheckSolution+0x453>
  400b52:	85 1c fe             	test   DWORD PTR [rsi+rdi*8],ebx
  400b55:	ff                   	(bad)  
  400b56:	ff 2c 17             	jmp    FWORD PTR [rdi+rdx*1]
  400b59:	00 00                	add    BYTE PTR [rax],al
  400b5b:	8b 85 1c fe ff ff    	mov    eax,DWORD PTR [rbp-0x1e4]
  400b61:	01 c0                	add    eax,eax
  400b63:	89 85 1c fe ff ff    	mov    DWORD PTR [rbp-0x1e4],eax
  400b69:	c7 85 20 fe ff ff b5 	mov    DWORD PTR [rbp-0x1e0],0x36b5
  400b70:	36 00 00 
  400b73:	eb 02                	jmp    400b77 <CheckSolution+0x4b1>
  400b75:	f9                   	stc    
  400b76:	7d c7                	jge    400b3f <CheckSolution+0x479>
  400b78:	85 24 fe             	test   DWORD PTR [rsi+rdi*8],esp
  400b7b:	ff                   	(bad)  
  400b7c:	ff c3                	inc    ebx
  400b7e:	3f                   	(bad)  
  400b7f:	00 00                	add    BYTE PTR [rax],al
  400b81:	eb 02                	jmp    400b85 <CheckSolution+0x4bf>
  400b83:	f0 7e eb             	lock jle 400b71 <CheckSolution+0x4ab>
  400b86:	02 da                	add    bl,dl
  400b88:	82                   	(bad)  
  400b89:	c7 85 28 fe ff ff d9 	mov    DWORD PTR [rbp-0x1d8],0xabd9
  400b90:	ab 00 00 
  400b93:	8b 85 28 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1d8]
  400b99:	83 f0 65             	xor    eax,0x65
  400b9c:	89 85 28 fe ff ff    	mov    DWORD PTR [rbp-0x1d8],eax
  400ba2:	eb 02                	jmp    400ba6 <CheckSolution+0x4e0>
  400ba4:	df ca                	(bad)  
  400ba6:	c7 85 2c fe ff ff b7 	mov    DWORD PTR [rbp-0x1d4],0x43b7
  400bad:	43 00 00 
  400bb0:	8b 85 2c fe ff ff    	mov    eax,DWORD PTR [rbp-0x1d4]
  400bb6:	01 c0                	add    eax,eax
  400bb8:	89 85 2c fe ff ff    	mov    DWORD PTR [rbp-0x1d4],eax
  400bbe:	c7 85 30 fe ff ff 69 	mov    DWORD PTR [rbp-0x1d0],0xd669
  400bc5:	d6 00 00 
  400bc8:	eb 02                	jmp    400bcc <CheckSolution+0x506>
  400bca:	0d bc c7 85 34       	or     eax,0x3485c7bc
  400bcf:	fe                   	(bad)  
  400bd0:	ff                   	(bad)  
  400bd1:	ff                   	(bad)  
  400bd2:	fa                   	cli    
  400bd3:	2f                   	(bad)  
  400bd4:	00 00                	add    BYTE PTR [rax],al
  400bd6:	8b 85 34 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1cc]
  400bdc:	d1 f8                	sar    eax,1
  400bde:	89 85 34 fe ff ff    	mov    DWORD PTR [rbp-0x1cc],eax
  400be4:	eb 02                	jmp    400be8 <CheckSolution+0x522>
  400be6:	03 cd                	add    ecx,ebp
  400be8:	c7 85 38 fe ff ff 42 	mov    DWORD PTR [rbp-0x1c8],0x8a42
  400bef:	8a 00 00 
  400bf2:	8b 85 38 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1c8]
  400bf8:	83 f0 21             	xor    eax,0x21
  400bfb:	89 85 38 fe ff ff    	mov    DWORD PTR [rbp-0x1c8],eax
  400c01:	c7 85 3c fe ff ff 19 	mov    DWORD PTR [rbp-0x1c4],0xf219
  400c08:	f2 00 00 
  400c0b:	eb 02                	jmp    400c0f <CheckSolution+0x549>
  400c0d:	2b 47 eb             	sub    eax,DWORD PTR [rdi-0x15]
  400c10:	02 e7                	add    ah,bh
  400c12:	cf                   	iret   
  400c13:	c7 85 40 fe ff ff 95 	mov    DWORD PTR [rbp-0x1c0],0x6d95
  400c1a:	6d 00 00 
  400c1d:	8b 85 40 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1c0]
  400c23:	83 f0 73             	xor    eax,0x73
  400c26:	89 85 40 fe ff ff    	mov    DWORD PTR [rbp-0x1c0],eax
  400c2c:	eb 02                	jmp    400c30 <CheckSolution+0x56a>
  400c2e:	ba 8f c7 85 44       	mov    edx,0x4485c78f
  400c33:	fe                   	(bad)  
  400c34:	ff                   	(bad)  
  400c35:	ff 59 54             	call   FWORD PTR [rcx+0x54]
  400c38:	00 00                	add    BYTE PTR [rax],al
  400c3a:	8b 85 44 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1bc]
  400c40:	01 c0                	add    eax,eax
  400c42:	89 85 44 fe ff ff    	mov    DWORD PTR [rbp-0x1bc],eax
  400c48:	eb 02                	jmp    400c4c <CheckSolution+0x586>
  400c4a:	78 fc                	js     400c48 <CheckSolution+0x582>
  400c4c:	c7 85 48 fe ff ff 8e 	mov    DWORD PTR [rbp-0x1b8],0x748e
  400c53:	74 00 00 
  400c56:	8b 85 48 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1b8]
  400c5c:	01 c0                	add    eax,eax
  400c5e:	89 85 48 fe ff ff    	mov    DWORD PTR [rbp-0x1b8],eax
  400c64:	c7 85 4c fe ff ff b4 	mov    DWORD PTR [rbp-0x1b4],0x79b4
  400c6b:	79 00 00 
  400c6e:	8b 85 4c fe ff ff    	mov    eax,DWORD PTR [rbp-0x1b4]
  400c74:	d1 f8                	sar    eax,1
  400c76:	89 85 4c fe ff ff    	mov    DWORD PTR [rbp-0x1b4],eax
  400c7c:	eb 02                	jmp    400c80 <CheckSolution+0x5ba>
  400c7e:	59                   	pop    rcx
  400c7f:	54                   	push   rsp
  400c80:	c7 85 50 fe ff ff d1 	mov    DWORD PTR [rbp-0x1b0],0x61d1
  400c87:	61 00 00 
  400c8a:	8b 85 50 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1b0]
  400c90:	01 c0                	add    eax,eax
  400c92:	89 85 50 fe ff ff    	mov    DWORD PTR [rbp-0x1b0],eax
  400c98:	c7 85 54 fe ff ff e0 	mov    DWORD PTR [rbp-0x1ac],0x27ce0
  400c9f:	7c 02 00 
  400ca2:	8b 85 54 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1ac]
  400ca8:	c1 f8 02             	sar    eax,0x2
  400cab:	89 85 54 fe ff ff    	mov    DWORD PTR [rbp-0x1ac],eax
  400cb1:	eb 02                	jmp    400cb5 <CheckSolution+0x5ef>
  400cb3:	52                   	push   rdx
  400cb4:	22 c7                	and    al,bh
  400cb6:	85 58 fe             	test   DWORD PTR [rax-0x2],ebx
  400cb9:	ff                   	(bad)  
  400cba:	ff                   	(bad)  
  400cbb:	ff 2a                	jmp    FWORD PTR [rdx]
  400cbd:	00 00                	add    BYTE PTR [rax],al
  400cbf:	8b 85 58 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1a8]
  400cc5:	01 c0                	add    eax,eax
  400cc7:	89 85 58 fe ff ff    	mov    DWORD PTR [rbp-0x1a8],eax
  400ccd:	eb 02                	jmp    400cd1 <CheckSolution+0x60b>
  400ccf:	88 cc                	mov    ah,cl
  400cd1:	c7 85 5c fe ff ff 94 	mov    DWORD PTR [rbp-0x1a4],0x1a94
  400cd8:	1a 00 00 
  400cdb:	8b 85 5c fe ff ff    	mov    eax,DWORD PTR [rbp-0x1a4]
  400ce1:	01 c0                	add    eax,eax
  400ce3:	89 85 5c fe ff ff    	mov    DWORD PTR [rbp-0x1a4],eax
  400ce9:	eb 02                	jmp    400ced <CheckSolution+0x627>
  400ceb:	a9 99 c7 85 60       	test   eax,0x6085c799
  400cf0:	fe                   	(bad)  
  400cf1:	ff                   	(bad)  
  400cf2:	ff c5                	inc    ebp
  400cf4:	13 00                	adc    eax,DWORD PTR [rax]
  400cf6:	00 8b 85 60 fe ff    	add    BYTE PTR [rbx-0x19f7b],cl
  400cfc:	ff 34 97             	push   QWORD PTR [rdi+rdx*4]
  400cff:	89 85 60 fe ff ff    	mov    DWORD PTR [rbp-0x1a0],eax
  400d05:	c7 85 64 fe ff ff f0 	mov    DWORD PTR [rbp-0x19c],0x343f0
  400d0c:	43 03 00 
  400d0f:	8b 85 64 fe ff ff    	mov    eax,DWORD PTR [rbp-0x19c]
  400d15:	c1 f8 03             	sar    eax,0x3
  400d18:	89 85 64 fe ff ff    	mov    DWORD PTR [rbp-0x19c],eax
  400d1e:	c7 85 68 fe ff ff dc 	mov    DWORD PTR [rbp-0x198],0x7bdc
  400d25:	7b 00 00 
  400d28:	eb 02                	jmp    400d2c <CheckSolution+0x666>
  400d2a:	07                   	(bad)  
  400d2b:	4f eb 02             	rex.WRXB jmp 400d30 <CheckSolution+0x66a>
  400d2e:	f1                   	icebp  
  400d2f:	4e c7 85 6c fe ff ff 	rex.WRX mov QWORD PTR [rbp-0x194],0x9a9f
  400d36:	9f 9a 00 00 
  400d3a:	8b 85 6c fe ff ff    	mov    eax,DWORD PTR [rbp-0x194]
  400d40:	83 f0 2c             	xor    eax,0x2c
  400d43:	89 85 6c fe ff ff    	mov    DWORD PTR [rbp-0x194],eax
  400d49:	eb 02                	jmp    400d4d <CheckSolution+0x687>
  400d4b:	14 ea                	adc    al,0xea
  400d4d:	c7 85 70 fe ff ff 7e 	mov    DWORD PTR [rbp-0x190],0x357e
  400d54:	35 00 00 
  400d57:	8b 85 70 fe ff ff    	mov    eax,DWORD PTR [rbp-0x190]
  400d5d:	83 f0 5c             	xor    eax,0x5c
  400d60:	89 85 70 fe ff ff    	mov    DWORD PTR [rbp-0x190],eax
  400d66:	c7 85 74 fe ff ff af 	mov    DWORD PTR [rbp-0x18c],0xe6af
  400d6d:	e6 00 00 
  400d70:	eb 02                	jmp    400d74 <CheckSolution+0x6ae>
  400d72:	ac                   	lods   al,BYTE PTR ds:[rsi]
  400d73:	3c c7                	cmp    al,0xc7
  400d75:	85 78 fe             	test   DWORD PTR [rax-0x2],edi
  400d78:	ff                   	(bad)  
  400d79:	ff c4                	inc    esp
  400d7b:	ff 00                	inc    DWORD PTR [rax]
  400d7d:	00 8b 85 78 fe ff    	add    BYTE PTR [rbx-0x1877b],cl
  400d83:	ff d1                	call   rcx
  400d85:	f8                   	clc    
  400d86:	89 85 78 fe ff ff    	mov    DWORD PTR [rbp-0x188],eax
  400d8c:	eb 02                	jmp    400d90 <CheckSolution+0x6ca>
  400d8e:	b3 20                	mov    bl,0x20
  400d90:	c7 85 7c fe ff ff a3 	mov    DWORD PTR [rbp-0x184],0x72a3
  400d97:	72 00 00 
  400d9a:	8b 85 7c fe ff ff    	mov    eax,DWORD PTR [rbp-0x184]
  400da0:	83 f0 3e             	xor    eax,0x3e
  400da3:	89 85 7c fe ff ff    	mov    DWORD PTR [rbp-0x184],eax
  400da9:	eb 02                	jmp    400dad <CheckSolution+0x6e7>
  400dab:	a8 ee                	test   al,0xee
  400dad:	c7 85 80 fe ff ff d2 	mov    DWORD PTR [rbp-0x180],0x28d2
  400db4:	28 00 00 
  400db7:	8b 85 80 fe ff ff    	mov    eax,DWORD PTR [rbp-0x180]
  400dbd:	34 93                	xor    al,0x93
  400dbf:	89 85 80 fe ff ff    	mov    DWORD PTR [rbp-0x180],eax
  400dc5:	c7 85 84 fe ff ff 22 	mov    DWORD PTR [rbp-0x17c],0x3d22
  400dcc:	3d 00 00 
  400dcf:	eb 02                	jmp    400dd3 <CheckSolution+0x70d>
  400dd1:	5e                   	pop    rsi
  400dd2:	bc c7 85 88 fe       	mov    esp,0xfe8885c7
  400dd7:	ff                   	(bad)  
  400dd8:	ff 2c e6             	jmp    FWORD PTR [rsi+riz*8]
  400ddb:	02 00                	add    al,BYTE PTR [rax]
  400ddd:	8b 85 88 fe ff ff    	mov    eax,DWORD PTR [rbp-0x178]
  400de3:	c1 f8 02             	sar    eax,0x2
  400de6:	89 85 88 fe ff ff    	mov    DWORD PTR [rbp-0x178],eax
  400dec:	c7 85 8c fe ff ff 00 	mov    DWORD PTR [rbp-0x174],0xe200
  400df3:	e2 00 00 
  400df6:	eb 02                	jmp    400dfa <CheckSolution+0x734>
  400df8:	13 48 c7             	adc    ecx,DWORD PTR [rax-0x39]
  400dfb:	85 90 fe ff ff a5    	test   DWORD PTR [rax-0x5a000002],edx
  400e01:	34 00                	xor    al,0x0
  400e03:	00 eb                	add    bl,ch
  400e05:	02 07                	add    al,BYTE PTR [rdi]
  400e07:	48 c7 85 94 fe ff ff 	mov    QWORD PTR [rbp-0x16c],0x4fd6
  400e0e:	d6 4f 00 00 
  400e12:	8b 85 94 fe ff ff    	mov    eax,DWORD PTR [rbp-0x16c]
  400e18:	d1 f8                	sar    eax,1
  400e1a:	89 85 94 fe ff ff    	mov    DWORD PTR [rbp-0x16c],eax
  400e20:	eb 02                	jmp    400e24 <CheckSolution+0x75e>
  400e22:	59                   	pop    rcx
  400e23:	f4                   	hlt    
  400e24:	c7 85 98 fe ff ff 42 	mov    DWORD PTR [rbp-0x168],0x1342
  400e2b:	13 00 00 
  400e2e:	8b 85 98 fe ff ff    	mov    eax,DWORD PTR [rbp-0x168]
  400e34:	34 ea                	xor    al,0xea
  400e36:	89 85 98 fe ff ff    	mov    DWORD PTR [rbp-0x168],eax
  400e3c:	eb 02                	jmp    400e40 <CheckSolution+0x77a>
  400e3e:	69 d2 c7 85 9c fe    	imul   edx,edx,0xfe9c85c7
  400e44:	ff                   	(bad)  
  400e45:	ff                   	(bad)  
  400e46:	ed                   	in     eax,dx
  400e47:	52                   	push   rdx
  400e48:	00 00                	add    BYTE PTR [rax],al
  400e4a:	8b 85 9c fe ff ff    	mov    eax,DWORD PTR [rbp-0x164]
  400e50:	34 c2                	xor    al,0xc2
  400e52:	89 85 9c fe ff ff    	mov    DWORD PTR [rbp-0x164],eax
  400e58:	eb 02                	jmp    400e5c <CheckSolution+0x796>
  400e5a:	2a 5e c7             	sub    bl,BYTE PTR [rsi-0x39]
  400e5d:	85 a0 fe ff ff a4    	test   DWORD PTR [rax-0x5b000002],esp
  400e63:	73 00                	jae    400e65 <CheckSolution+0x79f>
  400e65:	00 8b 85 a0 fe ff    	add    BYTE PTR [rbx-0x15f7b],cl
  400e6b:	ff 83 f0 03 89 85    	inc    DWORD PTR [rbx-0x7a76fc10]
  400e71:	a0 fe ff ff eb 02 df 	movabs al,ds:0xc7c9df02ebfffffe
  400e78:	c9 c7 
  400e7a:	85 a4 fe ff ff 5a d7 	test   DWORD PTR [rsi+rdi*8-0x28a50001],esp
  400e81:	00 00                	add    BYTE PTR [rax],al
  400e83:	8b 85 a4 fe ff ff    	mov    eax,DWORD PTR [rbp-0x15c]
  400e89:	34 93                	xor    al,0x93
  400e8b:	89 85 a4 fe ff ff    	mov    DWORD PTR [rbp-0x15c],eax
  400e91:	c7 85 a8 fe ff ff c4 	mov    DWORD PTR [rbp-0x158],0x5ec4
  400e98:	5e 00 00 
  400e9b:	8b 85 a8 fe ff ff    	mov    eax,DWORD PTR [rbp-0x158]
  400ea1:	c1 f8 02             	sar    eax,0x2
  400ea4:	89 85 a8 fe ff ff    	mov    DWORD PTR [rbp-0x158],eax
  400eaa:	c7 85 ac fe ff ff bc 	mov    DWORD PTR [rbp-0x154],0xfabc
  400eb1:	fa 00 00 
  400eb4:	8b 85 ac fe ff ff    	mov    eax,DWORD PTR [rbp-0x154]
  400eba:	c1 f8 02             	sar    eax,0x2
  400ebd:	89 85 ac fe ff ff    	mov    DWORD PTR [rbp-0x154],eax
  400ec3:	c7 85 b0 fe ff ff 50 	mov    DWORD PTR [rbp-0x150],0x8e50
  400eca:	8e 00 00 
  400ecd:	8b 85 b0 fe ff ff    	mov    eax,DWORD PTR [rbp-0x150]
  400ed3:	c1 f8 03             	sar    eax,0x3
  400ed6:	89 85 b0 fe ff ff    	mov    DWORD PTR [rbp-0x150],eax
  400edc:	eb 02                	jmp    400ee0 <CheckSolution+0x81a>
  400ede:	7c 1c                	jl     400efc <CheckSolution+0x836>
  400ee0:	c7 85 b4 fe ff ff 6b 	mov    DWORD PTR [rbp-0x14c],0x46b
  400ee7:	04 00 00 
  400eea:	8b 85 b4 fe ff ff    	mov    eax,DWORD PTR [rbp-0x14c]
  400ef0:	01 c0                	add    eax,eax
  400ef2:	89 85 b4 fe ff ff    	mov    DWORD PTR [rbp-0x14c],eax
  400ef8:	c7 85 b8 fe ff ff d7 	mov    DWORD PTR [rbp-0x148],0x49d7
  400eff:	49 00 00 
  400f02:	eb 02                	jmp    400f06 <CheckSolution+0x840>
  400f04:	56                   	push   rsi
  400f05:	88 eb                	mov    bl,ch
  400f07:	02 61 eb             	add    ah,BYTE PTR [rcx-0x15]
  400f0a:	c7 85 bc fe ff ff 11 	mov    DWORD PTR [rbp-0x144],0xff11
  400f11:	ff 00 00 
  400f14:	8b 85 bc fe ff ff    	mov    eax,DWORD PTR [rbp-0x144]
  400f1a:	34 9a                	xor    al,0x9a
  400f1c:	89 85 bc fe ff ff    	mov    DWORD PTR [rbp-0x144],eax
  400f22:	eb 02                	jmp    400f26 <CheckSolution+0x860>
  400f24:	76 81                	jbe    400ea7 <CheckSolution+0x7e1>
  400f26:	c7 85 c0 fe ff ff 8f 	mov    DWORD PTR [rbp-0x140],0x438f
  400f2d:	43 00 00 
  400f30:	8b 85 c0 fe ff ff    	mov    eax,DWORD PTR [rbp-0x140]
  400f36:	34 98                	xor    al,0x98
  400f38:	89 85 c0 fe ff ff    	mov    DWORD PTR [rbp-0x140],eax
  400f3e:	c7 85 c4 fe ff ff 84 	mov    DWORD PTR [rbp-0x13c],0x4984
  400f45:	49 00 00 
  400f48:	8b 85 c4 fe ff ff    	mov    eax,DWORD PTR [rbp-0x13c]
  400f4e:	d1 f8                	sar    eax,1
  400f50:	89 85 c4 fe ff ff    	mov    DWORD PTR [rbp-0x13c],eax
  400f56:	eb 02                	jmp    400f5a <CheckSolution+0x894>
  400f58:	b1 c1                	mov    cl,0xc1
  400f5a:	c7 85 c8 fe ff ff f9 	mov    DWORD PTR [rbp-0x138],0x2bf9
  400f61:	2b 00 00 
  400f64:	8b 85 c8 fe ff ff    	mov    eax,DWORD PTR [rbp-0x138]
  400f6a:	01 c0                	add    eax,eax
  400f6c:	89 85 c8 fe ff ff    	mov    DWORD PTR [rbp-0x138],eax
  400f72:	c7 85 cc fe ff ff 64 	mov    DWORD PTR [rbp-0x134],0x33264
  400f79:	32 03 00 
  400f7c:	8b 85 cc fe ff ff    	mov    eax,DWORD PTR [rbp-0x134]
  400f82:	c1 f8 02             	sar    eax,0x2
  400f85:	89 85 cc fe ff ff    	mov    DWORD PTR [rbp-0x134],eax
  400f8b:	c7 85 d0 fe ff ff 26 	mov    DWORD PTR [rbp-0x130],0x4826
  400f92:	48 00 00 
  400f95:	8b 85 d0 fe ff ff    	mov    eax,DWORD PTR [rbp-0x130]
  400f9b:	d1 f8                	sar    eax,1
  400f9d:	89 85 d0 fe ff ff    	mov    DWORD PTR [rbp-0x130],eax
  400fa3:	c7 85 d4 fe ff ff 3d 	mov    DWORD PTR [rbp-0x12c],0xd03d
  400faa:	d0 00 00 
  400fad:	eb 02                	jmp    400fb1 <CheckSolution+0x8eb>
  400faf:	fa                   	cli    
  400fb0:	ea                   	(bad)  
  400fb1:	c7 85 d8 fe ff ff 28 	mov    DWORD PTR [rbp-0x128],0x5d928
  400fb8:	d9 05 00 
  400fbb:	8b 85 d8 fe ff ff    	mov    eax,DWORD PTR [rbp-0x128]
  400fc1:	c1 f8 03             	sar    eax,0x3
  400fc4:	89 85 d8 fe ff ff    	mov    DWORD PTR [rbp-0x128],eax
  400fca:	c7 85 dc fe ff ff e7 	mov    DWORD PTR [rbp-0x124],0xe6e7
  400fd1:	e6 00 00 
  400fd4:	eb 02                	jmp    400fd8 <CheckSolution+0x912>
  400fd6:	a8 0b                	test   al,0xb
  400fd8:	eb 02                	jmp    400fdc <CheckSolution+0x916>
  400fda:	3a f9                	cmp    bh,cl
  400fdc:	c7 85 e0 fe ff ff d6 	mov    DWORD PTR [rbp-0x120],0xa1d6
  400fe3:	a1 00 00 
  400fe6:	8b 85 e0 fe ff ff    	mov    eax,DWORD PTR [rbp-0x120]
  400fec:	34 9f                	xor    al,0x9f
  400fee:	89 85 e0 fe ff ff    	mov    DWORD PTR [rbp-0x120],eax
  400ff4:	eb 02                	jmp    400ff8 <CheckSolution+0x932>
  400ff6:	fe                   	(bad)  
  400ff7:	2b c7                	sub    eax,edi
  400ff9:	85 e4                	test   esp,esp
  400ffb:	fe                   	(bad)  
  400ffc:	ff                   	(bad)  
  400ffd:	ff b3 2f 00 00 8b    	push   QWORD PTR [rbx-0x74ffffd1]
  401003:	85 e4                	test   esp,esp
  401005:	fe                   	(bad)  
  401006:	ff                   	(bad)  
  401007:	ff 01                	inc    DWORD PTR [rcx]
  401009:	c0 89 85 e4 fe ff ff 	ror    BYTE PTR [rcx-0x11b7b],0xff
  401010:	c7 85 e8 fe ff ff da 	mov    DWORD PTR [rbp-0x118],0xa0da
  401017:	a0 00 00 
  40101a:	eb 02                	jmp    40101e <CheckSolution+0x958>
  40101c:	37                   	(bad)  
  40101d:	03 c7                	add    eax,edi
  40101f:	85 ec                	test   esp,ebp
  401021:	fe                   	(bad)  
  401022:	ff                   	(bad)  
  401023:	ff 97 5b 00 00 eb    	call   QWORD PTR [rdi-0x14ffffa5]
  401029:	02 1b                	add    bl,BYTE PTR [rbx]
  40102b:	55                   	push   rbp
  40102c:	c7 85 f0 fe ff ff 34 	mov    DWORD PTR [rbp-0x110],0x1c34
  401033:	1c 00 00 
  401036:	8b 85 f0 fe ff ff    	mov    eax,DWORD PTR [rbp-0x110]
  40103c:	c1 f8 02             	sar    eax,0x2
  40103f:	89 85 f0 fe ff ff    	mov    DWORD PTR [rbp-0x110],eax
  401045:	eb 02                	jmp    401049 <CheckSolution+0x983>
  401047:	b3 c9                	mov    bl,0xc9
  401049:	c7 85 f4 fe ff ff fe 	mov    DWORD PTR [rbp-0x10c],0x10fe
  401050:	10 00 00 
  401053:	8b 85 f4 fe ff ff    	mov    eax,DWORD PTR [rbp-0x10c]
  401059:	34 d9                	xor    al,0xd9
  40105b:	89 85 f4 fe ff ff    	mov    DWORD PTR [rbp-0x10c],eax
  401061:	eb 02                	jmp    401065 <CheckSolution+0x99f>
  401063:	d6                   	(bad)  
  401064:	45 c7 85 f8 fe ff ff 	rex.RB mov DWORD PTR [r13-0x108],0x2102
  40106b:	02 21 00 00 
  40106f:	8b 85 f8 fe ff ff    	mov    eax,DWORD PTR [rbp-0x108]
  401075:	01 c0                	add    eax,eax
  401077:	89 85 f8 fe ff ff    	mov    DWORD PTR [rbp-0x108],eax
  40107d:	eb 02                	jmp    401081 <CheckSolution+0x9bb>
  40107f:	28 ce                	sub    dh,cl
  401081:	c7 85 fc fe ff ff 5b 	mov    DWORD PTR [rbp-0x104],0x825b
  401088:	82 00 00 
  40108b:	8b 85 fc fe ff ff    	mov    eax,DWORD PTR [rbp-0x104]
  401091:	83 f0 3e             	xor    eax,0x3e
  401094:	89 85 fc fe ff ff    	mov    DWORD PTR [rbp-0x104],eax
  40109a:	c7 85 00 ff ff ff bc 	mov    DWORD PTR [rbp-0x100],0x2dabc
  4010a1:	da 02 00 
  4010a4:	8b 85 00 ff ff ff    	mov    eax,DWORD PTR [rbp-0x100]
  4010aa:	c1 f8 02             	sar    eax,0x2
  4010ad:	89 85 00 ff ff ff    	mov    DWORD PTR [rbp-0x100],eax
  4010b3:	c7 85 04 ff ff ff b7 	mov    DWORD PTR [rbp-0xfc],0xe4b7
  4010ba:	e4 00 00 
  4010bd:	eb 02                	jmp    4010c1 <CheckSolution+0x9fb>
  4010bf:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  4010c0:	bb c7 85 08 ff       	mov    ebx,0xff0885c7
  4010c5:	ff                   	(bad)  
  4010c6:	ff 46 85             	inc    DWORD PTR [rsi-0x7b]
  4010c9:	00 00                	add    BYTE PTR [rax],al
  4010cb:	eb 02                	jmp    4010cf <CheckSolution+0xa09>
  4010cd:	60                   	(bad)  
  4010ce:	9a                   	(bad)  
  4010cf:	eb 02                	jmp    4010d3 <CheckSolution+0xa0d>
  4010d1:	66 7c c7             	data16 jl 40109b <CheckSolution+0x9d5>
  4010d4:	85 0c ff             	test   DWORD PTR [rdi+rdi*8],ecx
  4010d7:	ff                   	(bad)  
  4010d8:	ff 41 af             	inc    DWORD PTR [rcx-0x51]
  4010db:	00 00                	add    BYTE PTR [rax],al
  4010dd:	8b 85 0c ff ff ff    	mov    eax,DWORD PTR [rbp-0xf4]
  4010e3:	83 f0 39             	xor    eax,0x39
  4010e6:	89 85 0c ff ff ff    	mov    DWORD PTR [rbp-0xf4],eax
  4010ec:	c7 85 10 ff ff ff 9d 	mov    DWORD PTR [rbp-0xf0],0x2e9d
  4010f3:	2e 00 00 
  4010f6:	eb 02                	jmp    4010fa <CheckSolution+0xa34>
  4010f8:	c9                   	leave  
  4010f9:	58                   	pop    rax
  4010fa:	c7 85 14 ff ff ff c8 	mov    DWORD PTR [rbp-0xec],0x140c8
  401101:	40 01 00 
  401104:	8b 85 14 ff ff ff    	mov    eax,DWORD PTR [rbp-0xec]
  40110a:	c1 f8 02             	sar    eax,0x2
  40110d:	89 85 14 ff ff ff    	mov    DWORD PTR [rbp-0xec],eax
  401113:	c7 85 18 ff ff ff 98 	mov    DWORD PTR [rbp-0xe8],0x1ea98
  40111a:	ea 01 00 
  40111d:	8b 85 18 ff ff ff    	mov    eax,DWORD PTR [rbp-0xe8]
  401123:	c1 f8 03             	sar    eax,0x3
  401126:	89 85 18 ff ff ff    	mov    DWORD PTR [rbp-0xe8],eax
  40112c:	eb 02                	jmp    401130 <CheckSolution+0xa6a>
  40112e:	07                   	(bad)  
  40112f:	68 c7 85 1c ff       	push   0xffffffffff1c85c7
  401134:	ff                   	(bad)  
  401135:	ff 6b 8e             	jmp    FWORD PTR [rbx-0x72]
  401138:	00 00                	add    BYTE PTR [rax],al
  40113a:	8b 85 1c ff ff ff    	mov    eax,DWORD PTR [rbp-0xe4]
  401140:	34 9e                	xor    al,0x9e
  401142:	89 85 1c ff ff ff    	mov    DWORD PTR [rbp-0xe4],eax
  401148:	c7 85 20 ff ff ff 37 	mov    DWORD PTR [rbp-0xe0],0x4737
  40114f:	47 00 00 
  401152:	eb 02                	jmp    401156 <CheckSolution+0xa90>
  401154:	a2 ec eb 02 f4 03 c7 	movabs ds:0x2485c703f402ebec,al
  40115b:	85 24 
  40115d:	ff                   	(bad)  
  40115e:	ff                   	(bad)  
  40115f:	ff ac a7 00 00 8b 85 	jmp    FWORD PTR [rdi+riz*4-0x7a750000]
  401166:	24 ff                	and    al,0xff
  401168:	ff                   	(bad)  
  401169:	ff 83 f0 11 89 85    	inc    DWORD PTR [rbx-0x7a76ee10]
  40116f:	24 ff                	and    al,0xff
  401171:	ff                   	(bad)  
  401172:	ff c7                	inc    edi
  401174:	85 28                	test   DWORD PTR [rax],ebp
  401176:	ff                   	(bad)  
  401177:	ff                   	(bad)  
  401178:	ff 80 ee 00 00 eb    	inc    DWORD PTR [rax-0x14ffff12]
  40117e:	02 1b                	add    bl,BYTE PTR [rbx]
  401180:	c0 c7 85             	rol    bh,0x85
  401183:	2c ff                	sub    al,0xff
  401185:	ff                   	(bad)  
  401186:	ff 71 b0             	push   QWORD PTR [rcx-0x50]
  401189:	00 00                	add    BYTE PTR [rax],al
  40118b:	eb 02                	jmp    40118f <CheckSolution+0xac9>
  40118d:	39 c9                	cmp    ecx,ecx
  40118f:	eb 02                	jmp    401193 <CheckSolution+0xacd>
  401191:	c1                   	(bad)  
  401192:	f4                   	hlt    
  401193:	c7 85 30 ff ff ff a2 	mov    DWORD PTR [rbp-0xd0],0x50a2
  40119a:	50 00 00 
  40119d:	8b 85 30 ff ff ff    	mov    eax,DWORD PTR [rbp-0xd0]
  4011a3:	01 c0                	add    eax,eax
  4011a5:	89 85 30 ff ff ff    	mov    DWORD PTR [rbp-0xd0],eax
  4011ab:	eb 02                	jmp    4011af <CheckSolution+0xae9>
  4011ad:	8e 97 c7 85 34 ff    	mov    ss,WORD PTR [rdi-0xcb7a39]
  4011b3:	ff                   	(bad)  
  4011b4:	ff 5d 03             	call   FWORD PTR [rbp+0x3]
  4011b7:	00 00                	add    BYTE PTR [rax],al
  4011b9:	8b 85 34 ff ff ff    	mov    eax,DWORD PTR [rbp-0xcc]
  4011bf:	01 c0                	add    eax,eax
  4011c1:	89 85 34 ff ff ff    	mov    DWORD PTR [rbp-0xcc],eax
  4011c7:	eb 02                	jmp    4011cb <CheckSolution+0xb05>
  4011c9:	3d 8f c7 85 38       	cmp    eax,0x3885c78f
  4011ce:	ff                   	(bad)  
  4011cf:	ff                   	(bad)  
  4011d0:	ff ce                	dec    esi
  4011d2:	67 00 00             	add    BYTE PTR [eax],al
  4011d5:	8b 85 38 ff ff ff    	mov    eax,DWORD PTR [rbp-0xc8]
  4011db:	34 f9                	xor    al,0xf9
  4011dd:	89 85 38 ff ff ff    	mov    DWORD PTR [rbp-0xc8],eax
  4011e3:	eb 02                	jmp    4011e7 <CheckSolution+0xb21>
  4011e5:	aa                   	stos   BYTE PTR es:[rdi],al
  4011e6:	aa                   	stos   BYTE PTR es:[rdi],al
  4011e7:	c7 85 3c ff ff ff c3 	mov    DWORD PTR [rbp-0xc4],0xb7c3
  4011ee:	b7 00 00 
  4011f1:	8b 85 3c ff ff ff    	mov    eax,DWORD PTR [rbp-0xc4]
  4011f7:	83 f0 0f             	xor    eax,0xf
  4011fa:	89 85 3c ff ff ff    	mov    DWORD PTR [rbp-0xc4],eax
  401200:	c7 85 40 ff ff ff 7b 	mov    DWORD PTR [rbp-0xc0],0xa57b
  401207:	a5 00 00 
  40120a:	eb 02                	jmp    40120e <CheckSolution+0xb48>
  40120c:	00 2f                	add    BYTE PTR [rdi],ch
  40120e:	c7 85 44 ff ff ff c8 	mov    DWORD PTR [rbp-0xbc],0x1d5c8
  401215:	d5 01 00 
  401218:	8b 85 44 ff ff ff    	mov    eax,DWORD PTR [rbp-0xbc]
  40121e:	c1 f8 03             	sar    eax,0x3
  401221:	89 85 44 ff ff ff    	mov    DWORD PTR [rbp-0xbc],eax
  401227:	eb 02                	jmp    40122b <CheckSolution+0xb65>
  401229:	d8 41 c7             	fadd   DWORD PTR [rcx-0x39]
  40122c:	85 48 ff             	test   DWORD PTR [rax-0x1],ecx
  40122f:	ff                   	(bad)  
  401230:	ff 9d 4a 00 00 8b    	call   FWORD PTR [rbp-0x74ffffb6]
  401236:	85 48 ff             	test   DWORD PTR [rax-0x1],ecx
  401239:	ff                   	(bad)  
  40123a:	ff 34 82             	push   QWORD PTR [rdx+rax*4]
  40123d:	89 85 48 ff ff ff    	mov    DWORD PTR [rbp-0xb8],eax
  401243:	c7 85 4c ff ff ff 24 	mov    DWORD PTR [rbp-0xb4],0x2a24
  40124a:	2a 00 00 
  40124d:	eb 02                	jmp    401251 <CheckSolution+0xb8b>
  40124f:	e8 59 eb 02 68       	call   6842fdad <_end+0x67e2cd45>
  401254:	1a c7                	sbb    al,bh
  401256:	85 50 ff             	test   DWORD PTR [rax-0x1],edx
  401259:	ff                   	(bad)  
  40125a:	ff 8e 82 00 00 8b    	dec    DWORD PTR [rsi-0x74ffff7e]
  401260:	85 50 ff             	test   DWORD PTR [rax-0x1],edx
  401263:	ff                   	(bad)  
  401264:	ff 34 a9             	push   QWORD PTR [rcx+rbp*4]
  401267:	89 85 50 ff ff ff    	mov    DWORD PTR [rbp-0xb0],eax
  40126d:	c7 85 54 ff ff ff c0 	mov    DWORD PTR [rbp-0xac],0xf8c0
  401274:	f8 00 00 
  401277:	eb 02                	jmp    40127b <CheckSolution+0xbb5>
  401279:	a8 d6                	test   al,0xd6
  40127b:	c7 85 58 ff ff ff 74 	mov    DWORD PTR [rbp-0xa8],0x24374
  401282:	43 02 00 
  401285:	8b 85 58 ff ff ff    	mov    eax,DWORD PTR [rbp-0xa8]
  40128b:	c1 f8 02             	sar    eax,0x2
  40128e:	89 85 58 ff ff ff    	mov    DWORD PTR [rbp-0xa8],eax
  401294:	eb 02                	jmp    401298 <CheckSolution+0xbd2>
  401296:	ee                   	out    dx,al
  401297:	1b c7                	sbb    eax,edi
  401299:	85 5c ff ff          	test   DWORD PTR [rdi+rdi*8-0x1],ebx
  40129d:	ff 5d c9             	call   FWORD PTR [rbp-0x37]
  4012a0:	00 00                	add    BYTE PTR [rax],al
  4012a2:	8b 85 5c ff ff ff    	mov    eax,DWORD PTR [rbp-0xa4]
  4012a8:	34 db                	xor    al,0xdb
  4012aa:	89 85 5c ff ff ff    	mov    DWORD PTR [rbp-0xa4],eax
  4012b0:	eb 02                	jmp    4012b4 <CheckSolution+0xbee>
  4012b2:	7a 38                	jp     4012ec <CheckSolution+0xc26>
  4012b4:	c7 85 60 ff ff ff c3 	mov    DWORD PTR [rbp-0xa0],0x22c3
  4012bb:	22 00 00 
  4012be:	8b 85 60 ff ff ff    	mov    eax,DWORD PTR [rbp-0xa0]
  4012c4:	01 c0                	add    eax,eax
  4012c6:	89 85 60 ff ff ff    	mov    DWORD PTR [rbp-0xa0],eax
  4012cc:	eb 02                	jmp    4012d0 <CheckSolution+0xc0a>
  4012ce:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  4012cf:	fe c7                	inc    bh
  4012d1:	85 64 ff ff          	test   DWORD PTR [rdi+rdi*8-0x1],esp
  4012d5:	ff 76 27             	push   QWORD PTR [rsi+0x27]
  4012d8:	00 00                	add    BYTE PTR [rax],al
  4012da:	8b 85 64 ff ff ff    	mov    eax,DWORD PTR [rbp-0x9c]
  4012e0:	34 f9                	xor    al,0xf9
  4012e2:	89 85 64 ff ff ff    	mov    DWORD PTR [rbp-0x9c],eax
  4012e8:	c7 85 68 ff ff ff 48 	mov    DWORD PTR [rbp-0x98],0x19948
  4012ef:	99 01 00 
  4012f2:	8b 85 68 ff ff ff    	mov    eax,DWORD PTR [rbp-0x98]
  4012f8:	d1 f8                	sar    eax,1
  4012fa:	89 85 68 ff ff ff    	mov    DWORD PTR [rbp-0x98],eax
  401300:	eb 02                	jmp    401304 <CheckSolution+0xc3e>
  401302:	89 63 c7             	mov    DWORD PTR [rbx-0x39],esp
  401305:	85 6c ff ff          	test   DWORD PTR [rdi+rdi*8-0x1],ebp
  401309:	ff e5                	jmp    rbp
  40130b:	18 00                	sbb    BYTE PTR [rax],al
  40130d:	00 8b 85 6c ff ff    	add    BYTE PTR [rbx-0x937b],cl
  401313:	ff 01                	inc    DWORD PTR [rcx]
  401315:	c0 89 85 6c ff ff ff 	ror    BYTE PTR [rcx-0x937b],0xff
  40131c:	c7 85 70 ff ff ff 2b 	mov    DWORD PTR [rbp-0x90],0x312b
  401323:	31 00 00 
  401326:	eb 02                	jmp    40132a <CheckSolution+0xc64>
  401328:	03 47 eb             	add    eax,DWORD PTR [rdi-0x15]
  40132b:	02 38                	add    bh,BYTE PTR [rax]
  40132d:	ab                   	stos   DWORD PTR es:[rdi],eax
  40132e:	c7 85 74 ff ff ff d1 	mov    DWORD PTR [rbp-0x8c],0x72d1
  401335:	72 00 00 
  401338:	8b 85 74 ff ff ff    	mov    eax,DWORD PTR [rbp-0x8c]
  40133e:	01 c0                	add    eax,eax
  401340:	89 85 74 ff ff ff    	mov    DWORD PTR [rbp-0x8c],eax
  401346:	c7 85 78 ff ff ff 68 	mov    DWORD PTR [rbp-0x88],0x10268
  40134d:	02 01 00 
  401350:	8b 85 78 ff ff ff    	mov    eax,DWORD PTR [rbp-0x88]
  401356:	c1 f8 03             	sar    eax,0x3
  401359:	89 85 78 ff ff ff    	mov    DWORD PTR [rbp-0x88],eax
  40135f:	c7 85 7c ff ff ff aa 	mov    DWORD PTR [rbp-0x84],0xb0aa
  401366:	b0 00 00 
  401369:	8b 85 7c ff ff ff    	mov    eax,DWORD PTR [rbp-0x84]
  40136f:	d1 f8                	sar    eax,1
  401371:	89 85 7c ff ff ff    	mov    DWORD PTR [rbp-0x84],eax
  401377:	eb 02                	jmp    40137b <CheckSolution+0xcb5>
  401379:	86 5c c7 45          	xchg   BYTE PTR [rdi+rax*8+0x45],bl
  40137d:	80 48 78 00          	or     BYTE PTR [rax+0x78],0x0
  401381:	00 8b 45 80 83 f0    	add    BYTE PTR [rbx-0xf7c7fbb],cl
  401387:	69 89 45 80 eb 02 16 	imul   ecx,DWORD PTR [rcx+0x2eb8045],0x45c7bf16
  40138e:	bf c7 45 
  401391:	84 7f 51             	test   BYTE PTR [rdi+0x51],bh
  401394:	00 00                	add    BYTE PTR [rax],al
  401396:	8b 45 84             	mov    eax,DWORD PTR [rbp-0x7c]
  401399:	83 f0 0a             	xor    eax,0xa
  40139c:	89 45 84             	mov    DWORD PTR [rbp-0x7c],eax
  40139f:	eb 02                	jmp    4013a3 <CheckSolution+0xcdd>
  4013a1:	59                   	pop    rcx
  4013a2:	b0 c7                	mov    al,0xc7
  4013a4:	45 88 a5 7d 00 00 8b 	mov    BYTE PTR [r13-0x74ffff83],r12b
  4013ab:	45 88 83 f0 7d 89 45 	mov    BYTE PTR [r11+0x45897df0],r8b
  4013b2:	88 eb                	mov    bl,ch
  4013b4:	02 9d 5b c7 45 8c    	add    bl,BYTE PTR [rbp-0x73ba38a5]
  4013ba:	c6                   	(bad)  
  4013bb:	8f 00                	pop    QWORD PTR [rax]
  4013bd:	00 8b 45 8c 34 ec    	add    BYTE PTR [rbx-0x13cb73bb],cl
  4013c3:	89 45 8c             	mov    DWORD PTR [rbp-0x74],eax
  4013c6:	eb 02                	jmp    4013ca <CheckSolution+0xd04>
  4013c8:	54                   	push   rsp
  4013c9:	db c7                	fcmovnb st,st(7)
  4013cb:	45 90                	rex.RB xchg r8d,eax
  4013cd:	10 b9 00 00 8b 45    	adc    BYTE PTR [rcx+0x458b0000],bh
  4013d3:	90                   	nop
  4013d4:	34 de                	xor    al,0xde
  4013d6:	89 45 90             	mov    DWORD PTR [rbp-0x70],eax
  4013d9:	c7 45 94 02 82 00 00 	mov    DWORD PTR [rbp-0x6c],0x8202
  4013e0:	eb 02                	jmp    4013e4 <CheckSolution+0xd1e>
  4013e2:	93                   	xchg   ebx,eax
  4013e3:	ed                   	in     eax,dx
  4013e4:	c7 45 98 c0 72 0e 00 	mov    DWORD PTR [rbp-0x68],0xe72c0
  4013eb:	8b 45 98             	mov    eax,DWORD PTR [rbp-0x68]
  4013ee:	c1 f8 04             	sar    eax,0x4
  4013f1:	89 45 98             	mov    DWORD PTR [rbp-0x68],eax
  4013f4:	eb 02                	jmp    4013f8 <CheckSolution+0xd32>
  4013f6:	fc                   	cld    
  4013f7:	66 c7 45 9c 5e fe    	mov    WORD PTR [rbp-0x64],0xfe5e
  4013fd:	00 00                	add    BYTE PTR [rax],al
  4013ff:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
  401402:	34 f2                	xor    al,0xf2
  401404:	89 45 9c             	mov    DWORD PTR [rbp-0x64],eax
  401407:	eb 02                	jmp    40140b <CheckSolution+0xd45>
  401409:	d0 49 c7             	ror    BYTE PTR [rcx-0x39],1
  40140c:	45 a0 ef 24 00 00 8b 	rex.RB movabs al,ds:0x34a0458b000024ef
  401413:	45 a0 34 
  401416:	e3 89                	jrcxz  4013a1 <CheckSolution+0xcdb>
  401418:	45 a0 eb 02 d4 f1 c7 	rex.RB movabs al,ds:0x71a445c7f1d402eb
  40141f:	45 a4 71 
  401422:	e8 00 00 8b 45       	call   45cb1427 <_end+0x456ae3bf>
  401427:	a4                   	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
  401428:	34 be                	xor    al,0xbe
  40142a:	89 45 a4             	mov    DWORD PTR [rbp-0x5c],eax
  40142d:	eb 02                	jmp    401431 <CheckSolution+0xd6b>
  40142f:	45 11 c7             	adc    r15d,r8d
  401432:	45 a8 51             	rex.RB test al,0x51
  401435:	f5                   	cmc    
  401436:	00 00                	add    BYTE PTR [rax],al
  401438:	8b 45 a8             	mov    eax,DWORD PTR [rbp-0x58]
  40143b:	34 f9                	xor    al,0xf9
  40143d:	89 45 a8             	mov    DWORD PTR [rbp-0x58],eax
  401440:	c7 45 ac 78 f2 05 00 	mov    DWORD PTR [rbp-0x54],0x5f278
  401447:	8b 45 ac             	mov    eax,DWORD PTR [rbp-0x54]
  40144a:	c1 f8 03             	sar    eax,0x3
  40144d:	89 45 ac             	mov    DWORD PTR [rbp-0x54],eax
  401450:	eb 02                	jmp    401454 <CheckSolution+0xd8e>
  401452:	9d                   	popf   
  401453:	f4                   	hlt    
  401454:	c7 45 b0 7a 5c 00 00 	mov    DWORD PTR [rbp-0x50],0x5c7a
  40145b:	8b 45 b0             	mov    eax,DWORD PTR [rbp-0x50]
  40145e:	01 c0                	add    eax,eax
  401460:	89 45 b0             	mov    DWORD PTR [rbp-0x50],eax
  401463:	eb 02                	jmp    401467 <CheckSolution+0xda1>
  401465:	c2 ff c7             	ret    0xc7ff
  401468:	45 b4 6c             	rex.RB mov r12b,0x6c
  40146b:	49 00 00             	rex.WB add BYTE PTR [r8],al
  40146e:	8b 45 b4             	mov    eax,DWORD PTR [rbp-0x4c]
  401471:	01 c0                	add    eax,eax
  401473:	89 45 b4             	mov    DWORD PTR [rbp-0x4c],eax
  401476:	eb 02                	jmp    40147a <CheckSolution+0xdb4>
  401478:	ef                   	out    dx,eax
  401479:	c5 c7 45             	(bad)  
  40147c:	b8 86 70 00 00       	mov    eax,0x7086
  401481:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
  401484:	01 c0                	add    eax,eax
  401486:	89 45 b8             	mov    DWORD PTR [rbp-0x48],eax
  401489:	c7 45 bc 3e 9e 00 00 	mov    DWORD PTR [rbp-0x44],0x9e3e
  401490:	eb 02                	jmp    401494 <CheckSolution+0xdce>
  401492:	90                   	nop
  401493:	6b eb 02             	imul   ebp,ebx,0x2
  401496:	b9 fa c7 45 c0       	mov    ecx,0xc045c7fa
  40149b:	69 ca 00 00 8b 45    	imul   ecx,edx,0x458b0000
  4014a1:	c0 83 f0 7e 89 45 c0 	rol    BYTE PTR [rbx+0x45897ef0],0xc0
  4014a8:	c7 45 c4 27 8c 00 00 	mov    DWORD PTR [rbp-0x3c],0x8c27
  4014af:	eb 02                	jmp    4014b3 <CheckSolution+0xded>
  4014b1:	56                   	push   rsi
  4014b2:	af                   	scas   eax,DWORD PTR es:[rdi]
  4014b3:	c7 45 c8 92 f9 00 00 	mov    DWORD PTR [rbp-0x38],0xf992
  4014ba:	eb 02                	jmp    4014be <CheckSolution+0xdf8>
  4014bc:	9a                   	(bad)  
  4014bd:	fe                   	(bad)  
  4014be:	eb 02                	jmp    4014c2 <CheckSolution+0xdfc>
  4014c0:	a4                   	movs   BYTE PTR es:[rdi],BYTE PTR ds:[rsi]
  4014c1:	db c7                	fcmovnb st,st(7)
  4014c3:	45 cc                	rex.RB int3 
  4014c5:	1e                   	(bad)  
  4014c6:	10 00                	adc    BYTE PTR [rax],al
  4014c8:	00 8b 45 cc 83 f0    	add    BYTE PTR [rbx-0xf7c33bb],cl
  4014ce:	18 89 45 cc c7 45    	sbb    BYTE PTR [rcx+0x45c7cc45],cl
  4014d4:	d0                   	(bad)  
  4014d5:	77 e8                	ja     4014bf <CheckSolution+0xdf9>
  4014d7:	00 00                	add    BYTE PTR [rax],al
  4014d9:	eb 02                	jmp    4014dd <CheckSolution+0xe17>
  4014db:	27                   	(bad)  
  4014dc:	f5                   	cmc    
  4014dd:	c7 45 d4 8a 53 00 00 	mov    DWORD PTR [rbp-0x2c],0x538a
  4014e4:	eb 02                	jmp    4014e8 <CheckSolution+0xe22>
  4014e6:	55                   	push   rbp
  4014e7:	99                   	cdq    
  4014e8:	eb 02                	jmp    4014ec <CheckSolution+0xe26>
  4014ea:	a7                   	cmps   DWORD PTR ds:[rsi],DWORD PTR es:[rdi]
  4014eb:	33 c7                	xor    eax,edi
  4014ed:	45 d8 82 51 00 00 8b 	rex.RB fadd DWORD PTR [r10-0x74ffffaf]
  4014f4:	45 d8 34 a3          	rex.RB fdiv DWORD PTR [r11+riz*4]
  4014f8:	89 45 d8             	mov    DWORD PTR [rbp-0x28],eax
  4014fb:	c7 45 dc 2a cf 00 00 	mov    DWORD PTR [rbp-0x24],0xcf2a
  401502:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
  401505:	d1 f8                	sar    eax,1
  401507:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
  40150a:	c7 45 e0 e4 b7 01 00 	mov    DWORD PTR [rbp-0x20],0x1b7e4
  401511:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  401514:	c1 f8 02             	sar    eax,0x2
  401517:	89 45 e0             	mov    DWORD PTR [rbp-0x20],eax
  40151a:	c7 45 e4 40 2a 06 00 	mov    DWORD PTR [rbp-0x1c],0x62a40
  401521:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  401524:	c1 f8 04             	sar    eax,0x4
  401527:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
  40152a:	c7 45 e8 0d ab 00 00 	mov    DWORD PTR [rbp-0x18],0xab0d
  401531:	eb 02                	jmp    401535 <CheckSolution+0xe6f>
  401533:	f3 97                	repz xchg edi,eax
  401535:	c7 45 ec 42 c8 00 00 	mov    DWORD PTR [rbp-0x14],0xc842
  40153c:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  40153f:	d1 f8                	sar    eax,1
  401541:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  401544:	eb 02                	jmp    401548 <CheckSolution+0xe82>
  401546:	8d 34 c7             	lea    esi,[rdi+rax*8]
  401549:	45                   	rex.RB
  40154a:	f0 85 1c 00          	lock test DWORD PTR [rax+rax*1],ebx
  40154e:	00 8b 45 f0 83 f0    	add    BYTE PTR [rbx-0xf7c0fbb],cl
  401554:	17                   	(bad)  
  401555:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  401558:	8b 95 50 fd ff ff    	mov    edx,DWORD PTR [rbp-0x2b0]
  40155e:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401565:	8b 00                	mov    eax,DWORD PTR [rax]
  401567:	0f af d0             	imul   edx,eax
  40156a:	8b 8d 54 fd ff ff    	mov    ecx,DWORD PTR [rbp-0x2ac]
  401570:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401577:	48 83 c0 04          	add    rax,0x4
  40157b:	8b 00                	mov    eax,DWORD PTR [rax]
  40157d:	0f af c1             	imul   eax,ecx
  401580:	89 d1                	mov    ecx,edx
  401582:	29 c1                	sub    ecx,eax
  401584:	8b 95 58 fd ff ff    	mov    edx,DWORD PTR [rbp-0x2a8]
  40158a:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401591:	48 83 c0 08          	add    rax,0x8
  401595:	8b 00                	mov    eax,DWORD PTR [rax]
  401597:	0f af c2             	imul   eax,edx
  40159a:	29 c1                	sub    ecx,eax
  40159c:	8b 95 5c fd ff ff    	mov    edx,DWORD PTR [rbp-0x2a4]
  4015a2:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4015a9:	48 83 c0 0c          	add    rax,0xc
  4015ad:	8b 00                	mov    eax,DWORD PTR [rax]
  4015af:	0f af c2             	imul   eax,edx
  4015b2:	29 c1                	sub    ecx,eax
  4015b4:	8b 95 60 fd ff ff    	mov    edx,DWORD PTR [rbp-0x2a0]
  4015ba:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4015c1:	48 83 c0 10          	add    rax,0x10
  4015c5:	8b 00                	mov    eax,DWORD PTR [rax]
  4015c7:	0f af c2             	imul   eax,edx
  4015ca:	01 c1                	add    ecx,eax
  4015cc:	8b 95 64 fd ff ff    	mov    edx,DWORD PTR [rbp-0x29c]
  4015d2:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4015d9:	48 83 c0 14          	add    rax,0x14
  4015dd:	8b 00                	mov    eax,DWORD PTR [rax]
  4015df:	0f af c2             	imul   eax,edx
  4015e2:	01 c1                	add    ecx,eax
  4015e4:	8b 95 68 fd ff ff    	mov    edx,DWORD PTR [rbp-0x298]
  4015ea:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4015f1:	48 83 c0 18          	add    rax,0x18
  4015f5:	8b 00                	mov    eax,DWORD PTR [rax]
  4015f7:	0f af c2             	imul   eax,edx
  4015fa:	01 c1                	add    ecx,eax
  4015fc:	8b 95 6c fd ff ff    	mov    edx,DWORD PTR [rbp-0x294]
  401602:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401609:	48 83 c0 1c          	add    rax,0x1c
  40160d:	8b 00                	mov    eax,DWORD PTR [rax]
  40160f:	0f af c2             	imul   eax,edx
  401612:	01 c1                	add    ecx,eax
  401614:	8b 95 70 fd ff ff    	mov    edx,DWORD PTR [rbp-0x290]
  40161a:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401621:	48 83 c0 20          	add    rax,0x20
  401625:	8b 00                	mov    eax,DWORD PTR [rax]
  401627:	0f af c2             	imul   eax,edx
  40162a:	01 c1                	add    ecx,eax
  40162c:	8b 95 74 fd ff ff    	mov    edx,DWORD PTR [rbp-0x28c]
  401632:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401639:	48 83 c0 24          	add    rax,0x24
  40163d:	8b 00                	mov    eax,DWORD PTR [rax]
  40163f:	0f af c2             	imul   eax,edx
  401642:	01 c1                	add    ecx,eax
  401644:	8b 95 78 fd ff ff    	mov    edx,DWORD PTR [rbp-0x288]
  40164a:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401651:	48 83 c0 28          	add    rax,0x28
  401655:	8b 00                	mov    eax,DWORD PTR [rax]
  401657:	0f af c2             	imul   eax,edx
  40165a:	01 c1                	add    ecx,eax
  40165c:	8b 95 7c fd ff ff    	mov    edx,DWORD PTR [rbp-0x284]
  401662:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401669:	48 83 c0 2c          	add    rax,0x2c
  40166d:	8b 00                	mov    eax,DWORD PTR [rax]
  40166f:	0f af c2             	imul   eax,edx
  401672:	01 c1                	add    ecx,eax
  401674:	8b 95 80 fd ff ff    	mov    edx,DWORD PTR [rbp-0x280]
  40167a:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401681:	48 83 c0 30          	add    rax,0x30
  401685:	8b 00                	mov    eax,DWORD PTR [rax]
  401687:	0f af c2             	imul   eax,edx
  40168a:	01 c8                	add    eax,ecx
  40168c:	3d 53 87 46 01       	cmp    eax,0x1468753
  401691:	74 0e                	je     4016a1 <CheckSolution+0xfdb>
  401693:	eb 02                	jmp    401697 <CheckSolution+0xfd1>
  401695:	d0 96 b8 00 00 00    	rcl    BYTE PTR [rsi+0xb8],1
  40169b:	00 e9                	add    cl,ch
  40169d:	30 0f                	xor    BYTE PTR [rdi],cl
  40169f:	00 00                	add    BYTE PTR [rax],al
  4016a1:	8b 95 84 fd ff ff    	mov    edx,DWORD PTR [rbp-0x27c]
  4016a7:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4016ae:	8b 00                	mov    eax,DWORD PTR [rax]
  4016b0:	0f af d0             	imul   edx,eax
  4016b3:	8b 8d 88 fd ff ff    	mov    ecx,DWORD PTR [rbp-0x278]
  4016b9:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4016c0:	48 83 c0 04          	add    rax,0x4
  4016c4:	8b 00                	mov    eax,DWORD PTR [rax]
  4016c6:	0f af c1             	imul   eax,ecx
  4016c9:	8d 0c 02             	lea    ecx,[rdx+rax*1]
  4016cc:	8b 95 8c fd ff ff    	mov    edx,DWORD PTR [rbp-0x274]
  4016d2:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4016d9:	48 83 c0 08          	add    rax,0x8
  4016dd:	8b 00                	mov    eax,DWORD PTR [rax]
  4016df:	0f af c2             	imul   eax,edx
  4016e2:	29 c1                	sub    ecx,eax
  4016e4:	8b 95 90 fd ff ff    	mov    edx,DWORD PTR [rbp-0x270]
  4016ea:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4016f1:	48 83 c0 0c          	add    rax,0xc
  4016f5:	8b 00                	mov    eax,DWORD PTR [rax]
  4016f7:	0f af c2             	imul   eax,edx
  4016fa:	01 c1                	add    ecx,eax
  4016fc:	8b 95 94 fd ff ff    	mov    edx,DWORD PTR [rbp-0x26c]
  401702:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401709:	48 83 c0 10          	add    rax,0x10
  40170d:	8b 00                	mov    eax,DWORD PTR [rax]
  40170f:	0f af c2             	imul   eax,edx
  401712:	01 c1                	add    ecx,eax
  401714:	8b 95 98 fd ff ff    	mov    edx,DWORD PTR [rbp-0x268]
  40171a:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401721:	48 83 c0 14          	add    rax,0x14
  401725:	8b 00                	mov    eax,DWORD PTR [rax]
  401727:	0f af c2             	imul   eax,edx
  40172a:	01 c1                	add    ecx,eax
  40172c:	8b 95 9c fd ff ff    	mov    edx,DWORD PTR [rbp-0x264]
  401732:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401739:	48 83 c0 18          	add    rax,0x18
  40173d:	8b 00                	mov    eax,DWORD PTR [rax]
  40173f:	0f af c2             	imul   eax,edx
  401742:	29 c1                	sub    ecx,eax
  401744:	8b 95 a0 fd ff ff    	mov    edx,DWORD PTR [rbp-0x260]
  40174a:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401751:	48 83 c0 1c          	add    rax,0x1c
  401755:	8b 00                	mov    eax,DWORD PTR [rax]
  401757:	0f af c2             	imul   eax,edx
  40175a:	29 c1                	sub    ecx,eax
  40175c:	8b 95 a4 fd ff ff    	mov    edx,DWORD PTR [rbp-0x25c]
  401762:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401769:	48 83 c0 20          	add    rax,0x20
  40176d:	8b 00                	mov    eax,DWORD PTR [rax]
  40176f:	0f af c2             	imul   eax,edx
  401772:	29 c1                	sub    ecx,eax
  401774:	8b 95 a8 fd ff ff    	mov    edx,DWORD PTR [rbp-0x258]
  40177a:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401781:	48 83 c0 24          	add    rax,0x24
  401785:	8b 00                	mov    eax,DWORD PTR [rax]
  401787:	0f af c2             	imul   eax,edx
  40178a:	29 c1                	sub    ecx,eax
  40178c:	8b 95 ac fd ff ff    	mov    edx,DWORD PTR [rbp-0x254]
  401792:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401799:	48 83 c0 28          	add    rax,0x28
  40179d:	8b 00                	mov    eax,DWORD PTR [rax]
  40179f:	0f af c2             	imul   eax,edx
  4017a2:	29 c1                	sub    ecx,eax
  4017a4:	8b 95 b0 fd ff ff    	mov    edx,DWORD PTR [rbp-0x250]
  4017aa:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4017b1:	48 83 c0 2c          	add    rax,0x2c
  4017b5:	8b 00                	mov    eax,DWORD PTR [rax]
  4017b7:	0f af c2             	imul   eax,edx
  4017ba:	29 c1                	sub    ecx,eax
  4017bc:	8b 95 b4 fd ff ff    	mov    edx,DWORD PTR [rbp-0x24c]
  4017c2:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4017c9:	48 83 c0 30          	add    rax,0x30
  4017cd:	8b 00                	mov    eax,DWORD PTR [rax]
  4017cf:	0f af c2             	imul   eax,edx
  4017d2:	01 c8                	add    eax,ecx
  4017d4:	3d 30 2f 16 00       	cmp    eax,0x162f30
  4017d9:	74 0e                	je     4017e9 <CheckSolution+0x1123>
  4017db:	eb 02                	jmp    4017df <CheckSolution+0x1119>
  4017dd:	d9 8a b8 00 00 00    	(bad)  [rdx+0xb8]
  4017e3:	00 e9                	add    cl,ch
  4017e5:	e8 0d 00 00 8b       	call   ffffffff8b4017f7 <_end+0xffffffff8adfe78f>
  4017ea:	85 b8 fd ff ff f7    	test   DWORD PTR [rax-0x8000003],edi
  4017f0:	d8 89 c2 48 8b 85    	fmul   DWORD PTR [rcx-0x7a74b73e]
  4017f6:	48 fd                	rex.W std 
  4017f8:	ff                   	(bad)  
  4017f9:	ff 8b 00 0f af d0    	dec    DWORD PTR [rbx-0x2f50f100]
  4017ff:	8b 8d bc fd ff ff    	mov    ecx,DWORD PTR [rbp-0x244]
  401805:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  40180c:	48 83 c0 04          	add    rax,0x4
  401810:	8b 00                	mov    eax,DWORD PTR [rax]
  401812:	0f af c1             	imul   eax,ecx
  401815:	8d 0c 02             	lea    ecx,[rdx+rax*1]
  401818:	8b 95 c0 fd ff ff    	mov    edx,DWORD PTR [rbp-0x240]
  40181e:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401825:	48 83 c0 08          	add    rax,0x8
  401829:	8b 00                	mov    eax,DWORD PTR [rax]
  40182b:	0f af c2             	imul   eax,edx
  40182e:	29 c1                	sub    ecx,eax
  401830:	8b 95 c4 fd ff ff    	mov    edx,DWORD PTR [rbp-0x23c]
  401836:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  40183d:	48 83 c0 0c          	add    rax,0xc
  401841:	8b 00                	mov    eax,DWORD PTR [rax]
  401843:	0f af c2             	imul   eax,edx
  401846:	01 c1                	add    ecx,eax
  401848:	8b 95 c8 fd ff ff    	mov    edx,DWORD PTR [rbp-0x238]
  40184e:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401855:	48 83 c0 10          	add    rax,0x10
  401859:	8b 00                	mov    eax,DWORD PTR [rax]
  40185b:	0f af c2             	imul   eax,edx
  40185e:	29 c1                	sub    ecx,eax
  401860:	8b 95 cc fd ff ff    	mov    edx,DWORD PTR [rbp-0x234]
  401866:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  40186d:	48 83 c0 14          	add    rax,0x14
  401871:	8b 00                	mov    eax,DWORD PTR [rax]
  401873:	0f af c2             	imul   eax,edx
  401876:	29 c1                	sub    ecx,eax
  401878:	8b 95 d0 fd ff ff    	mov    edx,DWORD PTR [rbp-0x230]
  40187e:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401885:	48 83 c0 18          	add    rax,0x18
  401889:	8b 00                	mov    eax,DWORD PTR [rax]
  40188b:	0f af c2             	imul   eax,edx
  40188e:	29 c1                	sub    ecx,eax
  401890:	8b 95 d4 fd ff ff    	mov    edx,DWORD PTR [rbp-0x22c]
  401896:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  40189d:	48 83 c0 1c          	add    rax,0x1c
  4018a1:	8b 00                	mov    eax,DWORD PTR [rax]
  4018a3:	0f af c2             	imul   eax,edx
  4018a6:	29 c1                	sub    ecx,eax
  4018a8:	8b 95 d8 fd ff ff    	mov    edx,DWORD PTR [rbp-0x228]
  4018ae:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4018b5:	48 83 c0 20          	add    rax,0x20
  4018b9:	8b 00                	mov    eax,DWORD PTR [rax]
  4018bb:	0f af c2             	imul   eax,edx
  4018be:	01 c1                	add    ecx,eax
  4018c0:	8b 95 dc fd ff ff    	mov    edx,DWORD PTR [rbp-0x224]
  4018c6:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4018cd:	48 83 c0 24          	add    rax,0x24
  4018d1:	8b 00                	mov    eax,DWORD PTR [rax]
  4018d3:	0f af c2             	imul   eax,edx
  4018d6:	29 c1                	sub    ecx,eax
  4018d8:	8b 95 e0 fd ff ff    	mov    edx,DWORD PTR [rbp-0x220]
  4018de:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4018e5:	48 83 c0 28          	add    rax,0x28
  4018e9:	8b 00                	mov    eax,DWORD PTR [rax]
  4018eb:	0f af c2             	imul   eax,edx
  4018ee:	01 c1                	add    ecx,eax
  4018f0:	8b 95 e4 fd ff ff    	mov    edx,DWORD PTR [rbp-0x21c]
  4018f6:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4018fd:	48 83 c0 2c          	add    rax,0x2c
  401901:	8b 00                	mov    eax,DWORD PTR [rax]
  401903:	0f af c2             	imul   eax,edx
  401906:	01 c1                	add    ecx,eax
  401908:	8b 95 e8 fd ff ff    	mov    edx,DWORD PTR [rbp-0x218]
  40190e:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401915:	48 83 c0 30          	add    rax,0x30
  401919:	8b 00                	mov    eax,DWORD PTR [rax]
  40191b:	0f af c2             	imul   eax,edx
  40191e:	01 c8                	add    eax,ecx
  401920:	3d 9c 93 b2 ff       	cmp    eax,0xffb2939c
  401925:	74 0e                	je     401935 <CheckSolution+0x126f>
  401927:	eb 02                	jmp    40192b <CheckSolution+0x1265>
  401929:	89 93 b8 00 00 00    	mov    DWORD PTR [rbx+0xb8],edx
  40192f:	00 e9                	add    cl,ch
  401931:	9c                   	pushf  
  401932:	0c 00                	or     al,0x0
  401934:	00 8b 95 ec fd ff    	add    BYTE PTR [rbx-0x2136b],cl
  40193a:	ff 48 8b             	dec    DWORD PTR [rax-0x75]
  40193d:	85 48 fd             	test   DWORD PTR [rax-0x3],ecx
  401940:	ff                   	(bad)  
  401941:	ff 8b 00 0f af d0    	dec    DWORD PTR [rbx-0x2f50f100]
  401947:	8b 8d f0 fd ff ff    	mov    ecx,DWORD PTR [rbp-0x210]
  40194d:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401954:	48 83 c0 04          	add    rax,0x4
  401958:	8b 00                	mov    eax,DWORD PTR [rax]
  40195a:	0f af c1             	imul   eax,ecx
  40195d:	89 d1                	mov    ecx,edx
  40195f:	29 c1                	sub    ecx,eax
  401961:	8b 95 f4 fd ff ff    	mov    edx,DWORD PTR [rbp-0x20c]
  401967:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  40196e:	48 83 c0 08          	add    rax,0x8
  401972:	8b 00                	mov    eax,DWORD PTR [rax]
  401974:	0f af c2             	imul   eax,edx
  401977:	29 c1                	sub    ecx,eax
  401979:	8b 95 f8 fd ff ff    	mov    edx,DWORD PTR [rbp-0x208]
  40197f:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401986:	48 83 c0 0c          	add    rax,0xc
  40198a:	8b 00                	mov    eax,DWORD PTR [rax]
  40198c:	0f af c2             	imul   eax,edx
  40198f:	29 c1                	sub    ecx,eax
  401991:	8b 95 fc fd ff ff    	mov    edx,DWORD PTR [rbp-0x204]
  401997:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  40199e:	48 83 c0 10          	add    rax,0x10
  4019a2:	8b 00                	mov    eax,DWORD PTR [rax]
  4019a4:	0f af c2             	imul   eax,edx
  4019a7:	01 c1                	add    ecx,eax
  4019a9:	8b 95 00 fe ff ff    	mov    edx,DWORD PTR [rbp-0x200]
  4019af:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4019b6:	48 83 c0 14          	add    rax,0x14
  4019ba:	8b 00                	mov    eax,DWORD PTR [rax]
  4019bc:	0f af c2             	imul   eax,edx
  4019bf:	29 c1                	sub    ecx,eax
  4019c1:	8b 95 04 fe ff ff    	mov    edx,DWORD PTR [rbp-0x1fc]
  4019c7:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4019ce:	48 83 c0 18          	add    rax,0x18
  4019d2:	8b 00                	mov    eax,DWORD PTR [rax]
  4019d4:	0f af c2             	imul   eax,edx
  4019d7:	01 c1                	add    ecx,eax
  4019d9:	8b 95 08 fe ff ff    	mov    edx,DWORD PTR [rbp-0x1f8]
  4019df:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4019e6:	48 83 c0 1c          	add    rax,0x1c
  4019ea:	8b 00                	mov    eax,DWORD PTR [rax]
  4019ec:	0f af c2             	imul   eax,edx
  4019ef:	01 c1                	add    ecx,eax
  4019f1:	8b 95 0c fe ff ff    	mov    edx,DWORD PTR [rbp-0x1f4]
  4019f7:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4019fe:	48 83 c0 20          	add    rax,0x20
  401a02:	8b 00                	mov    eax,DWORD PTR [rax]
  401a04:	0f af c2             	imul   eax,edx
  401a07:	29 c1                	sub    ecx,eax
  401a09:	8b 95 10 fe ff ff    	mov    edx,DWORD PTR [rbp-0x1f0]
  401a0f:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401a16:	48 83 c0 24          	add    rax,0x24
  401a1a:	8b 00                	mov    eax,DWORD PTR [rax]
  401a1c:	0f af c2             	imul   eax,edx
  401a1f:	29 c1                	sub    ecx,eax
  401a21:	8b 95 14 fe ff ff    	mov    edx,DWORD PTR [rbp-0x1ec]
  401a27:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401a2e:	48 83 c0 28          	add    rax,0x28
  401a32:	8b 00                	mov    eax,DWORD PTR [rax]
  401a34:	0f af c2             	imul   eax,edx
  401a37:	01 c1                	add    ecx,eax
  401a39:	8b 95 18 fe ff ff    	mov    edx,DWORD PTR [rbp-0x1e8]
  401a3f:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401a46:	48 83 c0 2c          	add    rax,0x2c
  401a4a:	8b 00                	mov    eax,DWORD PTR [rax]
  401a4c:	0f af c2             	imul   eax,edx
  401a4f:	29 c1                	sub    ecx,eax
  401a51:	8b 95 1c fe ff ff    	mov    edx,DWORD PTR [rbp-0x1e4]
  401a57:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401a5e:	48 83 c0 30          	add    rax,0x30
  401a62:	8b 00                	mov    eax,DWORD PTR [rax]
  401a64:	0f af c2             	imul   eax,edx
  401a67:	29 c1                	sub    ecx,eax
  401a69:	89 c8                	mov    eax,ecx
  401a6b:	3d e3 90 ac ff       	cmp    eax,0xffac90e3
  401a70:	74 0e                	je     401a80 <CheckSolution+0x13ba>
  401a72:	eb 02                	jmp    401a76 <CheckSolution+0x13b0>
  401a74:	48 fd                	rex.W std 
  401a76:	b8 00 00 00 00       	mov    eax,0x0
  401a7b:	e9 51 0b 00 00       	jmp    4025d1 <CheckSolution+0x1f0b>
  401a80:	8b 85 20 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1e0]
  401a86:	f7 d8                	neg    eax
  401a88:	89 c2                	mov    edx,eax
  401a8a:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401a91:	8b 00                	mov    eax,DWORD PTR [rax]
  401a93:	0f af d0             	imul   edx,eax
  401a96:	8b 8d 24 fe ff ff    	mov    ecx,DWORD PTR [rbp-0x1dc]
  401a9c:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401aa3:	48 83 c0 04          	add    rax,0x4
  401aa7:	8b 00                	mov    eax,DWORD PTR [rax]
  401aa9:	0f af c1             	imul   eax,ecx
  401aac:	8d 0c 02             	lea    ecx,[rdx+rax*1]
  401aaf:	8b 95 28 fe ff ff    	mov    edx,DWORD PTR [rbp-0x1d8]
  401ab5:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401abc:	48 83 c0 08          	add    rax,0x8
  401ac0:	8b 00                	mov    eax,DWORD PTR [rax]
  401ac2:	0f af c2             	imul   eax,edx
  401ac5:	01 c1                	add    ecx,eax
  401ac7:	8b 95 2c fe ff ff    	mov    edx,DWORD PTR [rbp-0x1d4]
  401acd:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401ad4:	48 83 c0 0c          	add    rax,0xc
  401ad8:	8b 00                	mov    eax,DWORD PTR [rax]
  401ada:	0f af c2             	imul   eax,edx
  401add:	01 c1                	add    ecx,eax
  401adf:	8b 95 30 fe ff ff    	mov    edx,DWORD PTR [rbp-0x1d0]
  401ae5:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401aec:	48 83 c0 10          	add    rax,0x10
  401af0:	8b 00                	mov    eax,DWORD PTR [rax]
  401af2:	0f af c2             	imul   eax,edx
  401af5:	01 c1                	add    ecx,eax
  401af7:	8b 95 34 fe ff ff    	mov    edx,DWORD PTR [rbp-0x1cc]
  401afd:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401b04:	48 83 c0 14          	add    rax,0x14
  401b08:	8b 00                	mov    eax,DWORD PTR [rax]
  401b0a:	0f af c2             	imul   eax,edx
  401b0d:	29 c1                	sub    ecx,eax
  401b0f:	8b 95 38 fe ff ff    	mov    edx,DWORD PTR [rbp-0x1c8]
  401b15:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401b1c:	48 83 c0 18          	add    rax,0x18
  401b20:	8b 00                	mov    eax,DWORD PTR [rax]
  401b22:	0f af c2             	imul   eax,edx
  401b25:	29 c1                	sub    ecx,eax
  401b27:	8b 95 3c fe ff ff    	mov    edx,DWORD PTR [rbp-0x1c4]
  401b2d:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401b34:	48 83 c0 1c          	add    rax,0x1c
  401b38:	8b 00                	mov    eax,DWORD PTR [rax]
  401b3a:	0f af c2             	imul   eax,edx
  401b3d:	29 c1                	sub    ecx,eax
  401b3f:	8b 95 40 fe ff ff    	mov    edx,DWORD PTR [rbp-0x1c0]
  401b45:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401b4c:	48 83 c0 20          	add    rax,0x20
  401b50:	8b 00                	mov    eax,DWORD PTR [rax]
  401b52:	0f af c2             	imul   eax,edx
  401b55:	01 c1                	add    ecx,eax
  401b57:	8b 95 44 fe ff ff    	mov    edx,DWORD PTR [rbp-0x1bc]
  401b5d:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401b64:	48 83 c0 24          	add    rax,0x24
  401b68:	8b 00                	mov    eax,DWORD PTR [rax]
  401b6a:	0f af c2             	imul   eax,edx
  401b6d:	01 c1                	add    ecx,eax
  401b6f:	8b 95 48 fe ff ff    	mov    edx,DWORD PTR [rbp-0x1b8]
  401b75:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401b7c:	48 83 c0 28          	add    rax,0x28
  401b80:	8b 00                	mov    eax,DWORD PTR [rax]
  401b82:	0f af c2             	imul   eax,edx
  401b85:	29 c1                	sub    ecx,eax
  401b87:	8b 95 4c fe ff ff    	mov    edx,DWORD PTR [rbp-0x1b4]
  401b8d:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401b94:	48 83 c0 2c          	add    rax,0x2c
  401b98:	8b 00                	mov    eax,DWORD PTR [rax]
  401b9a:	0f af c2             	imul   eax,edx
  401b9d:	01 c1                	add    ecx,eax
  401b9f:	8b 95 50 fe ff ff    	mov    edx,DWORD PTR [rbp-0x1b0]
  401ba5:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401bac:	48 83 c0 30          	add    rax,0x30
  401bb0:	8b 00                	mov    eax,DWORD PTR [rax]
  401bb2:	0f af c2             	imul   eax,edx
  401bb5:	01 c8                	add    eax,ecx
  401bb7:	3d 88 d2 76 00       	cmp    eax,0x76d288
  401bbc:	74 0e                	je     401bcc <CheckSolution+0x1506>
  401bbe:	eb 02                	jmp    401bc2 <CheckSolution+0x14fc>
  401bc0:	b7 af                	mov    bh,0xaf
  401bc2:	b8 00 00 00 00       	mov    eax,0x0
  401bc7:	e9 05 0a 00 00       	jmp    4025d1 <CheckSolution+0x1f0b>
  401bcc:	8b 85 54 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1ac]
  401bd2:	f7 d8                	neg    eax
  401bd4:	89 c2                	mov    edx,eax
  401bd6:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401bdd:	8b 00                	mov    eax,DWORD PTR [rax]
  401bdf:	0f af d0             	imul   edx,eax
  401be2:	8b 8d 58 fe ff ff    	mov    ecx,DWORD PTR [rbp-0x1a8]
  401be8:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401bef:	48 83 c0 04          	add    rax,0x4
  401bf3:	8b 00                	mov    eax,DWORD PTR [rax]
  401bf5:	0f af c1             	imul   eax,ecx
  401bf8:	89 d1                	mov    ecx,edx
  401bfa:	29 c1                	sub    ecx,eax
  401bfc:	8b 95 5c fe ff ff    	mov    edx,DWORD PTR [rbp-0x1a4]
  401c02:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401c09:	48 83 c0 08          	add    rax,0x8
  401c0d:	8b 00                	mov    eax,DWORD PTR [rax]
  401c0f:	0f af c2             	imul   eax,edx
  401c12:	01 c1                	add    ecx,eax
  401c14:	8b 95 60 fe ff ff    	mov    edx,DWORD PTR [rbp-0x1a0]
  401c1a:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401c21:	48 83 c0 0c          	add    rax,0xc
  401c25:	8b 00                	mov    eax,DWORD PTR [rax]
  401c27:	0f af c2             	imul   eax,edx
  401c2a:	29 c1                	sub    ecx,eax
  401c2c:	8b 95 64 fe ff ff    	mov    edx,DWORD PTR [rbp-0x19c]
  401c32:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401c39:	48 83 c0 10          	add    rax,0x10
  401c3d:	8b 00                	mov    eax,DWORD PTR [rax]
  401c3f:	0f af c2             	imul   eax,edx
  401c42:	29 c1                	sub    ecx,eax
  401c44:	8b 95 68 fe ff ff    	mov    edx,DWORD PTR [rbp-0x198]
  401c4a:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401c51:	48 83 c0 14          	add    rax,0x14
  401c55:	8b 00                	mov    eax,DWORD PTR [rax]
  401c57:	0f af c2             	imul   eax,edx
  401c5a:	29 c1                	sub    ecx,eax
  401c5c:	8b 95 6c fe ff ff    	mov    edx,DWORD PTR [rbp-0x194]
  401c62:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401c69:	48 83 c0 18          	add    rax,0x18
  401c6d:	8b 00                	mov    eax,DWORD PTR [rax]
  401c6f:	0f af c2             	imul   eax,edx
  401c72:	01 c1                	add    ecx,eax
  401c74:	8b 95 70 fe ff ff    	mov    edx,DWORD PTR [rbp-0x190]
  401c7a:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401c81:	48 83 c0 1c          	add    rax,0x1c
  401c85:	8b 00                	mov    eax,DWORD PTR [rax]
  401c87:	0f af c2             	imul   eax,edx
  401c8a:	01 c1                	add    ecx,eax
  401c8c:	8b 95 74 fe ff ff    	mov    edx,DWORD PTR [rbp-0x18c]
  401c92:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401c99:	48 83 c0 20          	add    rax,0x20
  401c9d:	8b 00                	mov    eax,DWORD PTR [rax]
  401c9f:	0f af c2             	imul   eax,edx
  401ca2:	29 c1                	sub    ecx,eax
  401ca4:	8b 95 78 fe ff ff    	mov    edx,DWORD PTR [rbp-0x188]
  401caa:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401cb1:	48 83 c0 24          	add    rax,0x24
  401cb5:	8b 00                	mov    eax,DWORD PTR [rax]
  401cb7:	0f af c2             	imul   eax,edx
  401cba:	29 c1                	sub    ecx,eax
  401cbc:	8b 95 7c fe ff ff    	mov    edx,DWORD PTR [rbp-0x184]
  401cc2:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401cc9:	48 83 c0 28          	add    rax,0x28
  401ccd:	8b 00                	mov    eax,DWORD PTR [rax]
  401ccf:	0f af c2             	imul   eax,edx
  401cd2:	01 c1                	add    ecx,eax
  401cd4:	8b 95 80 fe ff ff    	mov    edx,DWORD PTR [rbp-0x180]
  401cda:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401ce1:	48 83 c0 2c          	add    rax,0x2c
  401ce5:	8b 00                	mov    eax,DWORD PTR [rax]
  401ce7:	0f af c2             	imul   eax,edx
  401cea:	01 c1                	add    ecx,eax
  401cec:	8b 95 84 fe ff ff    	mov    edx,DWORD PTR [rbp-0x17c]
  401cf2:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401cf9:	48 83 c0 30          	add    rax,0x30
  401cfd:	8b 00                	mov    eax,DWORD PTR [rax]
  401cff:	0f af c2             	imul   eax,edx
  401d02:	29 c1                	sub    ecx,eax
  401d04:	89 c8                	mov    eax,ecx
  401d06:	3d 99 bf 78 ff       	cmp    eax,0xff78bf99
  401d0b:	74 0e                	je     401d1b <CheckSolution+0x1655>
  401d0d:	eb 02                	jmp    401d11 <CheckSolution+0x164b>
  401d0f:	66 62                	data16 (bad) 
  401d11:	b8 00 00 00 00       	mov    eax,0x0
  401d16:	e9 b6 08 00 00       	jmp    4025d1 <CheckSolution+0x1f0b>
  401d1b:	8b 85 88 fe ff ff    	mov    eax,DWORD PTR [rbp-0x178]
  401d21:	f7 d8                	neg    eax
  401d23:	89 c2                	mov    edx,eax
  401d25:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401d2c:	8b 00                	mov    eax,DWORD PTR [rax]
  401d2e:	0f af d0             	imul   edx,eax
  401d31:	8b 8d 8c fe ff ff    	mov    ecx,DWORD PTR [rbp-0x174]
  401d37:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401d3e:	48 83 c0 04          	add    rax,0x4
  401d42:	8b 00                	mov    eax,DWORD PTR [rax]
  401d44:	0f af c1             	imul   eax,ecx
  401d47:	8d 0c 02             	lea    ecx,[rdx+rax*1]
  401d4a:	8b 95 90 fe ff ff    	mov    edx,DWORD PTR [rbp-0x170]
  401d50:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401d57:	48 83 c0 08          	add    rax,0x8
  401d5b:	8b 00                	mov    eax,DWORD PTR [rax]
  401d5d:	0f af c2             	imul   eax,edx
  401d60:	01 c1                	add    ecx,eax
  401d62:	8b 95 94 fe ff ff    	mov    edx,DWORD PTR [rbp-0x16c]
  401d68:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401d6f:	48 83 c0 0c          	add    rax,0xc
  401d73:	8b 00                	mov    eax,DWORD PTR [rax]
  401d75:	0f af c2             	imul   eax,edx
  401d78:	29 c1                	sub    ecx,eax
  401d7a:	8b 95 98 fe ff ff    	mov    edx,DWORD PTR [rbp-0x168]
  401d80:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401d87:	48 83 c0 10          	add    rax,0x10
  401d8b:	8b 00                	mov    eax,DWORD PTR [rax]
  401d8d:	0f af c2             	imul   eax,edx
  401d90:	29 c1                	sub    ecx,eax
  401d92:	8b 95 9c fe ff ff    	mov    edx,DWORD PTR [rbp-0x164]
  401d98:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401d9f:	48 83 c0 14          	add    rax,0x14
  401da3:	8b 00                	mov    eax,DWORD PTR [rax]
  401da5:	0f af c2             	imul   eax,edx
  401da8:	29 c1                	sub    ecx,eax
  401daa:	8b 95 a0 fe ff ff    	mov    edx,DWORD PTR [rbp-0x160]
  401db0:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401db7:	48 83 c0 18          	add    rax,0x18
  401dbb:	8b 00                	mov    eax,DWORD PTR [rax]
  401dbd:	0f af c2             	imul   eax,edx
  401dc0:	29 c1                	sub    ecx,eax
  401dc2:	8b 95 a4 fe ff ff    	mov    edx,DWORD PTR [rbp-0x15c]
  401dc8:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401dcf:	48 83 c0 1c          	add    rax,0x1c
  401dd3:	8b 00                	mov    eax,DWORD PTR [rax]
  401dd5:	0f af c2             	imul   eax,edx
  401dd8:	01 c1                	add    ecx,eax
  401dda:	8b 95 a8 fe ff ff    	mov    edx,DWORD PTR [rbp-0x158]
  401de0:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401de7:	48 83 c0 20          	add    rax,0x20
  401deb:	8b 00                	mov    eax,DWORD PTR [rax]
  401ded:	0f af c2             	imul   eax,edx
  401df0:	29 c1                	sub    ecx,eax
  401df2:	8b 95 ac fe ff ff    	mov    edx,DWORD PTR [rbp-0x154]
  401df8:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401dff:	48 83 c0 24          	add    rax,0x24
  401e03:	8b 00                	mov    eax,DWORD PTR [rax]
  401e05:	0f af c2             	imul   eax,edx
  401e08:	01 c1                	add    ecx,eax
  401e0a:	8b 95 b0 fe ff ff    	mov    edx,DWORD PTR [rbp-0x150]
  401e10:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401e17:	48 83 c0 28          	add    rax,0x28
  401e1b:	8b 00                	mov    eax,DWORD PTR [rax]
  401e1d:	0f af c2             	imul   eax,edx
  401e20:	29 c1                	sub    ecx,eax
  401e22:	8b 95 b4 fe ff ff    	mov    edx,DWORD PTR [rbp-0x14c]
  401e28:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401e2f:	48 83 c0 2c          	add    rax,0x2c
  401e33:	8b 00                	mov    eax,DWORD PTR [rax]
  401e35:	0f af c2             	imul   eax,edx
  401e38:	29 c1                	sub    ecx,eax
  401e3a:	8b 95 b8 fe ff ff    	mov    edx,DWORD PTR [rbp-0x148]
  401e40:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401e47:	48 83 c0 30          	add    rax,0x30
  401e4b:	8b 00                	mov    eax,DWORD PTR [rax]
  401e4d:	0f af c2             	imul   eax,edx
  401e50:	01 c8                	add    eax,ecx
  401e52:	3d e3 96 f4 ff       	cmp    eax,0xfff496e3
  401e57:	74 0e                	je     401e67 <CheckSolution+0x17a1>
  401e59:	eb 02                	jmp    401e5d <CheckSolution+0x1797>
  401e5b:	39 7b b8             	cmp    DWORD PTR [rbx-0x48],edi
  401e5e:	00 00                	add    BYTE PTR [rax],al
  401e60:	00 00                	add    BYTE PTR [rax],al
  401e62:	e9 6a 07 00 00       	jmp    4025d1 <CheckSolution+0x1f0b>
  401e67:	8b 85 bc fe ff ff    	mov    eax,DWORD PTR [rbp-0x144]
  401e6d:	f7 d8                	neg    eax
  401e6f:	89 c2                	mov    edx,eax
  401e71:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401e78:	8b 00                	mov    eax,DWORD PTR [rax]
  401e7a:	0f af d0             	imul   edx,eax
  401e7d:	8b 8d c0 fe ff ff    	mov    ecx,DWORD PTR [rbp-0x140]
  401e83:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401e8a:	48 83 c0 04          	add    rax,0x4
  401e8e:	8b 00                	mov    eax,DWORD PTR [rax]
  401e90:	0f af c1             	imul   eax,ecx
  401e93:	8d 0c 02             	lea    ecx,[rdx+rax*1]
  401e96:	8b 95 c4 fe ff ff    	mov    edx,DWORD PTR [rbp-0x13c]
  401e9c:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401ea3:	48 83 c0 08          	add    rax,0x8
  401ea7:	8b 00                	mov    eax,DWORD PTR [rax]
  401ea9:	0f af c2             	imul   eax,edx
  401eac:	29 c1                	sub    ecx,eax
  401eae:	8b 95 c8 fe ff ff    	mov    edx,DWORD PTR [rbp-0x138]
  401eb4:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401ebb:	48 83 c0 0c          	add    rax,0xc
  401ebf:	8b 00                	mov    eax,DWORD PTR [rax]
  401ec1:	0f af c2             	imul   eax,edx
  401ec4:	29 c1                	sub    ecx,eax
  401ec6:	8b 95 cc fe ff ff    	mov    edx,DWORD PTR [rbp-0x134]
  401ecc:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401ed3:	48 83 c0 10          	add    rax,0x10
  401ed7:	8b 00                	mov    eax,DWORD PTR [rax]
  401ed9:	0f af c2             	imul   eax,edx
  401edc:	29 c1                	sub    ecx,eax
  401ede:	8b 95 d0 fe ff ff    	mov    edx,DWORD PTR [rbp-0x130]
  401ee4:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401eeb:	48 83 c0 14          	add    rax,0x14
  401eef:	8b 00                	mov    eax,DWORD PTR [rax]
  401ef1:	0f af c2             	imul   eax,edx
  401ef4:	29 c1                	sub    ecx,eax
  401ef6:	8b 95 d4 fe ff ff    	mov    edx,DWORD PTR [rbp-0x12c]
  401efc:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401f03:	48 83 c0 18          	add    rax,0x18
  401f07:	8b 00                	mov    eax,DWORD PTR [rax]
  401f09:	0f af c2             	imul   eax,edx
  401f0c:	01 c1                	add    ecx,eax
  401f0e:	8b 95 d8 fe ff ff    	mov    edx,DWORD PTR [rbp-0x128]
  401f14:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401f1b:	48 83 c0 1c          	add    rax,0x1c
  401f1f:	8b 00                	mov    eax,DWORD PTR [rax]
  401f21:	0f af c2             	imul   eax,edx
  401f24:	01 c1                	add    ecx,eax
  401f26:	8b 95 dc fe ff ff    	mov    edx,DWORD PTR [rbp-0x124]
  401f2c:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401f33:	48 83 c0 20          	add    rax,0x20
  401f37:	8b 00                	mov    eax,DWORD PTR [rax]
  401f39:	0f af c2             	imul   eax,edx
  401f3c:	29 c1                	sub    ecx,eax
  401f3e:	8b 95 e0 fe ff ff    	mov    edx,DWORD PTR [rbp-0x120]
  401f44:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401f4b:	48 83 c0 24          	add    rax,0x24
  401f4f:	8b 00                	mov    eax,DWORD PTR [rax]
  401f51:	0f af c2             	imul   eax,edx
  401f54:	29 c1                	sub    ecx,eax
  401f56:	8b 95 e4 fe ff ff    	mov    edx,DWORD PTR [rbp-0x11c]
  401f5c:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401f63:	48 83 c0 28          	add    rax,0x28
  401f67:	8b 00                	mov    eax,DWORD PTR [rax]
  401f69:	0f af c2             	imul   eax,edx
  401f6c:	29 c1                	sub    ecx,eax
  401f6e:	8b 95 e8 fe ff ff    	mov    edx,DWORD PTR [rbp-0x118]
  401f74:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401f7b:	48 83 c0 2c          	add    rax,0x2c
  401f7f:	8b 00                	mov    eax,DWORD PTR [rax]
  401f81:	0f af c2             	imul   eax,edx
  401f84:	01 c1                	add    ecx,eax
  401f86:	8b 95 ec fe ff ff    	mov    edx,DWORD PTR [rbp-0x114]
  401f8c:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401f93:	48 83 c0 30          	add    rax,0x30
  401f97:	8b 00                	mov    eax,DWORD PTR [rax]
  401f99:	0f af c2             	imul   eax,edx
  401f9c:	29 c1                	sub    ecx,eax
  401f9e:	89 c8                	mov    eax,ecx
  401fa0:	3d 90 5e 52 ff       	cmp    eax,0xff525e90
  401fa5:	74 0e                	je     401fb5 <CheckSolution+0x18ef>
  401fa7:	eb 02                	jmp    401fab <CheckSolution+0x18e5>
  401fa9:	9f                   	lahf   
  401faa:	47 b8 00 00 00 00    	rex.RXB mov r8d,0x0
  401fb0:	e9 1c 06 00 00       	jmp    4025d1 <CheckSolution+0x1f0b>
  401fb5:	8b 95 f0 fe ff ff    	mov    edx,DWORD PTR [rbp-0x110]
  401fbb:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401fc2:	8b 00                	mov    eax,DWORD PTR [rax]
  401fc4:	0f af d0             	imul   edx,eax
  401fc7:	8b 8d f4 fe ff ff    	mov    ecx,DWORD PTR [rbp-0x10c]
  401fcd:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401fd4:	48 83 c0 04          	add    rax,0x4
  401fd8:	8b 00                	mov    eax,DWORD PTR [rax]
  401fda:	0f af c1             	imul   eax,ecx
  401fdd:	8d 0c 02             	lea    ecx,[rdx+rax*1]
  401fe0:	8b 95 f8 fe ff ff    	mov    edx,DWORD PTR [rbp-0x108]
  401fe6:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  401fed:	48 83 c0 08          	add    rax,0x8
  401ff1:	8b 00                	mov    eax,DWORD PTR [rax]
  401ff3:	0f af c2             	imul   eax,edx
  401ff6:	29 c1                	sub    ecx,eax
  401ff8:	8b 95 fc fe ff ff    	mov    edx,DWORD PTR [rbp-0x104]
  401ffe:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402005:	48 83 c0 0c          	add    rax,0xc
  402009:	8b 00                	mov    eax,DWORD PTR [rax]
  40200b:	0f af c2             	imul   eax,edx
  40200e:	01 c1                	add    ecx,eax
  402010:	8b 95 00 ff ff ff    	mov    edx,DWORD PTR [rbp-0x100]
  402016:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  40201d:	48 83 c0 10          	add    rax,0x10
  402021:	8b 00                	mov    eax,DWORD PTR [rax]
  402023:	0f af c2             	imul   eax,edx
  402026:	01 c1                	add    ecx,eax
  402028:	8b 95 04 ff ff ff    	mov    edx,DWORD PTR [rbp-0xfc]
  40202e:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402035:	48 83 c0 14          	add    rax,0x14
  402039:	8b 00                	mov    eax,DWORD PTR [rax]
  40203b:	0f af c2             	imul   eax,edx
  40203e:	01 c1                	add    ecx,eax
  402040:	8b 95 08 ff ff ff    	mov    edx,DWORD PTR [rbp-0xf8]
  402046:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  40204d:	48 83 c0 18          	add    rax,0x18
  402051:	8b 00                	mov    eax,DWORD PTR [rax]
  402053:	0f af c2             	imul   eax,edx
  402056:	29 c1                	sub    ecx,eax
  402058:	8b 95 0c ff ff ff    	mov    edx,DWORD PTR [rbp-0xf4]
  40205e:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402065:	48 83 c0 1c          	add    rax,0x1c
  402069:	8b 00                	mov    eax,DWORD PTR [rax]
  40206b:	0f af c2             	imul   eax,edx
  40206e:	29 c1                	sub    ecx,eax
  402070:	8b 95 10 ff ff ff    	mov    edx,DWORD PTR [rbp-0xf0]
  402076:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  40207d:	48 83 c0 20          	add    rax,0x20
  402081:	8b 00                	mov    eax,DWORD PTR [rax]
  402083:	0f af c2             	imul   eax,edx
  402086:	29 c1                	sub    ecx,eax
  402088:	8b 95 14 ff ff ff    	mov    edx,DWORD PTR [rbp-0xec]
  40208e:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402095:	48 83 c0 24          	add    rax,0x24
  402099:	8b 00                	mov    eax,DWORD PTR [rax]
  40209b:	0f af c2             	imul   eax,edx
  40209e:	29 c1                	sub    ecx,eax
  4020a0:	8b 95 18 ff ff ff    	mov    edx,DWORD PTR [rbp-0xe8]
  4020a6:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4020ad:	48 83 c0 28          	add    rax,0x28
  4020b1:	8b 00                	mov    eax,DWORD PTR [rax]
  4020b3:	0f af c2             	imul   eax,edx
  4020b6:	01 c1                	add    ecx,eax
  4020b8:	8b 95 1c ff ff ff    	mov    edx,DWORD PTR [rbp-0xe4]
  4020be:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4020c5:	48 83 c0 2c          	add    rax,0x2c
  4020c9:	8b 00                	mov    eax,DWORD PTR [rax]
  4020cb:	0f af c2             	imul   eax,edx
  4020ce:	29 c1                	sub    ecx,eax
  4020d0:	8b 95 20 ff ff ff    	mov    edx,DWORD PTR [rbp-0xe0]
  4020d6:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4020dd:	48 83 c0 30          	add    rax,0x30
  4020e1:	8b 00                	mov    eax,DWORD PTR [rax]
  4020e3:	0f af c2             	imul   eax,edx
  4020e6:	01 c8                	add    eax,ecx
  4020e8:	3d 04 77 fd ff       	cmp    eax,0xfffd7704
  4020ed:	74 0e                	je     4020fd <CheckSolution+0x1a37>
  4020ef:	eb 02                	jmp    4020f3 <CheckSolution+0x1a2d>
  4020f1:	ad                   	lods   eax,DWORD PTR ds:[rsi]
  4020f2:	5b                   	pop    rbx
  4020f3:	b8 00 00 00 00       	mov    eax,0x0
  4020f8:	e9 d4 04 00 00       	jmp    4025d1 <CheckSolution+0x1f0b>
  4020fd:	8b 85 24 ff ff ff    	mov    eax,DWORD PTR [rbp-0xdc]
  402103:	f7 d8                	neg    eax
  402105:	89 c2                	mov    edx,eax
  402107:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  40210e:	8b 00                	mov    eax,DWORD PTR [rax]
  402110:	0f af d0             	imul   edx,eax
  402113:	8b 8d 28 ff ff ff    	mov    ecx,DWORD PTR [rbp-0xd8]
  402119:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402120:	48 83 c0 04          	add    rax,0x4
  402124:	8b 00                	mov    eax,DWORD PTR [rax]
  402126:	0f af c1             	imul   eax,ecx
  402129:	8d 0c 02             	lea    ecx,[rdx+rax*1]
  40212c:	8b 95 2c ff ff ff    	mov    edx,DWORD PTR [rbp-0xd4]
  402132:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402139:	48 83 c0 08          	add    rax,0x8
  40213d:	8b 00                	mov    eax,DWORD PTR [rax]
  40213f:	0f af c2             	imul   eax,edx
  402142:	29 c1                	sub    ecx,eax
  402144:	8b 95 30 ff ff ff    	mov    edx,DWORD PTR [rbp-0xd0]
  40214a:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402151:	48 83 c0 0c          	add    rax,0xc
  402155:	8b 00                	mov    eax,DWORD PTR [rax]
  402157:	0f af c2             	imul   eax,edx
  40215a:	01 c1                	add    ecx,eax
  40215c:	8b 95 34 ff ff ff    	mov    edx,DWORD PTR [rbp-0xcc]
  402162:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402169:	48 83 c0 10          	add    rax,0x10
  40216d:	8b 00                	mov    eax,DWORD PTR [rax]
  40216f:	0f af c2             	imul   eax,edx
  402172:	29 c1                	sub    ecx,eax
  402174:	8b 95 38 ff ff ff    	mov    edx,DWORD PTR [rbp-0xc8]
  40217a:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402181:	48 83 c0 14          	add    rax,0x14
  402185:	8b 00                	mov    eax,DWORD PTR [rax]
  402187:	0f af c2             	imul   eax,edx
  40218a:	29 c1                	sub    ecx,eax
  40218c:	8b 95 3c ff ff ff    	mov    edx,DWORD PTR [rbp-0xc4]
  402192:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402199:	48 83 c0 18          	add    rax,0x18
  40219d:	8b 00                	mov    eax,DWORD PTR [rax]
  40219f:	0f af c2             	imul   eax,edx
  4021a2:	01 c1                	add    ecx,eax
  4021a4:	8b 95 40 ff ff ff    	mov    edx,DWORD PTR [rbp-0xc0]
  4021aa:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4021b1:	48 83 c0 1c          	add    rax,0x1c
  4021b5:	8b 00                	mov    eax,DWORD PTR [rax]
  4021b7:	0f af c2             	imul   eax,edx
  4021ba:	01 c1                	add    ecx,eax
  4021bc:	8b 95 44 ff ff ff    	mov    edx,DWORD PTR [rbp-0xbc]
  4021c2:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4021c9:	48 83 c0 20          	add    rax,0x20
  4021cd:	8b 00                	mov    eax,DWORD PTR [rax]
  4021cf:	0f af c2             	imul   eax,edx
  4021d2:	01 c1                	add    ecx,eax
  4021d4:	8b 95 48 ff ff ff    	mov    edx,DWORD PTR [rbp-0xb8]
  4021da:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4021e1:	48 83 c0 24          	add    rax,0x24
  4021e5:	8b 00                	mov    eax,DWORD PTR [rax]
  4021e7:	0f af c2             	imul   eax,edx
  4021ea:	01 c1                	add    ecx,eax
  4021ec:	8b 95 4c ff ff ff    	mov    edx,DWORD PTR [rbp-0xb4]
  4021f2:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4021f9:	48 83 c0 28          	add    rax,0x28
  4021fd:	8b 00                	mov    eax,DWORD PTR [rax]
  4021ff:	0f af c2             	imul   eax,edx
  402202:	01 c1                	add    ecx,eax
  402204:	8b 95 50 ff ff ff    	mov    edx,DWORD PTR [rbp-0xb0]
  40220a:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402211:	48 83 c0 2c          	add    rax,0x2c
  402215:	8b 00                	mov    eax,DWORD PTR [rax]
  402217:	0f af c2             	imul   eax,edx
  40221a:	29 c1                	sub    ecx,eax
  40221c:	8b 95 54 ff ff ff    	mov    edx,DWORD PTR [rbp-0xac]
  402222:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402229:	48 83 c0 30          	add    rax,0x30
  40222d:	8b 00                	mov    eax,DWORD PTR [rax]
  40222f:	0f af c2             	imul   eax,edx
  402232:	01 c8                	add    eax,ecx
  402234:	3d bb 7c 89 00       	cmp    eax,0x897cbb
  402239:	74 0e                	je     402249 <CheckSolution+0x1b83>
  40223b:	eb 02                	jmp    40223f <CheckSolution+0x1b79>
  40223d:	20 0e                	and    BYTE PTR [rsi],cl
  40223f:	b8 00 00 00 00       	mov    eax,0x0
  402244:	e9 88 03 00 00       	jmp    4025d1 <CheckSolution+0x1f0b>
  402249:	8b 85 58 ff ff ff    	mov    eax,DWORD PTR [rbp-0xa8]
  40224f:	f7 d8                	neg    eax
  402251:	89 c2                	mov    edx,eax
  402253:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  40225a:	8b 00                	mov    eax,DWORD PTR [rax]
  40225c:	0f af d0             	imul   edx,eax
  40225f:	8b 8d 5c ff ff ff    	mov    ecx,DWORD PTR [rbp-0xa4]
  402265:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  40226c:	48 83 c0 04          	add    rax,0x4
  402270:	8b 00                	mov    eax,DWORD PTR [rax]
  402272:	0f af c1             	imul   eax,ecx
  402275:	89 d1                	mov    ecx,edx
  402277:	29 c1                	sub    ecx,eax
  402279:	8b 95 60 ff ff ff    	mov    edx,DWORD PTR [rbp-0xa0]
  40227f:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402286:	48 83 c0 08          	add    rax,0x8
  40228a:	8b 00                	mov    eax,DWORD PTR [rax]
  40228c:	0f af c2             	imul   eax,edx
  40228f:	29 c1                	sub    ecx,eax
  402291:	8b 95 64 ff ff ff    	mov    edx,DWORD PTR [rbp-0x9c]
  402297:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  40229e:	48 83 c0 0c          	add    rax,0xc
  4022a2:	8b 00                	mov    eax,DWORD PTR [rax]
  4022a4:	0f af c2             	imul   eax,edx
  4022a7:	29 c1                	sub    ecx,eax
  4022a9:	8b 95 68 ff ff ff    	mov    edx,DWORD PTR [rbp-0x98]
  4022af:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4022b6:	48 83 c0 10          	add    rax,0x10
  4022ba:	8b 00                	mov    eax,DWORD PTR [rax]
  4022bc:	0f af c2             	imul   eax,edx
  4022bf:	29 c1                	sub    ecx,eax
  4022c1:	8b 95 6c ff ff ff    	mov    edx,DWORD PTR [rbp-0x94]
  4022c7:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4022ce:	48 83 c0 14          	add    rax,0x14
  4022d2:	8b 00                	mov    eax,DWORD PTR [rax]
  4022d4:	0f af c2             	imul   eax,edx
  4022d7:	01 c1                	add    ecx,eax
  4022d9:	8b 95 70 ff ff ff    	mov    edx,DWORD PTR [rbp-0x90]
  4022df:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4022e6:	48 83 c0 18          	add    rax,0x18
  4022ea:	8b 00                	mov    eax,DWORD PTR [rax]
  4022ec:	0f af c2             	imul   eax,edx
  4022ef:	01 c1                	add    ecx,eax
  4022f1:	8b 95 74 ff ff ff    	mov    edx,DWORD PTR [rbp-0x8c]
  4022f7:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4022fe:	48 83 c0 1c          	add    rax,0x1c
  402302:	8b 00                	mov    eax,DWORD PTR [rax]
  402304:	0f af c2             	imul   eax,edx
  402307:	01 c1                	add    ecx,eax
  402309:	8b 95 78 ff ff ff    	mov    edx,DWORD PTR [rbp-0x88]
  40230f:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402316:	48 83 c0 20          	add    rax,0x20
  40231a:	8b 00                	mov    eax,DWORD PTR [rax]
  40231c:	0f af c2             	imul   eax,edx
  40231f:	29 c1                	sub    ecx,eax
  402321:	8b 95 7c ff ff ff    	mov    edx,DWORD PTR [rbp-0x84]
  402327:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  40232e:	48 83 c0 24          	add    rax,0x24
  402332:	8b 00                	mov    eax,DWORD PTR [rax]
  402334:	0f af c2             	imul   eax,edx
  402337:	01 c1                	add    ecx,eax
  402339:	8b 55 80             	mov    edx,DWORD PTR [rbp-0x80]
  40233c:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402343:	48 83 c0 28          	add    rax,0x28
  402347:	8b 00                	mov    eax,DWORD PTR [rax]
  402349:	0f af c2             	imul   eax,edx
  40234c:	01 c1                	add    ecx,eax
  40234e:	8b 55 84             	mov    edx,DWORD PTR [rbp-0x7c]
  402351:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402358:	48 83 c0 2c          	add    rax,0x2c
  40235c:	8b 00                	mov    eax,DWORD PTR [rax]
  40235e:	0f af c2             	imul   eax,edx
  402361:	29 c1                	sub    ecx,eax
  402363:	8b 55 88             	mov    edx,DWORD PTR [rbp-0x78]
  402366:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  40236d:	48 83 c0 30          	add    rax,0x30
  402371:	8b 00                	mov    eax,DWORD PTR [rax]
  402373:	0f af c2             	imul   eax,edx
  402376:	01 c8                	add    eax,ecx
  402378:	3d 9f 5f c0 ff       	cmp    eax,0xffc05f9f
  40237d:	74 0e                	je     40238d <CheckSolution+0x1cc7>
  40237f:	eb 02                	jmp    402383 <CheckSolution+0x1cbd>
  402381:	ae                   	scas   al,BYTE PTR es:[rdi]
  402382:	23 b8 00 00 00 00    	and    edi,DWORD PTR [rax+0x0]
  402388:	e9 44 02 00 00       	jmp    4025d1 <CheckSolution+0x1f0b>
  40238d:	8b 55 8c             	mov    edx,DWORD PTR [rbp-0x74]
  402390:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402397:	8b 00                	mov    eax,DWORD PTR [rax]
  402399:	0f af d0             	imul   edx,eax
  40239c:	8b 4d 90             	mov    ecx,DWORD PTR [rbp-0x70]
  40239f:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4023a6:	48 83 c0 04          	add    rax,0x4
  4023aa:	8b 00                	mov    eax,DWORD PTR [rax]
  4023ac:	0f af c1             	imul   eax,ecx
  4023af:	8d 0c 02             	lea    ecx,[rdx+rax*1]
  4023b2:	8b 55 94             	mov    edx,DWORD PTR [rbp-0x6c]
  4023b5:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4023bc:	48 83 c0 08          	add    rax,0x8
  4023c0:	8b 00                	mov    eax,DWORD PTR [rax]
  4023c2:	0f af c2             	imul   eax,edx
  4023c5:	29 c1                	sub    ecx,eax
  4023c7:	8b 55 98             	mov    edx,DWORD PTR [rbp-0x68]
  4023ca:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4023d1:	48 83 c0 0c          	add    rax,0xc
  4023d5:	8b 00                	mov    eax,DWORD PTR [rax]
  4023d7:	0f af c2             	imul   eax,edx
  4023da:	29 c1                	sub    ecx,eax
  4023dc:	8b 55 9c             	mov    edx,DWORD PTR [rbp-0x64]
  4023df:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4023e6:	48 83 c0 10          	add    rax,0x10
  4023ea:	8b 00                	mov    eax,DWORD PTR [rax]
  4023ec:	0f af c2             	imul   eax,edx
  4023ef:	01 c1                	add    ecx,eax
  4023f1:	8b 55 a0             	mov    edx,DWORD PTR [rbp-0x60]
  4023f4:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4023fb:	48 83 c0 14          	add    rax,0x14
  4023ff:	8b 00                	mov    eax,DWORD PTR [rax]
  402401:	0f af c2             	imul   eax,edx
  402404:	01 c1                	add    ecx,eax
  402406:	8b 55 a4             	mov    edx,DWORD PTR [rbp-0x5c]
  402409:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402410:	48 83 c0 18          	add    rax,0x18
  402414:	8b 00                	mov    eax,DWORD PTR [rax]
  402416:	0f af c2             	imul   eax,edx
  402419:	29 c1                	sub    ecx,eax
  40241b:	8b 55 a8             	mov    edx,DWORD PTR [rbp-0x58]
  40241e:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402425:	48 83 c0 1c          	add    rax,0x1c
  402429:	8b 00                	mov    eax,DWORD PTR [rax]
  40242b:	0f af c2             	imul   eax,edx
  40242e:	29 c1                	sub    ecx,eax
  402430:	8b 55 ac             	mov    edx,DWORD PTR [rbp-0x54]
  402433:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  40243a:	48 83 c0 20          	add    rax,0x20
  40243e:	8b 00                	mov    eax,DWORD PTR [rax]
  402440:	0f af c2             	imul   eax,edx
  402443:	01 c1                	add    ecx,eax
  402445:	8b 55 b0             	mov    edx,DWORD PTR [rbp-0x50]
  402448:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  40244f:	48 83 c0 24          	add    rax,0x24
  402453:	8b 00                	mov    eax,DWORD PTR [rax]
  402455:	0f af c2             	imul   eax,edx
  402458:	01 c1                	add    ecx,eax
  40245a:	8b 55 b4             	mov    edx,DWORD PTR [rbp-0x4c]
  40245d:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402464:	48 83 c0 28          	add    rax,0x28
  402468:	8b 00                	mov    eax,DWORD PTR [rax]
  40246a:	0f af c2             	imul   eax,edx
  40246d:	29 c1                	sub    ecx,eax
  40246f:	8b 55 b8             	mov    edx,DWORD PTR [rbp-0x48]
  402472:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402479:	48 83 c0 2c          	add    rax,0x2c
  40247d:	8b 00                	mov    eax,DWORD PTR [rax]
  40247f:	0f af c2             	imul   eax,edx
  402482:	01 c1                	add    ecx,eax
  402484:	8b 55 bc             	mov    edx,DWORD PTR [rbp-0x44]
  402487:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  40248e:	48 83 c0 30          	add    rax,0x30
  402492:	8b 00                	mov    eax,DWORD PTR [rax]
  402494:	0f af c2             	imul   eax,edx
  402497:	01 c8                	add    eax,ecx
  402499:	3d 61 47 3e 00       	cmp    eax,0x3e4761
  40249e:	74 0e                	je     4024ae <CheckSolution+0x1de8>
  4024a0:	eb 02                	jmp    4024a4 <CheckSolution+0x1dde>
  4024a2:	54                   	push   rsp
  4024a3:	cb                   	retf   
  4024a4:	b8 00 00 00 00       	mov    eax,0x0
  4024a9:	e9 23 01 00 00       	jmp    4025d1 <CheckSolution+0x1f0b>
  4024ae:	8b 55 c0             	mov    edx,DWORD PTR [rbp-0x40]
  4024b1:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4024b8:	8b 00                	mov    eax,DWORD PTR [rax]
  4024ba:	0f af d0             	imul   edx,eax
  4024bd:	8b 4d c4             	mov    ecx,DWORD PTR [rbp-0x3c]
  4024c0:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4024c7:	48 83 c0 04          	add    rax,0x4
  4024cb:	8b 00                	mov    eax,DWORD PTR [rax]
  4024cd:	0f af c1             	imul   eax,ecx
  4024d0:	8d 0c 02             	lea    ecx,[rdx+rax*1]
  4024d3:	8b 55 c8             	mov    edx,DWORD PTR [rbp-0x38]
  4024d6:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4024dd:	48 83 c0 08          	add    rax,0x8
  4024e1:	8b 00                	mov    eax,DWORD PTR [rax]
  4024e3:	0f af c2             	imul   eax,edx
  4024e6:	29 c1                	sub    ecx,eax
  4024e8:	8b 55 cc             	mov    edx,DWORD PTR [rbp-0x34]
  4024eb:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4024f2:	48 83 c0 0c          	add    rax,0xc
  4024f6:	8b 00                	mov    eax,DWORD PTR [rax]
  4024f8:	0f af c2             	imul   eax,edx
  4024fb:	01 c1                	add    ecx,eax
  4024fd:	8b 55 d0             	mov    edx,DWORD PTR [rbp-0x30]
  402500:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402507:	48 83 c0 10          	add    rax,0x10
  40250b:	8b 00                	mov    eax,DWORD PTR [rax]
  40250d:	0f af c2             	imul   eax,edx
  402510:	01 c1                	add    ecx,eax
  402512:	8b 55 d4             	mov    edx,DWORD PTR [rbp-0x2c]
  402515:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  40251c:	48 83 c0 14          	add    rax,0x14
  402520:	8b 00                	mov    eax,DWORD PTR [rax]
  402522:	0f af c2             	imul   eax,edx
  402525:	29 c1                	sub    ecx,eax
  402527:	8b 55 d8             	mov    edx,DWORD PTR [rbp-0x28]
  40252a:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402531:	48 83 c0 18          	add    rax,0x18
  402535:	8b 00                	mov    eax,DWORD PTR [rax]
  402537:	0f af c2             	imul   eax,edx
  40253a:	29 c1                	sub    ecx,eax
  40253c:	8b 55 dc             	mov    edx,DWORD PTR [rbp-0x24]
  40253f:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402546:	48 83 c0 1c          	add    rax,0x1c
  40254a:	8b 00                	mov    eax,DWORD PTR [rax]
  40254c:	0f af c2             	imul   eax,edx
  40254f:	01 c1                	add    ecx,eax
  402551:	8b 55 e0             	mov    edx,DWORD PTR [rbp-0x20]
  402554:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  40255b:	48 83 c0 20          	add    rax,0x20
  40255f:	8b 00                	mov    eax,DWORD PTR [rax]
  402561:	0f af c2             	imul   eax,edx
  402564:	01 c1                	add    ecx,eax
  402566:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
  402569:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402570:	48 83 c0 24          	add    rax,0x24
  402574:	8b 00                	mov    eax,DWORD PTR [rax]
  402576:	0f af c2             	imul   eax,edx
  402579:	01 c1                	add    ecx,eax
  40257b:	8b 55 e8             	mov    edx,DWORD PTR [rbp-0x18]
  40257e:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  402585:	48 83 c0 28          	add    rax,0x28
  402589:	8b 00                	mov    eax,DWORD PTR [rax]
  40258b:	0f af c2             	imul   eax,edx
  40258e:	29 c1                	sub    ecx,eax
  402590:	8b 55 ec             	mov    edx,DWORD PTR [rbp-0x14]
  402593:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  40259a:	48 83 c0 2c          	add    rax,0x2c
  40259e:	8b 00                	mov    eax,DWORD PTR [rax]
  4025a0:	0f af c2             	imul   eax,edx
  4025a3:	01 c1                	add    ecx,eax
  4025a5:	8b 55 f0             	mov    edx,DWORD PTR [rbp-0x10]
  4025a8:	48 8b 85 48 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2b8]
  4025af:	48 83 c0 30          	add    rax,0x30
  4025b3:	8b 00                	mov    eax,DWORD PTR [rax]
  4025b5:	0f af c2             	imul   eax,edx
  4025b8:	01 c8                	add    eax,ecx
  4025ba:	3d 45 49 1b 00       	cmp    eax,0x1b4945
  4025bf:	74 0b                	je     4025cc <CheckSolution+0x1f06>
  4025c1:	eb 02                	jmp    4025c5 <CheckSolution+0x1eff>
  4025c3:	3e fb                	ds sti 
  4025c5:	b8 00 00 00 00       	mov    eax,0x0
  4025ca:	eb 05                	jmp    4025d1 <CheckSolution+0x1f0b>
  4025cc:	b8 01 00 00 00       	mov    eax,0x1
  4025d1:	48 8b 75 f8          	mov    rsi,QWORD PTR [rbp-0x8]
  4025d5:	64 48 33 34 25 28 00 	xor    rsi,QWORD PTR fs:0x28
  4025dc:	00 00 
  4025de:	74 05                	je     4025e5 <CheckSolution+0x1f1f>
  4025e0:	e8 8b df ff ff       	call   400570 <__stack_chk_fail@plt>
  4025e5:	c9                   	leave  
  4025e6:	c3                   	ret    

00000000004025e7 <main>:
  4025e7:	55                   	push   rbp
  4025e8:	48 89 e5             	mov    rbp,rsp
  4025eb:	41 56                	push   r14
  4025ed:	41 55                	push   r13
  4025ef:	41 54                	push   r12
  4025f1:	53                   	push   rbx
  4025f2:	48 83 ec 40          	sub    rsp,0x40
  4025f6:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4025fd:	00 00 
  4025ff:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  402603:	31 c0                	xor    eax,eax
  402605:	bf 08 2a 40 00       	mov    edi,0x402a08
  40260a:	b8 00 00 00 00       	mov    eax,0x0
  40260f:	e8 6c df ff ff       	call   400580 <printf@plt>
  402614:	48 8b 05 3d 0a 20 00 	mov    rax,QWORD PTR [rip+0x200a3d]        # 603058 <__TMC_END__>
  40261b:	48 89 c7             	mov    rdi,rax
  40261e:	e8 7d df ff ff       	call   4005a0 <fflush@plt>
  402623:	48 8d 45 a0          	lea    rax,[rbp-0x60]
  402627:	48 89 c6             	mov    rsi,rax
  40262a:	bf 11 2a 40 00       	mov    edi,0x402a11
  40262f:	b8 00 00 00 00       	mov    eax,0x0
  402634:	e8 77 df ff ff       	call   4005b0 <__isoc99_scanf@plt>
  402639:	bf 14 2a 40 00       	mov    edi,0x402a14
  40263e:	b8 00 00 00 00       	mov    eax,0x0
  402643:	e8 38 df ff ff       	call   400580 <printf@plt>
  402648:	48 8b 05 09 0a 20 00 	mov    rax,QWORD PTR [rip+0x200a09]        # 603058 <__TMC_END__>
  40264f:	48 89 c7             	mov    rdi,rax
  402652:	e8 49 df ff ff       	call   4005a0 <fflush@plt>
  402657:	48 8d 45 a0          	lea    rax,[rbp-0x60]
  40265b:	48 83 c0 04          	add    rax,0x4
  40265f:	48 89 c6             	mov    rsi,rax
  402662:	bf 11 2a 40 00       	mov    edi,0x402a11
  402667:	b8 00 00 00 00       	mov    eax,0x0
  40266c:	e8 3f df ff ff       	call   4005b0 <__isoc99_scanf@plt>
  402671:	bf 1d 2a 40 00       	mov    edi,0x402a1d
  402676:	b8 00 00 00 00       	mov    eax,0x0
  40267b:	e8 00 df ff ff       	call   400580 <printf@plt>
  402680:	48 8b 05 d1 09 20 00 	mov    rax,QWORD PTR [rip+0x2009d1]        # 603058 <__TMC_END__>
  402687:	48 89 c7             	mov    rdi,rax
  40268a:	e8 11 df ff ff       	call   4005a0 <fflush@plt>
  40268f:	48 8d 45 a0          	lea    rax,[rbp-0x60]
  402693:	48 83 c0 08          	add    rax,0x8
  402697:	48 89 c6             	mov    rsi,rax
  40269a:	bf 11 2a 40 00       	mov    edi,0x402a11
  40269f:	b8 00 00 00 00       	mov    eax,0x0
  4026a4:	e8 07 df ff ff       	call   4005b0 <__isoc99_scanf@plt>
  4026a9:	bf 26 2a 40 00       	mov    edi,0x402a26
  4026ae:	b8 00 00 00 00       	mov    eax,0x0
  4026b3:	e8 c8 de ff ff       	call   400580 <printf@plt>
  4026b8:	48 8b 05 99 09 20 00 	mov    rax,QWORD PTR [rip+0x200999]        # 603058 <__TMC_END__>
  4026bf:	48 89 c7             	mov    rdi,rax
  4026c2:	e8 d9 de ff ff       	call   4005a0 <fflush@plt>
  4026c7:	48 8d 45 a0          	lea    rax,[rbp-0x60]
  4026cb:	48 83 c0 0c          	add    rax,0xc
  4026cf:	48 89 c6             	mov    rsi,rax
  4026d2:	bf 11 2a 40 00       	mov    edi,0x402a11
  4026d7:	b8 00 00 00 00       	mov    eax,0x0
  4026dc:	e8 cf de ff ff       	call   4005b0 <__isoc99_scanf@plt>
  4026e1:	bf 2f 2a 40 00       	mov    edi,0x402a2f
  4026e6:	b8 00 00 00 00       	mov    eax,0x0
  4026eb:	e8 90 de ff ff       	call   400580 <printf@plt>
  4026f0:	48 8b 05 61 09 20 00 	mov    rax,QWORD PTR [rip+0x200961]        # 603058 <__TMC_END__>
  4026f7:	48 89 c7             	mov    rdi,rax
  4026fa:	e8 a1 de ff ff       	call   4005a0 <fflush@plt>
  4026ff:	48 8d 45 a0          	lea    rax,[rbp-0x60]
  402703:	48 83 c0 10          	add    rax,0x10
  402707:	48 89 c6             	mov    rsi,rax
  40270a:	bf 11 2a 40 00       	mov    edi,0x402a11
  40270f:	b8 00 00 00 00       	mov    eax,0x0
  402714:	e8 97 de ff ff       	call   4005b0 <__isoc99_scanf@plt>
  402719:	bf 38 2a 40 00       	mov    edi,0x402a38
  40271e:	b8 00 00 00 00       	mov    eax,0x0
  402723:	e8 58 de ff ff       	call   400580 <printf@plt>
  402728:	48 8b 05 29 09 20 00 	mov    rax,QWORD PTR [rip+0x200929]        # 603058 <__TMC_END__>
  40272f:	48 89 c7             	mov    rdi,rax
  402732:	e8 69 de ff ff       	call   4005a0 <fflush@plt>
  402737:	48 8d 45 a0          	lea    rax,[rbp-0x60]
  40273b:	48 83 c0 14          	add    rax,0x14
  40273f:	48 89 c6             	mov    rsi,rax
  402742:	bf 11 2a 40 00       	mov    edi,0x402a11
  402747:	b8 00 00 00 00       	mov    eax,0x0
  40274c:	e8 5f de ff ff       	call   4005b0 <__isoc99_scanf@plt>
  402751:	bf 41 2a 40 00       	mov    edi,0x402a41
  402756:	b8 00 00 00 00       	mov    eax,0x0
  40275b:	e8 20 de ff ff       	call   400580 <printf@plt>
  402760:	48 8b 05 f1 08 20 00 	mov    rax,QWORD PTR [rip+0x2008f1]        # 603058 <__TMC_END__>
  402767:	48 89 c7             	mov    rdi,rax
  40276a:	e8 31 de ff ff       	call   4005a0 <fflush@plt>
  40276f:	48 8d 45 a0          	lea    rax,[rbp-0x60]
  402773:	48 83 c0 18          	add    rax,0x18
  402777:	48 89 c6             	mov    rsi,rax
  40277a:	bf 11 2a 40 00       	mov    edi,0x402a11
  40277f:	b8 00 00 00 00       	mov    eax,0x0
  402784:	e8 27 de ff ff       	call   4005b0 <__isoc99_scanf@plt>
  402789:	bf 4a 2a 40 00       	mov    edi,0x402a4a
  40278e:	b8 00 00 00 00       	mov    eax,0x0
  402793:	e8 e8 dd ff ff       	call   400580 <printf@plt>
  402798:	48 8b 05 b9 08 20 00 	mov    rax,QWORD PTR [rip+0x2008b9]        # 603058 <__TMC_END__>
  40279f:	48 89 c7             	mov    rdi,rax
  4027a2:	e8 f9 dd ff ff       	call   4005a0 <fflush@plt>
  4027a7:	48 8d 45 a0          	lea    rax,[rbp-0x60]
  4027ab:	48 83 c0 1c          	add    rax,0x1c
  4027af:	48 89 c6             	mov    rsi,rax
  4027b2:	bf 11 2a 40 00       	mov    edi,0x402a11
  4027b7:	b8 00 00 00 00       	mov    eax,0x0
  4027bc:	e8 ef dd ff ff       	call   4005b0 <__isoc99_scanf@plt>
  4027c1:	bf 53 2a 40 00       	mov    edi,0x402a53
  4027c6:	b8 00 00 00 00       	mov    eax,0x0
  4027cb:	e8 b0 dd ff ff       	call   400580 <printf@plt>
  4027d0:	48 8b 05 81 08 20 00 	mov    rax,QWORD PTR [rip+0x200881]        # 603058 <__TMC_END__>
  4027d7:	48 89 c7             	mov    rdi,rax
  4027da:	e8 c1 dd ff ff       	call   4005a0 <fflush@plt>
  4027df:	48 8d 45 a0          	lea    rax,[rbp-0x60]
  4027e3:	48 83 c0 20          	add    rax,0x20
  4027e7:	48 89 c6             	mov    rsi,rax
  4027ea:	bf 11 2a 40 00       	mov    edi,0x402a11
  4027ef:	b8 00 00 00 00       	mov    eax,0x0
  4027f4:	e8 b7 dd ff ff       	call   4005b0 <__isoc99_scanf@plt>
  4027f9:	bf 5c 2a 40 00       	mov    edi,0x402a5c
  4027fe:	b8 00 00 00 00       	mov    eax,0x0
  402803:	e8 78 dd ff ff       	call   400580 <printf@plt>
  402808:	48 8b 05 49 08 20 00 	mov    rax,QWORD PTR [rip+0x200849]        # 603058 <__TMC_END__>
  40280f:	48 89 c7             	mov    rdi,rax
  402812:	e8 89 dd ff ff       	call   4005a0 <fflush@plt>
  402817:	48 8d 45 a0          	lea    rax,[rbp-0x60]
  40281b:	48 83 c0 24          	add    rax,0x24
  40281f:	48 89 c6             	mov    rsi,rax
  402822:	bf 11 2a 40 00       	mov    edi,0x402a11
  402827:	b8 00 00 00 00       	mov    eax,0x0
  40282c:	e8 7f dd ff ff       	call   4005b0 <__isoc99_scanf@plt>
  402831:	bf 65 2a 40 00       	mov    edi,0x402a65
  402836:	b8 00 00 00 00       	mov    eax,0x0
  40283b:	e8 40 dd ff ff       	call   400580 <printf@plt>
  402840:	48 8b 05 11 08 20 00 	mov    rax,QWORD PTR [rip+0x200811]        # 603058 <__TMC_END__>
  402847:	48 89 c7             	mov    rdi,rax
  40284a:	e8 51 dd ff ff       	call   4005a0 <fflush@plt>
  40284f:	48 8d 45 a0          	lea    rax,[rbp-0x60]
  402853:	48 83 c0 28          	add    rax,0x28
  402857:	48 89 c6             	mov    rsi,rax
  40285a:	bf 11 2a 40 00       	mov    edi,0x402a11
  40285f:	b8 00 00 00 00       	mov    eax,0x0
  402864:	e8 47 dd ff ff       	call   4005b0 <__isoc99_scanf@plt>
  402869:	bf 6f 2a 40 00       	mov    edi,0x402a6f
  40286e:	b8 00 00 00 00       	mov    eax,0x0
  402873:	e8 08 dd ff ff       	call   400580 <printf@plt>
  402878:	48 8b 05 d9 07 20 00 	mov    rax,QWORD PTR [rip+0x2007d9]        # 603058 <__TMC_END__>
  40287f:	48 89 c7             	mov    rdi,rax
  402882:	e8 19 dd ff ff       	call   4005a0 <fflush@plt>
  402887:	48 8d 45 a0          	lea    rax,[rbp-0x60]
  40288b:	48 83 c0 2c          	add    rax,0x2c
  40288f:	48 89 c6             	mov    rsi,rax
  402892:	bf 11 2a 40 00       	mov    edi,0x402a11
  402897:	b8 00 00 00 00       	mov    eax,0x0
  40289c:	e8 0f dd ff ff       	call   4005b0 <__isoc99_scanf@plt>
  4028a1:	bf 79 2a 40 00       	mov    edi,0x402a79
  4028a6:	b8 00 00 00 00       	mov    eax,0x0
  4028ab:	e8 d0 dc ff ff       	call   400580 <printf@plt>
  4028b0:	48 8b 05 a1 07 20 00 	mov    rax,QWORD PTR [rip+0x2007a1]        # 603058 <__TMC_END__>
  4028b7:	48 89 c7             	mov    rdi,rax
  4028ba:	e8 e1 dc ff ff       	call   4005a0 <fflush@plt>
  4028bf:	48 8d 45 a0          	lea    rax,[rbp-0x60]
  4028c3:	48 83 c0 30          	add    rax,0x30
  4028c7:	48 89 c6             	mov    rsi,rax
  4028ca:	bf 11 2a 40 00       	mov    edi,0x402a11
  4028cf:	b8 00 00 00 00       	mov    eax,0x0
  4028d4:	e8 d7 dc ff ff       	call   4005b0 <__isoc99_scanf@plt>
  4028d9:	48 8d 45 a0          	lea    rax,[rbp-0x60]
  4028dd:	48 89 c7             	mov    rdi,rax
  4028e0:	e8 e1 dd ff ff       	call   4006c6 <CheckSolution>
  4028e5:	84 c0                	test   al,al
  4028e7:	74 58                	je     402941 <main+0x35a>
  4028e9:	44 8b 65 d0          	mov    r12d,DWORD PTR [rbp-0x30]
  4028ed:	8b 5d cc             	mov    ebx,DWORD PTR [rbp-0x34]
  4028f0:	44 8b 5d c8          	mov    r11d,DWORD PTR [rbp-0x38]
  4028f4:	44 8b 55 c4          	mov    r10d,DWORD PTR [rbp-0x3c]
  4028f8:	44 8b 4d c0          	mov    r9d,DWORD PTR [rbp-0x40]
  4028fc:	44 8b 45 bc          	mov    r8d,DWORD PTR [rbp-0x44]
  402900:	8b 7d b8             	mov    edi,DWORD PTR [rbp-0x48]
  402903:	8b 75 b4             	mov    esi,DWORD PTR [rbp-0x4c]
  402906:	44 8b 75 b0          	mov    r14d,DWORD PTR [rbp-0x50]
  40290a:	44 8b 6d ac          	mov    r13d,DWORD PTR [rbp-0x54]
  40290e:	8b 4d a8             	mov    ecx,DWORD PTR [rbp-0x58]
  402911:	8b 55 a4             	mov    edx,DWORD PTR [rbp-0x5c]
  402914:	8b 45 a0             	mov    eax,DWORD PTR [rbp-0x60]
  402917:	41 54                	push   r12
  402919:	53                   	push   rbx
  40291a:	41 53                	push   r11
  40291c:	41 52                	push   r10
  40291e:	41 51                	push   r9
  402920:	41 50                	push   r8
  402922:	57                   	push   rdi
  402923:	56                   	push   rsi
  402924:	45 89 f1             	mov    r9d,r14d
  402927:	45 89 e8             	mov    r8d,r13d
  40292a:	89 c6                	mov    esi,eax
  40292c:	bf 88 2a 40 00       	mov    edi,0x402a88
  402931:	b8 00 00 00 00       	mov    eax,0x0
  402936:	e8 45 dc ff ff       	call   400580 <printf@plt>
  40293b:	48 83 c4 40          	add    rsp,0x40
  40293f:	eb 0a                	jmp    40294b <main+0x364>
  402941:	bf b1 2a 40 00       	mov    edi,0x402ab1
  402946:	e8 15 dc ff ff       	call   400560 <puts@plt>
  40294b:	b8 00 00 00 00       	mov    eax,0x0
  402950:	48 8b 5d d8          	mov    rbx,QWORD PTR [rbp-0x28]
  402954:	64 48 33 1c 25 28 00 	xor    rbx,QWORD PTR fs:0x28
  40295b:	00 00 
  40295d:	74 05                	je     402964 <main+0x37d>
  40295f:	e8 0c dc ff ff       	call   400570 <__stack_chk_fail@plt>
  402964:	48 8d 65 e0          	lea    rsp,[rbp-0x20]
  402968:	5b                   	pop    rbx
  402969:	41 5c                	pop    r12
  40296b:	41 5d                	pop    r13
  40296d:	41 5e                	pop    r14
  40296f:	5d                   	pop    rbp
  402970:	c3                   	ret    
  402971:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  402978:	00 00 00 
  40297b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000402980 <__libc_csu_init>:
  402980:	41 57                	push   r15
  402982:	41 56                	push   r14
  402984:	41 89 ff             	mov    r15d,edi
  402987:	41 55                	push   r13
  402989:	41 54                	push   r12
  40298b:	4c 8d 25 7e 04 20 00 	lea    r12,[rip+0x20047e]        # 602e10 <__frame_dummy_init_array_entry>
  402992:	55                   	push   rbp
  402993:	48 8d 2d 7e 04 20 00 	lea    rbp,[rip+0x20047e]        # 602e18 <__init_array_end>
  40299a:	53                   	push   rbx
  40299b:	49 89 f6             	mov    r14,rsi
  40299e:	49 89 d5             	mov    r13,rdx
  4029a1:	4c 29 e5             	sub    rbp,r12
  4029a4:	48 83 ec 08          	sub    rsp,0x8
  4029a8:	48 c1 fd 03          	sar    rbp,0x3
  4029ac:	e8 7f db ff ff       	call   400530 <_init>
  4029b1:	48 85 ed             	test   rbp,rbp
  4029b4:	74 20                	je     4029d6 <__libc_csu_init+0x56>
  4029b6:	31 db                	xor    ebx,ebx
  4029b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4029bf:	00 
  4029c0:	4c 89 ea             	mov    rdx,r13
  4029c3:	4c 89 f6             	mov    rsi,r14
  4029c6:	44 89 ff             	mov    edi,r15d
  4029c9:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  4029cd:	48 83 c3 01          	add    rbx,0x1
  4029d1:	48 39 eb             	cmp    rbx,rbp
  4029d4:	75 ea                	jne    4029c0 <__libc_csu_init+0x40>
  4029d6:	48 83 c4 08          	add    rsp,0x8
  4029da:	5b                   	pop    rbx
  4029db:	5d                   	pop    rbp
  4029dc:	41 5c                	pop    r12
  4029de:	41 5d                	pop    r13
  4029e0:	41 5e                	pop    r14
  4029e2:	41 5f                	pop    r15
  4029e4:	c3                   	ret    
  4029e5:	90                   	nop
  4029e6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4029ed:	00 00 00 

00000000004029f0 <__libc_csu_fini>:
  4029f0:	f3 c3                	repz ret 

Disassembly of section .fini:

00000000004029f4 <_fini>:
  4029f4:	48 83 ec 08          	sub    rsp,0x8
  4029f8:	48 83 c4 08          	add    rsp,0x8
  4029fc:	c3                   	ret    
