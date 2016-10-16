
whatamitoyou:     file format elf64-x86-64


Disassembly of section .init:

0000000000400418 <.init>:
  400418:	48 83 ec 08          	sub    rsp,0x8
  40041c:	48 8b 05 35 19 20 00 	mov    rax,QWORD PTR [rip+0x201935]        # 601d58 <__gmon_start__@plt+0x2018c8>
  400423:	48 85 c0             	test   rax,rax
  400426:	74 05                	je     40042d <putchar@plt-0x23>
  400428:	e8 63 00 00 00       	call   400490 <__gmon_start__@plt>
  40042d:	48 83 c4 08          	add    rsp,0x8
  400431:	c3                   	ret    

Disassembly of section .plt:

0000000000400440 <putchar@plt-0x10>:
  400440:	ff 35 22 19 20 00    	push   QWORD PTR [rip+0x201922]        # 601d68 <__gmon_start__@plt+0x2018d8>
  400446:	ff 25 24 19 20 00    	jmp    QWORD PTR [rip+0x201924]        # 601d70 <__gmon_start__@plt+0x2018e0>
  40044c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400450 <putchar@plt>:
  400450:	ff 25 22 19 20 00    	jmp    QWORD PTR [rip+0x201922]        # 601d78 <__gmon_start__@plt+0x2018e8>
  400456:	68 00 00 00 00       	push   0x0
  40045b:	e9 e0 ff ff ff       	jmp    400440 <putchar@plt-0x10>

0000000000400460 <puts@plt>:
  400460:	ff 25 1a 19 20 00    	jmp    QWORD PTR [rip+0x20191a]        # 601d80 <__gmon_start__@plt+0x2018f0>
  400466:	68 01 00 00 00       	push   0x1
  40046b:	e9 d0 ff ff ff       	jmp    400440 <putchar@plt-0x10>

0000000000400470 <printf@plt>:
  400470:	ff 25 12 19 20 00    	jmp    QWORD PTR [rip+0x201912]        # 601d88 <__gmon_start__@plt+0x2018f8>
  400476:	68 02 00 00 00       	push   0x2
  40047b:	e9 c0 ff ff ff       	jmp    400440 <putchar@plt-0x10>

0000000000400480 <__libc_start_main@plt>:
  400480:	ff 25 0a 19 20 00    	jmp    QWORD PTR [rip+0x20190a]        # 601d90 <__gmon_start__@plt+0x201900>
  400486:	68 03 00 00 00       	push   0x3
  40048b:	e9 b0 ff ff ff       	jmp    400440 <putchar@plt-0x10>

0000000000400490 <__gmon_start__@plt>:
  400490:	ff 25 02 19 20 00    	jmp    QWORD PTR [rip+0x201902]        # 601d98 <__gmon_start__@plt+0x201908>
  400496:	68 04 00 00 00       	push   0x4
  40049b:	e9 a0 ff ff ff       	jmp    400440 <putchar@plt-0x10>

Disassembly of section .text:

