
day1_helloOooOooWorld:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 f5 21 00 00 	mov    0x21f5(%rip),%rax        # 3200 <__gmon_start__@Base>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	call   *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <puts@plt-0x10>:
    1020:	ff 35 e2 2f 00 00    	push   0x2fe2(%rip)        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmp    *0x2fe4(%rip)        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <puts@plt>:
    1030:	ff 25 e2 2f 00 00    	jmp    *0x2fe2(%rip)        # 4018 <puts@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	ff 25 ca 21 00 00    	jmp    *0x21ca(%rip)        # 3210 <__cxa_finalize@GLIBC_2.2.5>
    1046:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001050 <_start>:
    1050:	31 ed                	xor    %ebp,%ebp
    1052:	49 89 d1             	mov    %rdx,%r9
    1055:	5e                   	pop    %rsi
    1056:	48 89 e2             	mov    %rsp,%rdx
    1059:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    105d:	50                   	push   %rax
    105e:	54                   	push   %rsp
    105f:	4c 8d 05 4a 01 00 00 	lea    0x14a(%rip),%r8        # 11b0 <__libc_csu_fini>
    1066:	48 8d 0d e3 00 00 00 	lea    0xe3(%rip),%rcx        # 1150 <__libc_csu_init>
    106d:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 1135 <main>
    1074:	ff 15 7e 21 00 00    	call   *0x217e(%rip)        # 31f8 <__libc_start_main@GLIBC_2.2.5>
    107a:	f4                   	hlt    
    107b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001080 <deregister_tm_clones>:
    1080:	48 8d 3d a9 2f 00 00 	lea    0x2fa9(%rip),%rdi        # 4030 <__TMC_END__>
    1087:	48 8d 05 a2 2f 00 00 	lea    0x2fa2(%rip),%rax        # 4030 <__TMC_END__>
    108e:	48 39 f8             	cmp    %rdi,%rax
    1091:	74 15                	je     10a8 <deregister_tm_clones+0x28>
    1093:	48 8b 05 56 21 00 00 	mov    0x2156(%rip),%rax        # 31f0 <_ITM_deregisterTMCloneTable@Base>
    109a:	48 85 c0             	test   %rax,%rax
    109d:	74 09                	je     10a8 <deregister_tm_clones+0x28>
    109f:	ff e0                	jmp    *%rax
    10a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10a8:	c3                   	ret    
    10a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010b0 <register_tm_clones>:
    10b0:	48 8d 3d 79 2f 00 00 	lea    0x2f79(%rip),%rdi        # 4030 <__TMC_END__>
    10b7:	48 8d 35 72 2f 00 00 	lea    0x2f72(%rip),%rsi        # 4030 <__TMC_END__>
    10be:	48 29 fe             	sub    %rdi,%rsi
    10c1:	48 89 f0             	mov    %rsi,%rax
    10c4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10c8:	48 c1 f8 03          	sar    $0x3,%rax
    10cc:	48 01 c6             	add    %rax,%rsi
    10cf:	48 d1 fe             	sar    %rsi
    10d2:	74 14                	je     10e8 <register_tm_clones+0x38>
    10d4:	48 8b 05 2d 21 00 00 	mov    0x212d(%rip),%rax        # 3208 <_ITM_registerTMCloneTable@Base>
    10db:	48 85 c0             	test   %rax,%rax
    10de:	74 08                	je     10e8 <register_tm_clones+0x38>
    10e0:	ff e0                	jmp    *%rax
    10e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10e8:	c3                   	ret    
    10e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010f0 <__do_global_dtors_aux>:
    10f0:	80 3d 39 2f 00 00 00 	cmpb   $0x0,0x2f39(%rip)        # 4030 <__TMC_END__>
    10f7:	75 2f                	jne    1128 <__do_global_dtors_aux+0x38>
    10f9:	55                   	push   %rbp
    10fa:	48 83 3d 0e 21 00 00 	cmpq   $0x0,0x210e(%rip)        # 3210 <__cxa_finalize@GLIBC_2.2.5>
    1101:	00 
    1102:	48 89 e5             	mov    %rsp,%rbp
    1105:	74 0c                	je     1113 <__do_global_dtors_aux+0x23>
    1107:	48 8b 3d 1a 2f 00 00 	mov    0x2f1a(%rip),%rdi        # 4028 <__dso_handle>
    110e:	e8 2d ff ff ff       	call   1040 <__cxa_finalize@plt>
    1113:	e8 68 ff ff ff       	call   1080 <deregister_tm_clones>
    1118:	c6 05 11 2f 00 00 01 	movb   $0x1,0x2f11(%rip)        # 4030 <__TMC_END__>
    111f:	5d                   	pop    %rbp
    1120:	c3                   	ret    
    1121:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1128:	c3                   	ret    
    1129:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001130 <frame_dummy>:
    1130:	e9 7b ff ff ff       	jmp    10b0 <register_tm_clones>