00000000004004a0 <.text>:
  4004a0:	31 ed                	xor    ebp,ebp
  4004a2:	49 89 d1             	mov    r9,rdx
  4004a5:	5e                   	pop    rsi
  4004a6:	48 89 e2             	mov    rdx,rsp
  4004a9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  4004ad:	50                   	push   rax
  4004ae:	54                   	push   rsp
  4004af:	49 c7 c0 10 1a 40 00 	mov    r8,0x401a10
  4004b6:	48 c7 c1 a0 19 40 00 	mov    rcx,0x4019a0
  4004bd:	48 c7 c7 96 05 40 00 	mov    rdi,0x400596
  4004c4:	e8 b7 ff ff ff       	call   400480 <__libc_start_main@plt>
  4004c9:	f4                   	hlt    
  4004ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4004d0:	b8 b7 1d 60 00       	mov    eax,0x601db7
  4004d5:	55                   	push   rbp
  4004d6:	48 2d b0 1d 60 00    	sub    rax,0x601db0
  4004dc:	48 83 f8 0e          	cmp    rax,0xe
  4004e0:	48 89 e5             	mov    rbp,rsp
  4004e3:	76 1b                	jbe    400500 <__gmon_start__@plt+0x70>
  4004e5:	b8 00 00 00 00       	mov    eax,0x0
  4004ea:	48 85 c0             	test   rax,rax
  4004ed:	74 11                	je     400500 <__gmon_start__@plt+0x70>
  4004ef:	5d                   	pop    rbp
  4004f0:	bf b0 1d 60 00       	mov    edi,0x601db0
  4004f5:	ff e0                	jmp    rax
  4004f7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  4004fe:	00 00 
  400500:	5d                   	pop    rbp
  400501:	c3                   	ret    
  400502:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400506:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40050d:	00 00 00 
  400510:	be b0 1d 60 00       	mov    esi,0x601db0
  400515:	55                   	push   rbp
  400516:	48 81 ee b0 1d 60 00 	sub    rsi,0x601db0
  40051d:	48 c1 fe 03          	sar    rsi,0x3
  400521:	48 89 e5             	mov    rbp,rsp
  400524:	48 89 f0             	mov    rax,rsi
  400527:	48 c1 e8 3f          	shr    rax,0x3f
  40052b:	48 01 c6             	add    rsi,rax
  40052e:	48 d1 fe             	sar    rsi,1
  400531:	74 15                	je     400548 <__gmon_start__@plt+0xb8>
  400533:	b8 00 00 00 00       	mov    eax,0x0
  400538:	48 85 c0             	test   rax,rax
  40053b:	74 0b                	je     400548 <__gmon_start__@plt+0xb8>
  40053d:	5d                   	pop    rbp
  40053e:	bf b0 1d 60 00       	mov    edi,0x601db0
  400543:	ff e0                	jmp    rax
  400545:	0f 1f 00             	nop    DWORD PTR [rax]
  400548:	5d                   	pop    rbp
  400549:	c3                   	ret    
  40054a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  400550:	80 3d 59 18 20 00 00 	cmp    BYTE PTR [rip+0x201859],0x0        # 601db0 <__gmon_start__@plt+0x201920>
  400557:	75 11                	jne    40056a <__gmon_start__@plt+0xda>
  400559:	55                   	push   rbp
  40055a:	48 89 e5             	mov    rbp,rsp
  40055d:	e8 6e ff ff ff       	call   4004d0 <__gmon_start__@plt+0x40>
  400562:	5d                   	pop    rbp
  400563:	c6 05 46 18 20 00 01 	mov    BYTE PTR [rip+0x201846],0x1        # 601db0 <__gmon_start__@plt+0x201920>
  40056a:	f3 c3                	repz ret 
  40056c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400570:	bf 80 1b 60 00       	mov    edi,0x601b80
  400575:	48 83 3f 00          	cmp    QWORD PTR [rdi],0x0
  400579:	75 05                	jne    400580 <__gmon_start__@plt+0xf0>
  40057b:	eb 93                	jmp    400510 <__gmon_start__@plt+0x80>
  40057d:	0f 1f 00             	nop    DWORD PTR [rax]
  400580:	b8 00 00 00 00       	mov    eax,0x0
  400585:	48 85 c0             	test   rax,rax
  400588:	74 f1                	je     40057b <__gmon_start__@plt+0xeb>
  40058a:	55                   	push   rbp
  40058b:	48 89 e5             	mov    rbp,rsp
  40058e:	ff d0                	call   rax
  400590:	5d                   	pop    rbp
  400591:	e9 7a ff ff ff       	jmp    400510 <__gmon_start__@plt+0x80>
  400596:	55                   	push   rbp
  400597:	48 89 e5             	mov    rbp,rsp
  40059a:	48 81 ec a0 1c 00 00 	sub    rsp,0x1ca0
  4005a1:	89 bd 6c e3 ff ff    	mov    DWORD PTR [rbp-0x1c94],edi
  4005a7:	48 89 b5 60 e3 ff ff 	mov    QWORD PTR [rbp-0x1ca0],rsi
  4005ae:	48 8d 95 c0 fe ff ff 	lea    rdx,[rbp-0x140]
  4005b5:	b8 00 00 00 00       	mov    eax,0x0
  4005ba:	b9 25 00 00 00       	mov    ecx,0x25
  4005bf:	48 89 d7             	mov    rdi,rdx
  4005c2:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  4005c5:	48 b8 41 6d 20 49 20 	movabs rax,0x6a20612049206d41
  4005cc:	61 20 6a 
  4005cf:	48 89 85 c0 fe ff ff 	mov    QWORD PTR [rbp-0x140],rax
  4005d6:	48 b8 6f 6b 65 2c 20 	movabs rax,0x756f79202c656b6f
  4005dd:	79 6f 75 
  4005e0:	48 89 85 c8 fe ff ff 	mov    QWORD PTR [rbp-0x138],rax
  4005e7:	48 b8 72 20 6b 6e 69 	movabs rax,0x746867696e6b2072
  4005ee:	67 68 74 
  4005f1:	48 89 85 d0 fe ff ff 	mov    QWORD PTR [rbp-0x130],rax
  4005f8:	48 b8 2c 20 6f 72 20 	movabs rax,0x756f7920726f202c
  4005ff:	79 6f 75 
  400602:	48 89 85 d8 fe ff ff 	mov    QWORD PTR [rbp-0x128],rax
  400609:	48 b8 72 20 62 72 6f 	movabs rax,0x6568746f72622072
  400610:	74 68 65 
  400613:	48 89 85 e0 fe ff ff 	mov    QWORD PTR [rbp-0x120],rax
  40061a:	48 c7 85 e8 fe ff ff 	mov    QWORD PTR [rbp-0x118],0x3f72
  400621:	72 3f 00 00 
  400625:	48 8d 95 f0 fe ff ff 	lea    rdx,[rbp-0x110]
  40062c:	b8 00 00 00 00       	mov    eax,0x0
  400631:	b9 1a 00 00 00       	mov    ecx,0x1a
  400636:	48 89 d7             	mov    rdi,rdx
  400639:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  40063c:	c7 45 e0 5b 00 00 00 	mov    DWORD PTR [rbp-0x20],0x5b
  400643:	48 8d 95 90 fd ff ff 	lea    rdx,[rbp-0x270]
  40064a:	b8 00 00 00 00       	mov    eax,0x0
  40064f:	b9 25 00 00 00       	mov    ecx,0x25
  400654:	48 89 d7             	mov    rdi,rdx
  400657:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  40065a:	48 b8 41 6e 64 20 74 	movabs rax,0x7461687420646e41
  400661:	68 61 74 
  400664:	48 89 85 90 fd ff ff 	mov    QWORD PTR [rbp-0x270],rax
  40066b:	48 b8 27 73 20 72 69 	movabs rax,0x7468676972207327
  400672:	67 68 74 
  400675:	48 89 85 98 fd ff ff 	mov    QWORD PTR [rbp-0x268],rax
  40067c:	48 b8 2c 20 49 27 6d 	movabs rax,0x6174206d2749202c
  400683:	20 74 61 
  400686:	48 89 85 a0 fd ff ff 	mov    QWORD PTR [rbp-0x260],rax
  40068d:	48 b8 6c 6b 69 6e 67 	movabs rax,0x626120676e696b6c
  400694:	20 61 62 
  400697:	48 89 85 a8 fd ff ff 	mov    QWORD PTR [rbp-0x258],rax
  40069e:	48 b8 6f 75 74 20 74 	movabs rax,0x206568742074756f
  4006a5:	68 65 20 
  4006a8:	48 89 85 b0 fd ff ff 	mov    QWORD PTR [rbp-0x250],rax
  4006af:	48 b8 74 77 6f 20 6f 	movabs rax,0x7920666f206f7774
  4006b6:	66 20 79 
  4006b9:	48 89 85 b8 fd ff ff 	mov    QWORD PTR [rbp-0x248],rax
  4006c0:	48 b8 6f 75 20 67 69 	movabs rax,0x736c72696720756f
  4006c7:	72 6c 73 
  4006ca:	48 89 85 c0 fd ff ff 	mov    QWORD PTR [rbp-0x240],rax
  4006d1:	48 c7 85 c8 fd ff ff 	mov    QWORD PTR [rbp-0x238],0x2e
  4006d8:	2e 00 00 00 
  4006dc:	48 8d 95 d0 fd ff ff 	lea    rdx,[rbp-0x230]
  4006e3:	b8 00 00 00 00       	mov    eax,0x0
  4006e8:	b9 18 00 00 00       	mov    ecx,0x18
  4006ed:	48 89 d7             	mov    rdi,rdx
  4006f0:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  4006f3:	c7 85 b0 fe ff ff a5 	mov    DWORD PTR [rbp-0x150],0xa5
  4006fa:	00 00 00 
  4006fd:	48 8d 95 60 fc ff ff 	lea    rdx,[rbp-0x3a0]
  400704:	b8 00 00 00 00       	mov    eax,0x0
  400709:	b9 25 00 00 00       	mov    ecx,0x25
  40070e:	48 89 d7             	mov    rdi,rdx
  400711:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400714:	48 b8 41 6e 64 20 79 	movabs rax,0x2c756f7920646e41
  40071b:	6f 75 2c 
  40071e:	48 89 85 60 fc ff ff 	mov    QWORD PTR [rbp-0x3a0],rax
  400725:	48 b8 20 4a 61 6b 65 	movabs rax,0x2e656b614a20
  40072c:	2e 00 00 
  40072f:	48 89 85 68 fc ff ff 	mov    QWORD PTR [rbp-0x398],rax
  400736:	48 8d 95 70 fc ff ff 	lea    rdx,[rbp-0x390]
  40073d:	b8 00 00 00 00       	mov    eax,0x0
  400742:	b9 1e 00 00 00       	mov    ecx,0x1e
  400747:	48 89 d7             	mov    rdi,rdx
  40074a:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  40074d:	c7 85 80 fd ff ff 11 	mov    DWORD PTR [rbp-0x280],0x11
  400754:	00 00 00 
  400757:	48 8d 95 30 fb ff ff 	lea    rdx,[rbp-0x4d0]
  40075e:	b8 00 00 00 00       	mov    eax,0x0
  400763:	b9 25 00 00 00       	mov    ecx,0x25
  400768:	48 89 d7             	mov    rdi,rdx
  40076b:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  40076e:	48 b8 49 27 6d 20 67 	movabs rax,0x6e6e6f67206d2749
  400775:	6f 6e 6e 
  400778:	48 89 85 30 fb ff ff 	mov    QWORD PTR [rbp-0x4d0],rax
  40077f:	48 b8 61 20 73 69 6e 	movabs rax,0x6120676e69732061
  400786:	67 20 61 
  400789:	48 89 85 38 fb ff ff 	mov    QWORD PTR [rbp-0x4c8],rax
  400790:	48 b8 20 73 6f 6e 67 	movabs rax,0x687420676e6f7320
  400797:	20 74 68 
  40079a:	48 89 85 40 fb ff ff 	mov    QWORD PTR [rbp-0x4c0],rax
  4007a1:	48 b8 61 74 20 66 65 	movabs rax,0x736c656566207461
  4007a8:	65 6c 73 
  4007ab:	48 89 85 48 fb ff ff 	mov    QWORD PTR [rbp-0x4b8],rax
  4007b2:	48 b8 20 73 6f 20 72 	movabs rax,0x6c616572206f7320
  4007b9:	65 61 6c 
  4007bc:	48 89 85 50 fb ff ff 	mov    QWORD PTR [rbp-0x4b0],rax
  4007c3:	48 b8 2c 20 69 74 27 	movabs rax,0x206c6c277469202c
  4007ca:	6c 6c 20 
  4007cd:	48 89 85 58 fb ff ff 	mov    QWORD PTR [rbp-0x4a8],rax
  4007d4:	48 b8 6d 61 6b 65 20 	movabs rax,0x69687420656b616d
  4007db:	74 68 69 
  4007de:	48 89 85 60 fb ff ff 	mov    QWORD PTR [rbp-0x4a0],rax
  4007e5:	48 b8 73 20 64 6f 6f 	movabs rax,0x6220726f6f642073
  4007ec:	72 20 62 
  4007ef:	48 89 85 68 fb ff ff 	mov    QWORD PTR [rbp-0x498],rax
  4007f6:	48 b8 72 65 61 6b 21 	movabs rax,0x216b616572
  4007fd:	00 00 00 
  400800:	48 89 85 70 fb ff ff 	mov    QWORD PTR [rbp-0x490],rax
  400807:	48 8d 95 78 fb ff ff 	lea    rdx,[rbp-0x488]
  40080e:	b8 00 00 00 00       	mov    eax,0x0
  400813:	b9 17 00 00 00       	mov    ecx,0x17
  400818:	48 89 d7             	mov    rdi,rdx
  40081b:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  40081e:	c7 85 50 fc ff ff 0b 	mov    DWORD PTR [rbp-0x3b0],0xb
  400825:	00 00 00 
  400828:	48 8d 95 00 fa ff ff 	lea    rdx,[rbp-0x600]
  40082f:	b8 00 00 00 00       	mov    eax,0x0
  400834:	b9 25 00 00 00       	mov    ecx,0x25
  400839:	48 89 d7             	mov    rdi,rdx
  40083c:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  40083f:	48 b8 44 6f 20 79 6f 	movabs rax,0x6c20756f79206f44
  400846:	75 20 6c 
  400849:	48 89 85 00 fa ff ff 	mov    QWORD PTR [rbp-0x600],rax
  400850:	48 b8 6f 6f 6b 20 64 	movabs rax,0x6e776f64206b6f6f
  400857:	6f 77 6e 
  40085a:	48 89 85 08 fa ff ff 	mov    QWORD PTR [rbp-0x5f8],rax
  400861:	48 b8 20 6f 6e 20 6d 	movabs rax,0x2720656d206e6f20
  400868:	65 20 27 
  40086b:	48 89 85 10 fa ff ff 	mov    QWORD PTR [rbp-0x5f0],rax
  400872:	48 b8 63 61 75 73 65 	movabs rax,0x2749206573756163
  400879:	20 49 27 
  40087c:	48 89 85 18 fa ff ff 	mov    QWORD PTR [rbp-0x5e8],rax
  400883:	48 b8 6d 20 79 6f 75 	movabs rax,0x65676e756f79206d
  40088a:	6e 67 65 
  40088d:	48 89 85 20 fa ff ff 	mov    QWORD PTR [rbp-0x5e0],rax
  400894:	48 c7 85 28 fa ff ff 	mov    QWORD PTR [rbp-0x5d8],0x3f72
  40089b:	72 3f 00 00 
  40089f:	48 8d 95 30 fa ff ff 	lea    rdx,[rbp-0x5d0]
  4008a6:	b8 00 00 00 00       	mov    eax,0x0
  4008ab:	b9 1a 00 00 00       	mov    ecx,0x1a
  4008b0:	48 89 d7             	mov    rdi,rdx
  4008b3:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  4008b6:	c7 85 20 fb ff ff 1f 	mov    DWORD PTR [rbp-0x4e0],0x1f
  4008bd:	00 00 00 
  4008c0:	48 8d 95 d0 f8 ff ff 	lea    rdx,[rbp-0x730]
  4008c7:	b8 00 00 00 00       	mov    eax,0x0
  4008cc:	b9 25 00 00 00       	mov    ecx,0x25
  4008d1:	48 89 d7             	mov    rdi,rdx
  4008d4:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  4008d7:	48 b8 44 6f 20 79 6f 	movabs rax,0x7420756f79206f44
  4008de:	75 20 74 
  4008e1:	48 89 85 d0 f8 ff ff 	mov    QWORD PTR [rbp-0x730],rax
  4008e8:	48 b8 68 69 6e 6b 20 	movabs rax,0x616874206b6e6968
  4008ef:	74 68 61 
  4008f2:	48 89 85 d8 f8 ff ff 	mov    QWORD PTR [rbp-0x728],rax
  4008f9:	48 b8 74 20 49 20 64 	movabs rax,0x276e6f6420492074
  400900:	6f 6e 27 
  400903:	48 89 85 e0 f8 ff ff 	mov    QWORD PTR [rbp-0x720],rax
  40090a:	48 b8 74 20 75 6e 64 	movabs rax,0x737265646e752074
  400911:	65 72 73 
  400914:	48 89 85 e8 f8 ff ff 	mov    QWORD PTR [rbp-0x718],rax
  40091b:	48 b8 74 61 6e 64 3f 	movabs rax,0x3f646e6174
  400922:	00 00 00 
  400925:	48 89 85 f0 f8 ff ff 	mov    QWORD PTR [rbp-0x710],rax
  40092c:	48 8d 95 f8 f8 ff ff 	lea    rdx,[rbp-0x708]
  400933:	b8 00 00 00 00       	mov    eax,0x0
  400938:	b9 1b 00 00 00       	mov    ecx,0x1b
  40093d:	48 89 d7             	mov    rdi,rdx
  400940:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400943:	c7 85 f0 f9 ff ff 3f 	mov    DWORD PTR [rbp-0x610],0x3f
  40094a:	00 00 00 
  40094d:	48 8d 95 a0 f7 ff ff 	lea    rdx,[rbp-0x860]
  400954:	b8 00 00 00 00       	mov    eax,0x0
  400959:	b9 25 00 00 00       	mov    ecx,0x25
  40095e:	48 89 d7             	mov    rdi,rdx
  400961:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400964:	48 b8 45 76 65 6e 20 	movabs rax,0x6b696c206e657645
  40096b:	6c 69 6b 
  40096e:	48 89 85 a0 f7 ff ff 	mov    QWORD PTR [rbp-0x860],rax
  400975:	48 b8 65 64 20 69 74 	movabs rax,0x6877207469206465
  40097c:	20 77 68 
  40097f:	48 89 85 a8 f7 ff ff 	mov    QWORD PTR [rbp-0x858],rax
  400986:	48 b8 65 6e 20 74 68 	movabs rax,0x7420656874206e65
  40098d:	65 20 74 
  400990:	48 89 85 b0 f7 ff ff 	mov    QWORD PTR [rbp-0x850],rax
  400997:	48 b8 77 6f 20 6f 66 	movabs rax,0x6f7920666f206f77
  40099e:	20 79 6f 
  4009a1:	48 89 85 b8 f7 ff ff 	mov    QWORD PTR [rbp-0x848],rax
  4009a8:	48 b8 75 20 77 6f 75 	movabs rax,0x20646c756f772075
  4009af:	6c 64 20 
  4009b2:	48 89 85 c0 f7 ff ff 	mov    QWORD PTR [rbp-0x840],rax
  4009b9:	48 b8 67 65 74 20 6d 	movabs rax,0x2064616d20746567
  4009c0:	61 64 20 
  4009c3:	48 89 85 c8 f7 ff ff 	mov    QWORD PTR [rbp-0x838],rax
  4009ca:	48 b8 61 74 20 65 61 	movabs rax,0x2068636165207461
  4009d1:	63 68 20 
  4009d4:	48 89 85 d0 f7 ff ff 	mov    QWORD PTR [rbp-0x830],rax
  4009db:	48 b8 6f 74 68 65 72 	movabs rax,0x2e726568746f
  4009e2:	2e 00 00 
  4009e5:	48 89 85 d8 f7 ff ff 	mov    QWORD PTR [rbp-0x828],rax
  4009ec:	48 8d 95 e0 f7 ff ff 	lea    rdx,[rbp-0x820]
  4009f3:	b8 00 00 00 00       	mov    eax,0x0
  4009f8:	b9 18 00 00 00       	mov    ecx,0x18
  4009fd:	48 89 d7             	mov    rdi,rdx
  400a00:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400a03:	c7 85 c0 f8 ff ff 17 	mov    DWORD PTR [rbp-0x740],0x17
  400a0a:	00 00 00 
  400a0d:	48 8d 95 70 f6 ff ff 	lea    rdx,[rbp-0x990]
  400a14:	b8 00 00 00 00       	mov    eax,0x0
  400a19:	b9 25 00 00 00       	mov    ecx,0x25
  400a1e:	48 89 d7             	mov    rdi,rdx
  400a21:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400a24:	48 b8 49 66 20 79 6f 	movabs rax,0x7227756f79206649
  400a2b:	75 27 72 
  400a2e:	48 89 85 70 f6 ff ff 	mov    QWORD PTR [rbp-0x990],rax
  400a35:	48 b8 65 20 65 76 65 	movabs rax,0x6d206e6576652065
  400a3c:	6e 20 6d 
  400a3f:	48 89 85 78 f6 ff ff 	mov    QWORD PTR [rbp-0x988],rax
  400a46:	48 b8 79 20 66 72 69 	movabs rax,0x646e656972662079
  400a4d:	65 6e 64 
  400a50:	48 89 85 80 f6 ff ff 	mov    QWORD PTR [rbp-0x980],rax
  400a57:	48 c7 85 88 f6 ff ff 	mov    QWORD PTR [rbp-0x978],0x2e73
  400a5e:	73 2e 00 00 
  400a62:	48 8d 95 90 f6 ff ff 	lea    rdx,[rbp-0x970]
  400a69:	b8 00 00 00 00       	mov    eax,0x0
  400a6e:	b9 1c 00 00 00       	mov    ecx,0x1c
  400a73:	48 89 d7             	mov    rdi,rdx
  400a76:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400a79:	c7 85 90 f7 ff ff 57 	mov    DWORD PTR [rbp-0x870],0x57
  400a80:	00 00 00 
  400a83:	48 8d 95 40 f5 ff ff 	lea    rdx,[rbp-0xac0]
  400a8a:	b8 00 00 00 00       	mov    eax,0x0
  400a8f:	b9 25 00 00 00       	mov    ecx,0x25
  400a94:	48 89 d7             	mov    rdi,rdx
  400a97:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400a9a:	48 b8 49 20 6a 75 73 	movabs rax,0x77207473756a2049
  400aa1:	74 20 77 
  400aa4:	48 89 85 40 f5 ff ff 	mov    QWORD PTR [rbp-0xac0],rax
  400aab:	48 b8 61 6e 74 65 64 	movabs rax,0x7375206465746e61
  400ab2:	20 75 73 
  400ab5:	48 89 85 48 f5 ff ff 	mov    QWORD PTR [rbp-0xab8],rax
  400abc:	48 b8 20 74 6f 67 65 	movabs rax,0x65687465676f7420
  400ac3:	74 68 65 
  400ac6:	48 89 85 50 f5 ff ff 	mov    QWORD PTR [rbp-0xab0],rax
  400acd:	48 b8 72 20 61 6e 64 	movabs rax,0x6f7420646e612072
  400ad4:	20 74 6f 
  400ad7:	48 89 85 58 f5 ff ff 	mov    QWORD PTR [rbp-0xaa8],rax
  400ade:	48 b8 20 70 6c 61 79 	movabs rax,0x73612079616c7020
  400ae5:	20 61 73 
  400ae8:	48 89 85 60 f5 ff ff 	mov    QWORD PTR [rbp-0xaa0],rax
  400aef:	48 b8 20 61 20 62 61 	movabs rax,0x2c646e6162206120
  400af6:	6e 64 2c 
  400af9:	48 89 85 68 f5 ff ff 	mov    QWORD PTR [rbp-0xa98],rax
  400b00:	48 c7 85 70 f5 ff ff 	mov    QWORD PTR [rbp-0xa90],0x0
  400b07:	00 00 00 00 
  400b0b:	48 8d 95 78 f5 ff ff 	lea    rdx,[rbp-0xa88]
  400b12:	b8 00 00 00 00       	mov    eax,0x0
  400b17:	b9 19 00 00 00       	mov    ecx,0x19
  400b1c:	48 89 d7             	mov    rdi,rdx
  400b1f:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400b22:	c7 85 60 f6 ff ff ed 	mov    DWORD PTR [rbp-0x9a0],0x2ed
  400b29:	02 00 00 
  400b2c:	48 8d 95 10 f4 ff ff 	lea    rdx,[rbp-0xbf0]
  400b33:	b8 00 00 00 00       	mov    eax,0x0
  400b38:	b9 25 00 00 00       	mov    ecx,0x25
  400b3d:	48 89 d7             	mov    rdi,rdx
  400b40:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400b43:	48 b8 49 27 6c 6c 20 	movabs rax,0x726f66206c6c2749
  400b4a:	66 6f 72 
  400b4d:	48 89 85 10 f4 ff ff 	mov    QWORD PTR [rbp-0xbf0],rax
  400b54:	48 b8 67 65 74 20 74 	movabs rax,0x7461687420746567
  400b5b:	68 61 74 
  400b5e:	48 89 85 18 f4 ff ff 	mov    QWORD PTR [rbp-0xbe8],rax
  400b65:	48 b8 20 49 20 6c 6f 	movabs rax,0x2074736f6c204920
  400b6c:	73 74 20 
  400b6f:	48 89 85 20 f4 ff ff 	mov    QWORD PTR [rbp-0xbe0],rax
  400b76:	48 b8 61 20 70 69 65 	movabs rax,0x2065636569702061
  400b7d:	63 65 20 
  400b80:	48 89 85 28 f4 ff ff 	mov    QWORD PTR [rbp-0xbd8],rax
  400b87:	48 b8 6f 66 20 79 6f 	movabs rax,0x2072756f7920666f
  400b8e:	75 72 20 
  400b91:	48 89 85 30 f4 ff ff 	mov    QWORD PTR [rbp-0xbd0],rax
  400b98:	48 b8 68 61 69 72 2e 	movabs rax,0x2e72696168
  400b9f:	00 00 00 
  400ba2:	48 89 85 38 f4 ff ff 	mov    QWORD PTR [rbp-0xbc8],rax
  400ba9:	48 8d 95 40 f4 ff ff 	lea    rdx,[rbp-0xbc0]
  400bb0:	b8 00 00 00 00       	mov    eax,0x0
  400bb5:	b9 1a 00 00 00       	mov    ecx,0x1a
  400bba:	48 89 d7             	mov    rdi,rdx
  400bbd:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400bc0:	c7 85 30 f5 ff ff 4a 	mov    DWORD PTR [rbp-0xad0],0x4a
  400bc7:	00 00 00 
  400bca:	48 8d 95 e0 f2 ff ff 	lea    rdx,[rbp-0xd20]
  400bd1:	b8 00 00 00 00       	mov    eax,0x0
  400bd6:	b9 25 00 00 00       	mov    ecx,0x25
  400bdb:	48 89 d7             	mov    rdi,rdx
  400bde:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400be1:	48 b8 49 27 6c 6c 20 	movabs rax,0x6d6572206c6c2749
  400be8:	72 65 6d 
  400beb:	48 89 85 e0 f2 ff ff 	mov    QWORD PTR [rbp-0xd20],rax
  400bf2:	48 b8 65 6d 62 65 72 	movabs rax,0x6874207265626d65
  400bf9:	20 74 68 
  400bfc:	48 89 85 e8 f2 ff ff 	mov    QWORD PTR [rbp-0xd18],rax
  400c03:	48 b8 65 20 70 61 73 	movabs rax,0x2061747361702065
  400c0a:	74 61 20 
  400c0d:	48 89 85 f0 f2 ff ff 	mov    QWORD PTR [rbp-0xd10],rax
  400c14:	48 b8 74 68 61 74 20 	movabs rax,0x2065772074616874
  400c1b:	77 65 20 
  400c1e:	48 89 85 f8 f2 ff ff 	mov    QWORD PTR [rbp-0xd08],rax
  400c25:	48 b8 73 68 61 72 65 	movabs rax,0x6f20646572616873
  400c2c:	64 20 6f 
  400c2f:	48 89 85 00 f3 ff ff 	mov    QWORD PTR [rbp-0xd00],rax
  400c36:	48 b8 76 65 72 20 74 	movabs rax,0x7265687420726576
  400c3d:	68 65 72 
  400c40:	48 89 85 08 f3 ff ff 	mov    QWORD PTR [rbp-0xcf8],rax
  400c47:	48 c7 85 10 f3 ff ff 	mov    QWORD PTR [rbp-0xcf0],0x2e65
  400c4e:	65 2e 00 00 
  400c52:	48 8d 95 18 f3 ff ff 	lea    rdx,[rbp-0xce8]
  400c59:	b8 00 00 00 00       	mov    eax,0x0
  400c5e:	b9 19 00 00 00       	mov    ecx,0x19
  400c63:	48 89 d7             	mov    rdi,rdx
  400c66:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400c69:	c7 85 00 f4 ff ff 07 	mov    DWORD PTR [rbp-0xc00],0x7
  400c70:	00 00 00 
  400c73:	48 8d 95 b0 f1 ff ff 	lea    rdx,[rbp-0xe50]
  400c7a:	b8 00 00 00 00       	mov    eax,0x0
  400c7f:	b9 25 00 00 00       	mov    ecx,0x25
  400c84:	48 89 d7             	mov    rdi,rdx
  400c87:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400c8a:	48 b8 45 76 65 72 79 	movabs rax,0x656e6f7972657645
  400c91:	6f 6e 65 
  400c94:	48 89 85 b0 f1 ff ff 	mov    QWORD PTR [rbp-0xe50],rax
  400c9b:	48 b8 2e 2e 2e 20 42 	movabs rax,0x62627542202e2e2e
  400ca2:	75 62 62 
  400ca5:	48 89 85 b8 f1 ff ff 	mov    QWORD PTR [rbp-0xe48],rax
  400cac:	48 b8 6c 65 67 75 6d 	movabs rax,0x2e2e2e6d7567656c
  400cb3:	2e 2e 2e 
  400cb6:	48 89 85 c0 f1 ff ff 	mov    QWORD PTR [rbp-0xe40],rax
  400cbd:	48 b8 20 49 27 6d 20 	movabs rax,0x206f73206d274920
  400cc4:	73 6f 20 
  400cc7:	48 89 85 c8 f1 ff ff 	mov    QWORD PTR [rbp-0xe38],rax
  400cce:	48 c7 85 d0 f1 ff ff 	mov    QWORD PTR [rbp-0xe30],0x626d7564
  400cd5:	64 75 6d 62 
  400cd9:	48 8d 95 d8 f1 ff ff 	lea    rdx,[rbp-0xe28]
  400ce0:	b8 00 00 00 00       	mov    eax,0x0
  400ce5:	b9 1b 00 00 00       	mov    ecx,0x1b
  400cea:	48 89 d7             	mov    rdi,rdx
  400ced:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400cf0:	c7 85 d0 f2 ff ff d4 	mov    DWORD PTR [rbp-0xd30],0x2d4
  400cf7:	02 00 00 
  400cfa:	48 8d 95 80 f0 ff ff 	lea    rdx,[rbp-0xf80]
  400d01:	b8 00 00 00 00       	mov    eax,0x0
  400d06:	b9 25 00 00 00       	mov    ecx,0x25
  400d0b:	48 89 d7             	mov    rdi,rdx
  400d0e:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400d11:	48 b8 4c 61 73 74 20 	movabs rax,0x67696e207473614c
  400d18:	6e 69 67 
  400d1b:	48 89 85 80 f0 ff ff 	mov    QWORD PTR [rbp-0xf80],rax
  400d22:	48 b8 68 74 20 77 61 	movabs rax,0x7420736177207468
  400d29:	73 20 74 
  400d2c:	48 89 85 88 f0 ff ff 	mov    QWORD PTR [rbp-0xf78],rax
  400d33:	48 b8 68 65 20 6d 6f 	movabs rax,0x2074736f6d206568
  400d3a:	73 74 20 
  400d3d:	48 89 85 90 f0 ff ff 	mov    QWORD PTR [rbp-0xf70],rax
  400d44:	48 b8 66 75 6e 20 49 	movabs rax,0x65762749206e7566
  400d4b:	27 76 65 
  400d4e:	48 89 85 98 f0 ff ff 	mov    QWORD PTR [rbp-0xf68],rax
  400d55:	48 b8 20 65 76 65 72 	movabs rax,0x6168207265766520
  400d5c:	20 68 61 
  400d5f:	48 89 85 a0 f0 ff ff 	mov    QWORD PTR [rbp-0xf60],rax
  400d66:	48 c7 85 a8 f0 ff ff 	mov    QWORD PTR [rbp-0xf58],0x2c64
  400d6d:	64 2c 00 00 
  400d71:	48 8d 95 b0 f0 ff ff 	lea    rdx,[rbp-0xf50]
  400d78:	b8 00 00 00 00       	mov    eax,0x0
  400d7d:	b9 1a 00 00 00       	mov    ecx,0x1a
  400d82:	48 89 d7             	mov    rdi,rdx
  400d85:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400d88:	c7 85 a0 f1 ff ff c3 	mov    DWORD PTR [rbp-0xe60],0x1c3
  400d8f:	01 00 00 
  400d92:	48 8d 95 50 ef ff ff 	lea    rdx,[rbp-0x10b0]
  400d99:	b8 00 00 00 00       	mov    eax,0x0
  400d9e:	b9 25 00 00 00       	mov    ecx,0x25
  400da3:	48 89 d7             	mov    rdi,rdx
  400da6:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400da9:	48 b8 4d 61 6b 65 20 	movabs rax,0x206f6e20656b614d
  400db0:	6e 6f 20 
  400db3:	48 89 85 50 ef ff ff 	mov    QWORD PTR [rbp-0x10b0],rax
  400dba:	48 b8 6d 69 73 74 61 	movabs rax,0x21656b617473696d
  400dc1:	6b 65 21 
  400dc4:	48 89 85 58 ef ff ff 	mov    QWORD PTR [rbp-0x10a8],rax
  400dcb:	48 c7 85 60 ef ff ff 	mov    QWORD PTR [rbp-0x10a0],0x0
  400dd2:	00 00 00 00 
  400dd6:	48 8d 95 68 ef ff ff 	lea    rdx,[rbp-0x1098]
  400ddd:	b8 00 00 00 00       	mov    eax,0x0
  400de2:	b9 1d 00 00 00       	mov    ecx,0x1d
  400de7:	48 89 d7             	mov    rdi,rdx
  400dea:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400ded:	c7 85 70 f0 ff ff 85 	mov    DWORD PTR [rbp-0xf90],0x285
  400df4:	02 00 00 
  400df7:	48 8d 95 20 ee ff ff 	lea    rdx,[rbp-0x11e0]
  400dfe:	b8 00 00 00 00       	mov    eax,0x0
  400e03:	b9 25 00 00 00       	mov    ecx,0x25
  400e08:	48 89 d7             	mov    rdi,rdx
  400e0b:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400e0e:	48 b8 4e 6f 77 20 69 	movabs rax,0x7327746920776f4e
  400e15:	74 27 73 
  400e18:	48 89 85 20 ee ff ff 	mov    QWORD PTR [rbp-0x11e0],rax
  400e1f:	48 b8 20 67 6f 6e 65 	movabs rax,0x67203b656e6f6720
  400e26:	3b 20 67 
  400e29:	48 89 85 28 ee ff ff 	mov    QWORD PTR [rbp-0x11d8],rax
  400e30:	48 b8 6f 6e 65 20 66 	movabs rax,0x65726f6620656e6f
  400e37:	6f 72 65 
  400e3a:	48 89 85 30 ee ff ff 	mov    QWORD PTR [rbp-0x11d0],rax
  400e41:	48 c7 85 38 ee ff ff 	mov    QWORD PTR [rbp-0x11c8],0x2c726576
  400e48:	76 65 72 2c 
  400e4c:	48 8d 95 40 ee ff ff 	lea    rdx,[rbp-0x11c0]
  400e53:	b8 00 00 00 00       	mov    eax,0x0
  400e58:	b9 1c 00 00 00       	mov    ecx,0x1c
  400e5d:	48 89 d7             	mov    rdi,rdx
  400e60:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400e63:	c7 85 40 ef ff ff 21 	mov    DWORD PTR [rbp-0x10c0],0x321
  400e6a:	03 00 00 
  400e6d:	48 8d 95 f0 ec ff ff 	lea    rdx,[rbp-0x1310]
  400e74:	b8 00 00 00 00       	mov    eax,0x0
  400e79:	b9 25 00 00 00       	mov    ecx,0x25
  400e7e:	48 89 d7             	mov    rdi,rdx
  400e81:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400e84:	48 b8 4f 68 20 49 20 	movabs rax,0x73756a204920684f
  400e8b:	6a 75 73 
  400e8e:	48 89 85 f0 ec ff ff 	mov    QWORD PTR [rbp-0x1310],rax
  400e95:	48 b8 74 20 68 61 64 	movabs rax,0x6c61206461682074
  400e9c:	20 61 6c 
  400e9f:	48 89 85 f8 ec ff ff 	mov    QWORD PTR [rbp-0x1308],rax
  400ea6:	48 b8 6c 20 6f 66 20 	movabs rax,0x756f7920666f206c
  400ead:	79 6f 75 
  400eb0:	48 89 85 00 ed ff ff 	mov    QWORD PTR [rbp-0x1300],rax
  400eb7:	48 b8 20 74 68 65 72 	movabs rax,0x7720657265687420
  400ebe:	65 20 77 
  400ec1:	48 89 85 08 ed ff ff 	mov    QWORD PTR [rbp-0x12f8],rax
  400ec8:	48 b8 69 74 68 20 6d 	movabs rax,0x202c656d20687469
  400ecf:	65 2c 20 
  400ed2:	48 89 85 10 ed ff ff 	mov    QWORD PTR [rbp-0x12f0],rax
  400ed9:	48 b8 6d 79 20 66 72 	movabs rax,0x6e6569726620796d
  400ee0:	69 65 6e 
  400ee3:	48 89 85 18 ed ff ff 	mov    QWORD PTR [rbp-0x12e8],rax
  400eea:	48 b8 64 73 2e 2e 2e 	movabs rax,0x2e2e2e7364
  400ef1:	00 00 00 
  400ef4:	48 89 85 20 ed ff ff 	mov    QWORD PTR [rbp-0x12e0],rax
  400efb:	48 8d 95 28 ed ff ff 	lea    rdx,[rbp-0x12d8]
  400f02:	b8 00 00 00 00       	mov    eax,0x0
  400f07:	b9 19 00 00 00       	mov    ecx,0x19
  400f0c:	48 89 d7             	mov    rdi,rdx
  400f0f:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400f12:	c7 85 10 ee ff ff 3e 	mov    DWORD PTR [rbp-0x11f0],0x3e
  400f19:	00 00 00 
  400f1c:	48 8d 95 c0 eb ff ff 	lea    rdx,[rbp-0x1440]
  400f23:	b8 00 00 00 00       	mov    eax,0x0
  400f28:	b9 25 00 00 00       	mov    ecx,0x25
  400f2d:	48 89 d7             	mov    rdi,rdx
  400f30:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400f33:	48 b8 4f 68 2c 20 79 	movabs rax,0x20756f79202c684f
  400f3a:	6f 75 20 
  400f3d:	48 89 85 c0 eb ff ff 	mov    QWORD PTR [rbp-0x1440],rax
  400f44:	48 b8 61 72 65 20 6d 	movabs rax,0x6220796d20657261
  400f4b:	79 20 62 
  400f4e:	48 89 85 c8 eb ff ff 	mov    QWORD PTR [rbp-0x1438],rax
  400f55:	48 b8 65 73 74 20 66 	movabs rax,0x6569726620747365
  400f5c:	72 69 65 
  400f5f:	48 89 85 d0 eb ff ff 	mov    QWORD PTR [rbp-0x1430],rax
  400f66:	48 b8 6e 64 73 20 69 	movabs rax,0x74206e692073646e
  400f6d:	6e 20 74 
  400f70:	48 89 85 d8 eb ff ff 	mov    QWORD PTR [rbp-0x1428],rax
  400f77:	48 b8 68 65 20 77 6f 	movabs rax,0x646c726f77206568
  400f7e:	72 6c 64 
  400f81:	48 89 85 e0 eb ff ff 	mov    QWORD PTR [rbp-0x1420],rax
  400f88:	48 c7 85 e8 eb ff ff 	mov    QWORD PTR [rbp-0x1418],0x2e
  400f8f:	2e 00 00 00 
  400f93:	48 8d 95 f0 eb ff ff 	lea    rdx,[rbp-0x1410]
  400f9a:	b8 00 00 00 00       	mov    eax,0x0
  400f9f:	b9 1a 00 00 00       	mov    ecx,0x1a
  400fa4:	48 89 d7             	mov    rdi,rdx
  400fa7:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400faa:	c7 85 e0 ec ff ff 1f 	mov    DWORD PTR [rbp-0x1320],0x21f
  400fb1:	02 00 00 
  400fb4:	48 8d 95 90 ea ff ff 	lea    rdx,[rbp-0x1570]
  400fbb:	b8 00 00 00 00       	mov    eax,0x0
  400fc0:	b9 25 00 00 00       	mov    ecx,0x25
  400fc5:	48 89 d7             	mov    rdi,rdx
  400fc8:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400fcb:	48 b8 49 20 73 68 6f 	movabs rax,0x646c756f68732049
  400fd2:	75 6c 64 
  400fd5:	48 89 85 90 ea ff ff 	mov    QWORD PTR [rbp-0x1570],rax
  400fdc:	48 b8 20 68 61 76 65 	movabs rax,0x756a206576616820
  400fe3:	20 6a 75 
  400fe6:	48 89 85 98 ea ff ff 	mov    QWORD PTR [rbp-0x1568],rax
  400fed:	48 b8 73 74 20 74 6f 	movabs rax,0x20646c6f74207473
  400ff4:	6c 64 20 
  400ff7:	48 89 85 a0 ea ff ff 	mov    QWORD PTR [rbp-0x1560],rax
  400ffe:	48 c7 85 a8 ea ff ff 	mov    QWORD PTR [rbp-0x1558],0x756f79
  401005:	79 6f 75 00 
  401009:	48 8d 95 b0 ea ff ff 	lea    rdx,[rbp-0x1550]
  401010:	b8 00 00 00 00       	mov    eax,0x0
  401015:	b9 1c 00 00 00       	mov    ecx,0x1c
  40101a:	48 89 d7             	mov    rdi,rdx
  40101d:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  401020:	c7 85 b0 eb ff ff 93 	mov    DWORD PTR [rbp-0x1450],0x393
  401027:	03 00 00 
  40102a:	48 8d 95 60 e9 ff ff 	lea    rdx,[rbp-0x16a0]
  401031:	b8 00 00 00 00       	mov    eax,0x0
  401036:	b9 25 00 00 00       	mov    ecx,0x25
  40103b:	48 89 d7             	mov    rdi,rdx
  40103e:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  401041:	48 b8 49 27 6d 20 67 	movabs rax,0x6e6e6f67206d2749
  401048:	6f 6e 6e 
  40104b:	48 89 85 60 e9 ff ff 	mov    QWORD PTR [rbp-0x16a0],rax
  401052:	48 b8 61 20 73 69 6e 	movabs rax,0x6120676e69732061
  401059:	67 20 61 
  40105c:	48 89 85 68 e9 ff ff 	mov    QWORD PTR [rbp-0x1698],rax
  401063:	48 b8 20 73 6f 6e 67 	movabs rax,0x6f7420676e6f7320
  40106a:	20 74 6f 
  40106d:	48 89 85 70 e9 ff ff 	mov    QWORD PTR [rbp-0x1690],rax
  401074:	48 b8 20 79 6f 75 20 	movabs rax,0x646e6120756f7920
  40107b:	61 6e 64 
  40107e:	48 89 85 78 e9 ff ff 	mov    QWORD PTR [rbp-0x1688],rax
  401085:	48 b8 20 49 20 72 65 	movabs rax,0x7375666572204920
  40108c:	66 75 73 
  40108f:	48 89 85 80 e9 ff ff 	mov    QWORD PTR [rbp-0x1680],rax
  401096:	48 b8 65 20 74 6f 20 	movabs rax,0x6b616d206f742065
  40109d:	6d 61 6b 
  4010a0:	48 89 85 88 e9 ff ff 	mov    QWORD PTR [rbp-0x1678],rax
  4010a7:	48 b8 65 20 69 74 20 	movabs rax,0x6b61662074692065
  4010ae:	66 61 6b 
  4010b1:	48 89 85 90 e9 ff ff 	mov    QWORD PTR [rbp-0x1670],rax
  4010b8:	48 c7 85 98 e9 ff ff 	mov    QWORD PTR [rbp-0x1668],0x2e65
  4010bf:	65 2e 00 00 
  4010c3:	48 8d 95 a0 e9 ff ff 	lea    rdx,[rbp-0x1660]
  4010ca:	b8 00 00 00 00       	mov    eax,0x0
  4010cf:	b9 18 00 00 00       	mov    ecx,0x18
  4010d4:	48 89 d7             	mov    rdi,rdx
  4010d7:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  4010da:	c7 85 80 ea ff ff 2f 	mov    DWORD PTR [rbp-0x1580],0x2f
  4010e1:	00 00 00 
  4010e4:	48 8d 95 30 e8 ff ff 	lea    rdx,[rbp-0x17d0]
  4010eb:	b8 00 00 00 00       	mov    eax,0x0
  4010f0:	b9 25 00 00 00       	mov    ecx,0x25
  4010f5:	48 89 d7             	mov    rdi,rdx
  4010f8:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  4010fb:	48 b8 57 68 61 74 20 	movabs rax,0x206d612074616857
  401102:	61 6d 20 
  401105:	48 89 85 30 e8 ff ff 	mov    QWORD PTR [rbp-0x17d0],rax
  40110c:	48 b8 49 20 74 6f 20 	movabs rax,0x756f79206f742049
  401113:	79 6f 75 
  401116:	48 89 85 38 e8 ff ff 	mov    QWORD PTR [rbp-0x17c8],rax
  40111d:	48 c7 85 40 e8 ff ff 	mov    QWORD PTR [rbp-0x17c0],0x3f
  401124:	3f 00 00 00 
  401128:	48 8d 95 48 e8 ff ff 	lea    rdx,[rbp-0x17b8]
  40112f:	b8 00 00 00 00       	mov    eax,0x0
  401134:	b9 1d 00 00 00       	mov    ecx,0x1d
  401139:	48 89 d7             	mov    rdi,rdx
  40113c:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  40113f:	c7 85 50 e9 ff ff ed 	mov    DWORD PTR [rbp-0x16b0],0x1ed
  401146:	01 00 00 
  401149:	48 8d 95 00 e7 ff ff 	lea    rdx,[rbp-0x1900]
  401150:	b8 00 00 00 00       	mov    eax,0x0
  401155:	b9 25 00 00 00       	mov    ecx,0x25
  40115a:	48 89 d7             	mov    rdi,rdx
  40115d:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  401160:	48 b8 57 68 61 74 20 	movabs rax,0x6c20492074616857
  401167:	49 20 6c 
  40116a:	48 89 85 00 e7 ff ff 	mov    QWORD PTR [rbp-0x1900],rax
  401171:	48 b8 6f 73 74 2e 2e 	movabs rax,0x77202e2e2e74736f
  401178:	2e 20 77 
  40117b:	48 89 85 08 e7 ff ff 	mov    QWORD PTR [rbp-0x18f8],rax
  401182:	48 b8 61 73 20 61 20 	movabs rax,0x6569702061207361
  401189:	70 69 65 
  40118c:	48 89 85 10 e7 ff ff 	mov    QWORD PTR [rbp-0x18f0],rax
  401193:	48 b8 63 65 20 6f 66 	movabs rax,0x6f7920666f206563
  40119a:	20 79 6f 
  40119d:	48 89 85 18 e7 ff ff 	mov    QWORD PTR [rbp-0x18e8],rax
  4011a4:	48 b8 75 72 20 68 61 	movabs rax,0x2172696168207275
  4011ab:	69 72 21 
  4011ae:	48 89 85 20 e7 ff ff 	mov    QWORD PTR [rbp-0x18e0],rax
  4011b5:	48 c7 85 28 e7 ff ff 	mov    QWORD PTR [rbp-0x18d8],0x0
  4011bc:	00 00 00 00 
  4011c0:	48 8d 95 30 e7 ff ff 	lea    rdx,[rbp-0x18d0]
  4011c7:	b8 00 00 00 00       	mov    eax,0x0
  4011cc:	b9 1a 00 00 00       	mov    ecx,0x1a
  4011d1:	48 89 d7             	mov    rdi,rdx
  4011d4:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  4011d7:	c7 85 20 e8 ff ff 2b 	mov    DWORD PTR [rbp-0x17e0],0x2b
  4011de:	00 00 00 
  4011e1:	48 8d 95 d0 e5 ff ff 	lea    rdx,[rbp-0x1a30]
  4011e8:	b8 00 00 00 00       	mov    eax,0x0
  4011ed:	b9 25 00 00 00       	mov    ecx,0x25
  4011f2:	48 89 d7             	mov    rdi,rdx
  4011f5:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  4011f8:	48 b8 42 75 74 20 49 	movabs rax,0x7567204920747542
  4011ff:	20 67 75 
  401202:	48 89 85 d0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a30],rax
  401209:	48 b8 65 73 73 2c 20 	movabs rax,0x616877202c737365
  401210:	77 68 61 
  401213:	48 89 85 d8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a28],rax
  40121a:	48 b8 74 20 64 6f 65 	movabs rax,0x692073656f642074
  401221:	73 20 69 
  401224:	48 89 85 e0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a20],rax
  40122b:	48 b8 74 20 6d 61 74 	movabs rax,0x72657474616d2074
  401232:	74 65 72 
  401235:	48 89 85 e8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a18],rax
  40123c:	48 c7 85 f0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a10],0x0
  401243:	00 00 00 00 
  401247:	48 8d 95 f8 e5 ff ff 	lea    rdx,[rbp-0x1a08]
  40124e:	b8 00 00 00 00       	mov    eax,0x0
  401253:	b9 1b 00 00 00       	mov    ecx,0x1b
  401258:	48 89 d7             	mov    rdi,rdx
  40125b:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  40125e:	c7 85 f0 e6 ff ff d6 	mov    DWORD PTR [rbp-0x1910],0x3d6
  401265:	03 00 00 
  401268:	48 8d 95 a0 e4 ff ff 	lea    rdx,[rbp-0x1b60]
  40126f:	b8 00 00 00 00       	mov    eax,0x0
  401274:	b9 25 00 00 00       	mov    ecx,0x25
  401279:	48 89 d7             	mov    rdi,rdx
  40127c:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  40127f:	48 b8 57 68 65 6e 20 	movabs rax,0x6a2049206e656857
  401286:	49 20 6a 
  401289:	48 89 85 a0 e4 ff ff 	mov    QWORD PTR [rbp-0x1b60],rax
  401290:	48 b8 75 73 74 2e 2e 	movabs rax,0x6a202e2e2e747375
  401297:	2e 20 6a 
  40129a:	48 89 85 a8 e4 ff ff 	mov    QWORD PTR [rbp-0x1b58],rax
  4012a1:	48 b8 75 73 74 20 68 	movabs rax,0x2064616820747375
  4012a8:	61 64 20 
  4012ab:	48 89 85 b0 e4 ff ff 	mov    QWORD PTR [rbp-0x1b50],rax
  4012b2:	48 b8 61 6c 6c 20 6f 	movabs rax,0x7920666f206c6c61
  4012b9:	66 20 79 
  4012bc:	48 89 85 b8 e4 ff ff 	mov    QWORD PTR [rbp-0x1b48],rax
  4012c3:	48 b8 6f 75 20 74 68 	movabs rax,0x657265687420756f
  4012ca:	65 72 65 
  4012cd:	48 89 85 c0 e4 ff ff 	mov    QWORD PTR [rbp-0x1b40],rax
  4012d4:	48 c7 85 c8 e4 ff ff 	mov    QWORD PTR [rbp-0x1b38],0x3f
  4012db:	3f 00 00 00 
  4012df:	48 8d 95 d0 e4 ff ff 	lea    rdx,[rbp-0x1b30]
  4012e6:	b8 00 00 00 00       	mov    eax,0x0
  4012eb:	b9 1a 00 00 00       	mov    ecx,0x1a
  4012f0:	48 89 d7             	mov    rdi,rdx
  4012f3:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  4012f6:	c7 85 c0 e5 ff ff 04 	mov    DWORD PTR [rbp-0x1a40],0x4
  4012fd:	00 00 00 
  401300:	48 8d 95 70 e3 ff ff 	lea    rdx,[rbp-0x1c90]
  401307:	b8 00 00 00 00       	mov    eax,0x0
  40130c:	b9 25 00 00 00       	mov    ecx,0x25
  401311:	48 89 d7             	mov    rdi,rdx
  401314:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  401317:	48 b8 59 6f 75 20 61 	movabs rax,0x2065726120756f59
  40131e:	72 65 20 
  401321:	48 89 85 70 e3 ff ff 	mov    QWORD PTR [rbp-0x1c90],rax
  401328:	48 b8 6d 79 20 62 65 	movabs rax,0x207473656220796d
  40132f:	73 74 20 
  401332:	48 89 85 78 e3 ff ff 	mov    QWORD PTR [rbp-0x1c88],rax
  401339:	48 b8 66 72 69 65 6e 	movabs rax,0x2073646e65697266
  401340:	64 73 20 
  401343:	48 89 85 80 e3 ff ff 	mov    QWORD PTR [rbp-0x1c80],rax
  40134a:	48 b8 69 6e 20 74 68 	movabs rax,0x7720656874206e69
  401351:	65 20 77 
  401354:	48 89 85 88 e3 ff ff 	mov    QWORD PTR [rbp-0x1c78],rax
  40135b:	48 b8 6f 72 6c 64 2e 	movabs rax,0x2e646c726f
  401362:	00 00 00 
  401365:	48 89 85 90 e3 ff ff 	mov    QWORD PTR [rbp-0x1c70],rax
  40136c:	48 8d 95 98 e3 ff ff 	lea    rdx,[rbp-0x1c68]
  401373:	b8 00 00 00 00       	mov    eax,0x0
  401378:	b9 1b 00 00 00       	mov    ecx,0x1b
  40137d:	48 89 d7             	mov    rdi,rdx
  401380:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  401383:	c7 85 90 e4 ff ff 03 	mov    DWORD PTR [rbp-0x1b70],0x3
  40138a:	00 00 00 
  40138d:	48 8d 85 00 e7 ff ff 	lea    rax,[rbp-0x1900]
  401394:	48 89 85 b0 f2 ff ff 	mov    QWORD PTR [rbp-0xd50],rax
  40139b:	48 8d 85 30 e8 ff ff 	lea    rax,[rbp-0x17d0]
  4013a2:	48 89 85 b8 f2 ff ff 	mov    QWORD PTR [rbp-0xd48],rax
  4013a9:	48 8d 85 90 ea ff ff 	lea    rax,[rbp-0x1570]
  4013b0:	48 89 85 c0 f2 ff ff 	mov    QWORD PTR [rbp-0xd40],rax
  4013b7:	48 8d 85 c0 fe ff ff 	lea    rax,[rbp-0x140]
  4013be:	48 89 85 c8 f2 ff ff 	mov    QWORD PTR [rbp-0xd38],rax
  4013c5:	48 8d 85 20 ee ff ff 	lea    rax,[rbp-0x11e0]
  4013cc:	48 89 85 90 eb ff ff 	mov    QWORD PTR [rbp-0x1470],rax
  4013d3:	48 8d 85 00 e7 ff ff 	lea    rax,[rbp-0x1900]
  4013da:	48 89 85 98 eb ff ff 	mov    QWORD PTR [rbp-0x1468],rax
  4013e1:	48 8d 85 c0 fe ff ff 	lea    rax,[rbp-0x140]
  4013e8:	48 89 85 a0 eb ff ff 	mov    QWORD PTR [rbp-0x1460],rax
  4013ef:	48 8d 85 80 f0 ff ff 	lea    rax,[rbp-0xf80]
  4013f6:	48 89 85 a8 eb ff ff 	mov    QWORD PTR [rbp-0x1458],rax
  4013fd:	48 8d 85 b0 f1 ff ff 	lea    rax,[rbp-0xe50]
  401404:	48 89 85 00 e8 ff ff 	mov    QWORD PTR [rbp-0x1800],rax
  40140b:	48 8d 85 c0 fe ff ff 	lea    rax,[rbp-0x140]
  401412:	48 89 85 08 e8 ff ff 	mov    QWORD PTR [rbp-0x17f8],rax
  401419:	48 8d 85 d0 e5 ff ff 	lea    rax,[rbp-0x1a30]
  401420:	48 89 85 10 e8 ff ff 	mov    QWORD PTR [rbp-0x17f0],rax
  401427:	48 8d 85 20 ee ff ff 	lea    rax,[rbp-0x11e0]
  40142e:	48 89 85 18 e8 ff ff 	mov    QWORD PTR [rbp-0x17e8],rax
  401435:	48 8d 85 d0 e5 ff ff 	lea    rax,[rbp-0x1a30]
  40143c:	48 89 85 20 ef ff ff 	mov    QWORD PTR [rbp-0x10e0],rax
  401443:	48 8d 85 30 e8 ff ff 	lea    rax,[rbp-0x17d0]
  40144a:	48 89 85 28 ef ff ff 	mov    QWORD PTR [rbp-0x10d8],rax
  401451:	48 8d 85 b0 f1 ff ff 	lea    rax,[rbp-0xe50]
  401458:	48 89 85 30 ef ff ff 	mov    QWORD PTR [rbp-0x10d0],rax
  40145f:	48 8d 85 60 fc ff ff 	lea    rax,[rbp-0x3a0]
  401466:	48 89 85 38 ef ff ff 	mov    QWORD PTR [rbp-0x10c8],rax
  40146d:	48 8d 85 b0 f1 ff ff 	lea    rax,[rbp-0xe50]
  401474:	48 89 85 d0 e6 ff ff 	mov    QWORD PTR [rbp-0x1930],rax
  40147b:	48 8d 85 a0 e4 ff ff 	lea    rax,[rbp-0x1b60]
  401482:	48 89 85 d8 e6 ff ff 	mov    QWORD PTR [rbp-0x1928],rax
  401489:	48 8d 85 b0 f1 ff ff 	lea    rax,[rbp-0xe50]
  401490:	48 89 85 e0 e6 ff ff 	mov    QWORD PTR [rbp-0x1920],rax
  401497:	48 8d 85 20 ee ff ff 	lea    rax,[rbp-0x11e0]
  40149e:	48 89 85 e8 e6 ff ff 	mov    QWORD PTR [rbp-0x1918],rax
  4014a5:	48 8d 85 b0 f1 ff ff 	lea    rax,[rbp-0xe50]
  4014ac:	48 89 85 a0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a60],rax
  4014b3:	48 8d 85 40 f5 ff ff 	lea    rax,[rbp-0xac0]
  4014ba:	48 89 85 a8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a58],rax
  4014c1:	48 8d 85 f0 ec ff ff 	lea    rax,[rbp-0x1310]
  4014c8:	48 89 85 b0 e5 ff ff 	mov    QWORD PTR [rbp-0x1a50],rax
  4014cf:	48 8d 85 30 fb ff ff 	lea    rax,[rbp-0x4d0]
  4014d6:	48 89 85 b8 e5 ff ff 	mov    QWORD PTR [rbp-0x1a48],rax
  4014dd:	48 8d 85 70 f6 ff ff 	lea    rax,[rbp-0x990]
  4014e4:	48 89 85 f0 ed ff ff 	mov    QWORD PTR [rbp-0x1210],rax
  4014eb:	48 8d 85 80 f0 ff ff 	lea    rax,[rbp-0xf80]
  4014f2:	48 89 85 f8 ed ff ff 	mov    QWORD PTR [rbp-0x1208],rax
  4014f9:	48 8d 85 40 f5 ff ff 	lea    rax,[rbp-0xac0]
  401500:	48 89 85 00 ee ff ff 	mov    QWORD PTR [rbp-0x1200],rax
  401507:	48 8d 85 90 fd ff ff 	lea    rax,[rbp-0x270]
  40150e:	48 89 85 08 ee ff ff 	mov    QWORD PTR [rbp-0x11f8],rax
  401515:	48 8d 85 a0 f7 ff ff 	lea    rax,[rbp-0x860]
  40151c:	48 89 85 70 f7 ff ff 	mov    QWORD PTR [rbp-0x890],rax
  401523:	48 8d 85 30 fb ff ff 	lea    rax,[rbp-0x4d0]
  40152a:	48 89 85 78 f7 ff ff 	mov    QWORD PTR [rbp-0x888],rax
  401531:	48 8d 85 c0 eb ff ff 	lea    rax,[rbp-0x1440]
  401538:	48 89 85 80 f7 ff ff 	mov    QWORD PTR [rbp-0x880],rax
  40153f:	48 8d 85 30 e8 ff ff 	lea    rax,[rbp-0x17d0]
  401546:	48 89 85 88 f7 ff ff 	mov    QWORD PTR [rbp-0x878],rax
  40154d:	48 8d 85 a0 f7 ff ff 	lea    rax,[rbp-0x860]
  401554:	48 89 85 30 e9 ff ff 	mov    QWORD PTR [rbp-0x16d0],rax
  40155b:	48 8d 85 c0 fe ff ff 	lea    rax,[rbp-0x140]
  401562:	48 89 85 38 e9 ff ff 	mov    QWORD PTR [rbp-0x16c8],rax
  401569:	48 8d 85 00 fa ff ff 	lea    rax,[rbp-0x600]
  401570:	48 89 85 40 e9 ff ff 	mov    QWORD PTR [rbp-0x16c0],rax
  401577:	48 8d 85 30 e8 ff ff 	lea    rax,[rbp-0x17d0]
  40157e:	48 89 85 48 e9 ff ff 	mov    QWORD PTR [rbp-0x16b8],rax
  401585:	48 8d 85 c0 eb ff ff 	lea    rax,[rbp-0x1440]
  40158c:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
  401590:	48 8d 85 70 e3 ff ff 	lea    rax,[rbp-0x1c90]
  401597:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
  40159b:	48 8d 85 30 e8 ff ff 	lea    rax,[rbp-0x17d0]
  4015a2:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  4015a6:	48 8d 85 30 fb ff ff 	lea    rax,[rbp-0x4d0]
  4015ad:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  4015b1:	48 8d 85 d0 f8 ff ff 	lea    rax,[rbp-0x730]
  4015b8:	48 89 85 00 fb ff ff 	mov    QWORD PTR [rbp-0x500],rax
  4015bf:	48 8d 85 c0 fe ff ff 	lea    rax,[rbp-0x140]
  4015c6:	48 89 85 08 fb ff ff 	mov    QWORD PTR [rbp-0x4f8],rax
  4015cd:	48 8d 85 50 ef ff ff 	lea    rax,[rbp-0x10b0]
  4015d4:	48 89 85 10 fb ff ff 	mov    QWORD PTR [rbp-0x4f0],rax
  4015db:	48 8d 85 f0 ec ff ff 	lea    rax,[rbp-0x1310]
  4015e2:	48 89 85 18 fb ff ff 	mov    QWORD PTR [rbp-0x4e8],rax
  4015e9:	48 8d 85 d0 e5 ff ff 	lea    rax,[rbp-0x1a30]
  4015f0:	48 89 85 d0 f9 ff ff 	mov    QWORD PTR [rbp-0x630],rax
  4015f7:	48 8d 85 40 f5 ff ff 	lea    rax,[rbp-0xac0]
  4015fe:	48 89 85 d8 f9 ff ff 	mov    QWORD PTR [rbp-0x628],rax
  401605:	48 8d 85 c0 eb ff ff 	lea    rax,[rbp-0x1440]
  40160c:	48 89 85 e0 f9 ff ff 	mov    QWORD PTR [rbp-0x620],rax
  401613:	48 8d 85 60 fc ff ff 	lea    rax,[rbp-0x3a0]
  40161a:	48 89 85 e8 f9 ff ff 	mov    QWORD PTR [rbp-0x618],rax
  401621:	48 8d 85 a0 f7 ff ff 	lea    rax,[rbp-0x860]
  401628:	48 89 85 40 f6 ff ff 	mov    QWORD PTR [rbp-0x9c0],rax
  40162f:	48 8d 85 80 f0 ff ff 	lea    rax,[rbp-0xf80]
  401636:	48 89 85 48 f6 ff ff 	mov    QWORD PTR [rbp-0x9b8],rax
  40163d:	48 8d 85 30 e8 ff ff 	lea    rax,[rbp-0x17d0]
  401644:	48 89 85 50 f6 ff ff 	mov    QWORD PTR [rbp-0x9b0],rax
  40164b:	48 8d 85 10 f4 ff ff 	lea    rax,[rbp-0xbf0]
  401652:	48 89 85 58 f6 ff ff 	mov    QWORD PTR [rbp-0x9a8],rax
  401659:	48 8d 85 a0 f7 ff ff 	lea    rax,[rbp-0x860]
  401660:	48 89 85 80 f1 ff ff 	mov    QWORD PTR [rbp-0xe80],rax
  401667:	48 8d 85 90 ea ff ff 	lea    rax,[rbp-0x1570]
  40166e:	48 89 85 88 f1 ff ff 	mov    QWORD PTR [rbp-0xe78],rax
  401675:	48 8d 85 50 ef ff ff 	lea    rax,[rbp-0x10b0]
  40167c:	48 89 85 90 f1 ff ff 	mov    QWORD PTR [rbp-0xe70],rax
  401683:	48 8d 85 c0 fe ff ff 	lea    rax,[rbp-0x140]
  40168a:	48 89 85 98 f1 ff ff 	mov    QWORD PTR [rbp-0xe68],rax
  401691:	48 8d 85 30 e8 ff ff 	lea    rax,[rbp-0x17d0]
  401698:	48 89 85 a0 f8 ff ff 	mov    QWORD PTR [rbp-0x760],rax
  40169f:	48 8d 85 c0 eb ff ff 	lea    rax,[rbp-0x1440]
  4016a6:	48 89 85 a8 f8 ff ff 	mov    QWORD PTR [rbp-0x758],rax
  4016ad:	48 8d 85 60 fc ff ff 	lea    rax,[rbp-0x3a0]
  4016b4:	48 89 85 b0 f8 ff ff 	mov    QWORD PTR [rbp-0x750],rax
  4016bb:	48 8d 85 60 e9 ff ff 	lea    rax,[rbp-0x16a0]
  4016c2:	48 89 85 b8 f8 ff ff 	mov    QWORD PTR [rbp-0x748],rax
  4016c9:	48 8d 85 60 fc ff ff 	lea    rax,[rbp-0x3a0]
  4016d0:	48 89 85 c0 ec ff ff 	mov    QWORD PTR [rbp-0x1340],rax
  4016d7:	48 8d 85 70 e3 ff ff 	lea    rax,[rbp-0x1c90]
  4016de:	48 89 85 c8 ec ff ff 	mov    QWORD PTR [rbp-0x1338],rax
  4016e5:	48 8d 85 90 fd ff ff 	lea    rax,[rbp-0x270]
  4016ec:	48 89 85 d0 ec ff ff 	mov    QWORD PTR [rbp-0x1330],rax
  4016f3:	48 8d 85 50 ef ff ff 	lea    rax,[rbp-0x10b0]
  4016fa:	48 89 85 d8 ec ff ff 	mov    QWORD PTR [rbp-0x1328],rax
  401701:	48 8d 85 90 fd ff ff 	lea    rax,[rbp-0x270]
  401708:	48 89 85 70 e4 ff ff 	mov    QWORD PTR [rbp-0x1b90],rax
  40170f:	48 8d 85 60 fc ff ff 	lea    rax,[rbp-0x3a0]
  401716:	48 89 85 78 e4 ff ff 	mov    QWORD PTR [rbp-0x1b88],rax
  40171d:	48 8d 85 f0 ec ff ff 	lea    rax,[rbp-0x1310]
  401724:	48 89 85 80 e4 ff ff 	mov    QWORD PTR [rbp-0x1b80],rax
  40172b:	48 8d 85 00 fa ff ff 	lea    rax,[rbp-0x600]
  401732:	48 89 85 88 e4 ff ff 	mov    QWORD PTR [rbp-0x1b78],rax
  401739:	48 8d 85 f0 ec ff ff 	lea    rax,[rbp-0x1310]
  401740:	48 89 85 90 fe ff ff 	mov    QWORD PTR [rbp-0x170],rax
  401747:	48 8d 85 60 fc ff ff 	lea    rax,[rbp-0x3a0]
  40174e:	48 89 85 98 fe ff ff 	mov    QWORD PTR [rbp-0x168],rax
  401755:	48 8d 85 70 e3 ff ff 	lea    rax,[rbp-0x1c90]
  40175c:	48 89 85 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rax
  401763:	48 8d 85 c0 fe ff ff 	lea    rax,[rbp-0x140]
  40176a:	48 89 85 a8 fe ff ff 	mov    QWORD PTR [rbp-0x158],rax
  401771:	48 8d 85 60 e9 ff ff 	lea    rax,[rbp-0x16a0]
  401778:	48 89 85 60 fd ff ff 	mov    QWORD PTR [rbp-0x2a0],rax
  40177f:	48 8d 85 70 e3 ff ff 	lea    rax,[rbp-0x1c90]
  401786:	48 89 85 68 fd ff ff 	mov    QWORD PTR [rbp-0x298],rax
  40178d:	48 8d 85 00 e7 ff ff 	lea    rax,[rbp-0x1900]
  401794:	48 89 85 70 fd ff ff 	mov    QWORD PTR [rbp-0x290],rax
  40179b:	48 8d 85 30 fb ff ff 	lea    rax,[rbp-0x4d0]
  4017a2:	48 89 85 78 fd ff ff 	mov    QWORD PTR [rbp-0x288],rax
  4017a9:	48 8d 85 f0 ec ff ff 	lea    rax,[rbp-0x1310]
  4017b0:	48 89 85 60 ea ff ff 	mov    QWORD PTR [rbp-0x15a0],rax
  4017b7:	48 8d 85 50 ef ff ff 	lea    rax,[rbp-0x10b0]
  4017be:	48 89 85 68 ea ff ff 	mov    QWORD PTR [rbp-0x1598],rax
  4017c5:	48 8d 85 30 e8 ff ff 	lea    rax,[rbp-0x17d0]
  4017cc:	48 89 85 70 ea ff ff 	mov    QWORD PTR [rbp-0x1590],rax
  4017d3:	48 8d 85 c0 fe ff ff 	lea    rax,[rbp-0x140]
  4017da:	48 89 85 78 ea ff ff 	mov    QWORD PTR [rbp-0x1588],rax
  4017e1:	48 8d 85 e0 f2 ff ff 	lea    rax,[rbp-0xd20]
  4017e8:	48 89 85 10 f5 ff ff 	mov    QWORD PTR [rbp-0xaf0],rax
  4017ef:	48 8d 85 50 ef ff ff 	lea    rax,[rbp-0x10b0]
  4017f6:	48 89 85 18 f5 ff ff 	mov    QWORD PTR [rbp-0xae8],rax
  4017fd:	48 8d 85 c0 fe ff ff 	lea    rax,[rbp-0x140]
  401804:	48 89 85 20 f5 ff ff 	mov    QWORD PTR [rbp-0xae0],rax
  40180b:	48 8d 85 30 e8 ff ff 	lea    rax,[rbp-0x17d0]
  401812:	48 89 85 28 f5 ff ff 	mov    QWORD PTR [rbp-0xad8],rax
  401819:	48 8d 85 10 f4 ff ff 	lea    rax,[rbp-0xbf0]
  401820:	48 89 85 e0 f3 ff ff 	mov    QWORD PTR [rbp-0xc20],rax
  401827:	48 8d 85 80 f0 ff ff 	lea    rax,[rbp-0xf80]
  40182e:	48 89 85 e8 f3 ff ff 	mov    QWORD PTR [rbp-0xc18],rax
  401835:	48 8d 85 20 ee ff ff 	lea    rax,[rbp-0x11e0]
  40183c:	48 89 85 f0 f3 ff ff 	mov    QWORD PTR [rbp-0xc10],rax
  401843:	48 8d 85 c0 eb ff ff 	lea    rax,[rbp-0x1440]
  40184a:	48 89 85 f8 f3 ff ff 	mov    QWORD PTR [rbp-0xc08],rax
  401851:	48 8d 85 00 fa ff ff 	lea    rax,[rbp-0x600]
  401858:	48 89 85 50 f0 ff ff 	mov    QWORD PTR [rbp-0xfb0],rax
  40185f:	48 8d 85 30 fb ff ff 	lea    rax,[rbp-0x4d0]
  401866:	48 89 85 58 f0 ff ff 	mov    QWORD PTR [rbp-0xfa8],rax
  40186d:	48 8d 85 c0 fe ff ff 	lea    rax,[rbp-0x140]
  401874:	48 89 85 60 f0 ff ff 	mov    QWORD PTR [rbp-0xfa0],rax
  40187b:	48 8d 85 60 fc ff ff 	lea    rax,[rbp-0x3a0]
  401882:	48 89 85 68 f0 ff ff 	mov    QWORD PTR [rbp-0xf98],rax
  401889:	48 8d 85 b0 f1 ff ff 	lea    rax,[rbp-0xe50]
  401890:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  401894:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [rbp-0xc],0x1
  40189b:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
  4018a2:	eb 6a                	jmp    40190e <__gmon_start__@plt+0x147e>
  4018a4:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  4018a7:	83 e0 01             	and    eax,0x1
  4018aa:	85 c0                	test   eax,eax
  4018ac:	75 0c                	jne    4018ba <__gmon_start__@plt+0x142a>
  4018ae:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  4018b1:	99                   	cdq    
  4018b2:	f7 7d f4             	idiv   DWORD PTR [rbp-0xc]
  4018b5:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  4018b8:	eb 0a                	jmp    4018c4 <__gmon_start__@plt+0x1434>
  4018ba:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  4018bd:	0f af 45 f4          	imul   eax,DWORD PTR [rbp-0xc]
  4018c1:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  4018c4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4018c8:	8b 80 20 01 00 00    	mov    eax,DWORD PTR [rax+0x120]
  4018ce:	0f be 55 ef          	movsx  edx,BYTE PTR [rbp-0x11]
  4018d2:	83 ea 20             	sub    edx,0x20
  4018d5:	0f af c2             	imul   eax,edx
  4018d8:	01 45 f0             	add    DWORD PTR [rbp-0x10],eax
  4018db:	0f be 45 ef          	movsx  eax,BYTE PTR [rbp-0x11]
  4018df:	8d 50 bf             	lea    edx,[rax-0x41]
  4018e2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4018e6:	48 63 d2             	movsxd rdx,edx
  4018e9:	48 83 c2 20          	add    rdx,0x20
  4018ed:	48 8b 04 d0          	mov    rax,QWORD PTR [rax+rdx*8]
  4018f1:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4018f5:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
  4018f9:	48 8b 85 60 e3 ff ff 	mov    rax,QWORD PTR [rbp-0x1ca0]
  401900:	48 83 c0 08          	add    rax,0x8
  401904:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  401907:	48 83 c2 01          	add    rdx,0x1
  40190b:	48 89 10             	mov    QWORD PTR [rax],rdx
  40190e:	48 8b 85 60 e3 ff ff 	mov    rax,QWORD PTR [rbp-0x1ca0]
  401915:	48 83 c0 08          	add    rax,0x8
  401919:	48 8b 00             	mov    rax,QWORD PTR [rax]
  40191c:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  40191f:	88 45 ef             	mov    BYTE PTR [rbp-0x11],al
  401922:	80 7d ef 00          	cmp    BYTE PTR [rbp-0x11],0x0
  401926:	0f 85 78 ff ff ff    	jne    4018a4 <__gmon_start__@plt+0x1414>
  40192c:	48 8d 85 30 fb ff ff 	lea    rax,[rbp-0x4d0]
  401933:	48 39 45 f8          	cmp    QWORD PTR [rbp-0x8],rax
  401937:	75 52                	jne    40198b <__gmon_start__@plt+0x14fb>
  401939:	bf 24 1a 40 00       	mov    edi,0x401a24
  40193e:	b8 00 00 00 00       	mov    eax,0x0
  401943:	e8 28 eb ff ff       	call   400470 <printf@plt>
  401948:	eb 2f                	jmp    401979 <__gmon_start__@plt+0x14e9>
  40194a:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  40194d:	99                   	cdq    
  40194e:	c1 ea 1c             	shr    edx,0x1c
  401951:	01 d0                	add    eax,edx
  401953:	83 e0 0f             	and    eax,0xf
  401956:	29 d0                	sub    eax,edx
  401958:	89 45 e8             	mov    DWORD PTR [rbp-0x18],eax
  40195b:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  40195e:	8d 50 0f             	lea    edx,[rax+0xf]
  401961:	85 c0                	test   eax,eax
  401963:	0f 48 c2             	cmovs  eax,edx
  401966:	c1 f8 04             	sar    eax,0x4
  401969:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  40196c:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  40196f:	83 c0 61             	add    eax,0x61
  401972:	89 c7                	mov    edi,eax
  401974:	e8 d7 ea ff ff       	call   400450 <putchar@plt>
  401979:	83 7d f0 00          	cmp    DWORD PTR [rbp-0x10],0x0
  40197d:	75 cb                	jne    40194a <__gmon_start__@plt+0x14ba>
  40197f:	bf 3c 1a 40 00       	mov    edi,0x401a3c
  401984:	e8 d7 ea ff ff       	call   400460 <puts@plt>
  401989:	eb 0a                	jmp    401995 <__gmon_start__@plt+0x1505>
  40198b:	bf 3e 1a 40 00       	mov    edi,0x401a3e
  401990:	e8 cb ea ff ff       	call   400460 <puts@plt>
  401995:	b8 00 00 00 00       	mov    eax,0x0
  40199a:	c9                   	leave  
  40199b:	c3                   	ret    
  40199c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4019a0:	41 57                	push   r15
  4019a2:	41 56                	push   r14
  4019a4:	41 89 ff             	mov    r15d,edi
  4019a7:	41 55                	push   r13
  4019a9:	41 54                	push   r12
  4019ab:	4c 8d 25 be 01 20 00 	lea    r12,[rip+0x2001be]        # 601b70 <__gmon_start__@plt+0x2016e0>
  4019b2:	55                   	push   rbp
  4019b3:	48 8d 2d be 01 20 00 	lea    rbp,[rip+0x2001be]        # 601b78 <__gmon_start__@plt+0x2016e8>
  4019ba:	53                   	push   rbx
  4019bb:	49 89 f6             	mov    r14,rsi
  4019be:	49 89 d5             	mov    r13,rdx
  4019c1:	4c 29 e5             	sub    rbp,r12
  4019c4:	48 83 ec 08          	sub    rsp,0x8
  4019c8:	48 c1 fd 03          	sar    rbp,0x3
  4019cc:	e8 47 ea ff ff       	call   400418 <putchar@plt-0x38>
  4019d1:	48 85 ed             	test   rbp,rbp
  4019d4:	74 20                	je     4019f6 <__gmon_start__@plt+0x1566>
  4019d6:	31 db                	xor    ebx,ebx
  4019d8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4019df:	00 
  4019e0:	4c 89 ea             	mov    rdx,r13
  4019e3:	4c 89 f6             	mov    rsi,r14
  4019e6:	44 89 ff             	mov    edi,r15d
  4019e9:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  4019ed:	48 83 c3 01          	add    rbx,0x1
  4019f1:	48 39 eb             	cmp    rbx,rbp
  4019f4:	75 ea                	jne    4019e0 <__gmon_start__@plt+0x1550>
  4019f6:	48 83 c4 08          	add    rsp,0x8
  4019fa:	5b                   	pop    rbx
  4019fb:	5d                   	pop    rbp
  4019fc:	41 5c                	pop    r12
  4019fe:	41 5d                	pop    r13
  401a00:	41 5e                	pop    r14
  401a02:	41 5f                	pop    r15
  401a04:	c3                   	ret    
  401a05:	90                   	nop
  401a06:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  401a0d:	00 00 00 
  401a10:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000401a14 <.fini>:
  401a14:	48 83 ec 08          	sub    rsp,0x8
  401a18:	48 83 c4 08          	add    rsp,0x8
  401a1c:	c3                   	ret    