0000000000001135 <main>:
    1135:	55                   	push   %rbp
    1136:	48 89 e5             	mov    %rsp,%rbp
    1139:	48 8d 3d c4 0e 00 00 	lea    0xec4(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    1140:	e8 eb fe ff ff       	call   1030 <puts@plt>
    1145:	b8 00 00 00 00       	mov    $0x0,%eax
    114a:	5d                   	pop    %rbp
    114b:	c3                   	ret    
    114c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001150 <__libc_csu_init>:
    1150:	41 57                	push   %r15
    1152:	4c 8d 3d a7 1e 00 00 	lea    0x1ea7(%rip),%r15        # 3000 <__frame_dummy_init_array_entry>
    1159:	41 56                	push   %r14
    115b:	49 89 d6             	mov    %rdx,%r14
    115e:	41 55                	push   %r13
    1160:	49 89 f5             	mov    %rsi,%r13
    1163:	41 54                	push   %r12
    1165:	41 89 fc             	mov    %edi,%r12d
    1168:	55                   	push   %rbp
    1169:	48 8d 2d 98 1e 00 00 	lea    0x1e98(%rip),%rbp        # 3008 <__do_global_dtors_aux_fini_array_entry>
    1170:	53                   	push   %rbx
    1171:	4c 29 fd             	sub    %r15,%rbp
    1174:	48 83 ec 08          	sub    $0x8,%rsp
    1178:	e8 83 fe ff ff       	call   1000 <_init>
    117d:	48 c1 fd 03          	sar    $0x3,%rbp
    1181:	74 1b                	je     119e <__libc_csu_init+0x4e>
    1183:	31 db                	xor    %ebx,%ebx
    1185:	0f 1f 00             	nopl   (%rax)
    1188:	4c 89 f2             	mov    %r14,%rdx
    118b:	4c 89 ee             	mov    %r13,%rsi
    118e:	44 89 e7             	mov    %r12d,%edi
    1191:	41 ff 14 df          	call   *(%r15,%rbx,8)
    1195:	48 83 c3 01          	add    $0x1,%rbx
    1199:	48 39 dd             	cmp    %rbx,%rbp
    119c:	75 ea                	jne    1188 <__libc_csu_init+0x38>
    119e:	48 83 c4 08          	add    $0x8,%rsp
    11a2:	5b                   	pop    %rbx
    11a3:	5d                   	pop    %rbp
    11a4:	41 5c                	pop    %r12
    11a6:	41 5d                	pop    %r13
    11a8:	41 5e                	pop    %r14
    11aa:	41 5f                	pop    %r15
    11ac:	c3                   	ret    
    11ad:	0f 1f 00             	nopl   (%rax)

00000000000011b0 <__libc_csu_fini>:
    11b0:	c3                   	ret    

Disassembly of section .fini:

00000000000011b4 <_fini>:
    11b4:	48 83 ec 08          	sub    $0x8,%rsp
    11b8:	48 83 c4 08          	add    $0x8,%rsp
    11bc:	c3                   	ret    
