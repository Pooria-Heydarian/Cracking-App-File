
part1:     file format elf64-x86-64


Disassembly of section .text:

0000000000401000 <_start>:
  401000:	48 be 3a 20 40 00 00 	movabs $0x40203a,%rsi
  401007:	00 00 00 
  40100a:	e8 15 01 00 00       	callq  401124 <printString>
  40100f:	48 31 c0             	xor    %rax,%rax
  401012:	e8 b0 01 00 00       	callq  4011c7 <readNum>
  401017:	48 89 04 25 2a 20 40 	mov    %rax,0x40202a
  40101e:	00 
  40101f:	48 be 7f 20 40 00 00 	movabs $0x40207f,%rsi
  401026:	00 00 00 
  401029:	e8 f6 00 00 00       	callq  401124 <printString>
  40102e:	48 31 c0             	xor    %rax,%rax
  401031:	e8 91 01 00 00       	callq  4011c7 <readNum>
  401036:	49 89 c7             	mov    %rax,%r15
  401039:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  40103e:	48 31 d2             	xor    %rdx,%rdx
  401041:	48 f7 f3             	div    %rbx
  401044:	48 3b 14 25 2a 20 40 	cmp    0x40202a,%rdx
  40104b:	00 
  40104c:	0f 85 95 00 00 00    	jne    4010e7 <sorry3>
  401052:	48 f7 f3             	div    %rbx
  401055:	48 89 c3             	mov    %rax,%rbx
  401058:	4c 89 f8             	mov    %r15,%rax
  40105b:	48 31 d2             	xor    %rdx,%rdx
  40105e:	48 31 db             	xor    %rbx,%rbx
  401061:	48 f7 e3             	mul    %rbx
  401064:	48 be 97 20 40 00 00 	movabs $0x402097,%rsi
  40106b:	00 00 00 
  40106e:	e8 b1 00 00 00       	callq  401124 <printString>
  401073:	48 31 d2             	xor    %rdx,%rdx
  401076:	49 f7 e7             	mul    %r15
  401079:	48 8b 1c 25 2a 20 40 	mov    0x40202a,%rbx
  401080:	00 
  401081:	48 f7 e3             	mul    %rbx
  401084:	48 8b 1c 25 0a 20 40 	mov    0x40200a,%rbx
  40108b:	00 
  40108c:	48 f7 e3             	mul    %rbx
  40108f:	48 31 d2             	xor    %rdx,%rdx
  401092:	48 8b 1c 25 12 20 40 	mov    0x402012,%rbx
  401099:	00 
  40109a:	48 f7 f3             	div    %rbx
  40109d:	48 31 d2             	xor    %rdx,%rdx
  4010a0:	e8 82 01 00 00       	callq  401227 <hahaha>
  4010a5:	48 8b 14 25 22 20 40 	mov    0x402022,%rdx
  4010ac:	00 
  4010ad:	48 31 c9             	xor    %rcx,%rcx
  4010b0:	e8 d4 01 00 00       	callq  401289 <check_license>
  4010b5:	48 83 f9 00          	cmp    $0x0,%rcx
  4010b9:	74 1b                	je     4010d6 <sorry2>
  4010bb:	48 be ad 20 40 00 00 	movabs $0x4020ad,%rsi
  4010c2:	00 00 00 
  4010c5:	e8 5a 00 00 00       	callq  401124 <printString>
  4010ca:	e8 86 00 00 00       	callq  401155 <writeNum>
  4010cf:	e8 6e 00 00 00       	callq  401142 <newLine>
  4010d4:	eb 20                	jmp    4010f6 <exit>

00000000004010d6 <sorry2>:
  4010d6:	48 be d9 20 40 00 00 	movabs $0x4020d9,%rsi
  4010dd:	00 00 00 
  4010e0:	e8 3f 00 00 00       	callq  401124 <printString>
  4010e5:	eb 0f                	jmp    4010f6 <exit>

00000000004010e7 <sorry3>:
  4010e7:	48 be 13 21 40 00 00 	movabs $0x402113,%rsi
  4010ee:	00 00 00 
  4010f1:	e8 2e 00 00 00       	callq  401124 <printString>

00000000004010f6 <exit>:
  4010f6:	b8 01 00 00 00       	mov    $0x1,%eax
  4010fb:	31 db                	xor    %ebx,%ebx
  4010fd:	cd 80                	int    $0x80

00000000004010ff <putc>:
  4010ff:	51                   	push   %rcx
  401100:	52                   	push   %rdx
  401101:	56                   	push   %rsi
  401102:	57                   	push   %rdi
  401103:	41 53                	push   %r11
  401105:	66 50                	push   %ax
  401107:	48 89 e6             	mov    %rsp,%rsi
  40110a:	ba 01 00 00 00       	mov    $0x1,%edx
  40110f:	b8 01 00 00 00       	mov    $0x1,%eax
  401114:	bf 01 00 00 00       	mov    $0x1,%edi
  401119:	0f 05                	syscall 
  40111b:	66 58                	pop    %ax
  40111d:	41 5b                	pop    %r11
  40111f:	5f                   	pop    %rdi
  401120:	5e                   	pop    %rsi
  401121:	5a                   	pop    %rdx
  401122:	59                   	pop    %rcx
  401123:	c3                   	retq   

0000000000401124 <printString>:
  401124:	50                   	push   %rax
  401125:	51                   	push   %rcx
  401126:	56                   	push   %rsi
  401127:	52                   	push   %rdx
  401128:	57                   	push   %rdi
  401129:	48 89 f7             	mov    %rsi,%rdi
  40112c:	e8 dc 00 00 00       	callq  40120d <GetStrlen>
  401131:	b8 01 00 00 00       	mov    $0x1,%eax
  401136:	bf 01 00 00 00       	mov    $0x1,%edi
  40113b:	0f 05                	syscall 
  40113d:	5f                   	pop    %rdi
  40113e:	5a                   	pop    %rdx
  40113f:	5e                   	pop    %rsi
  401140:	59                   	pop    %rcx
  401141:	58                   	pop    %rax

0000000000401142 <newLine>:
  401142:	48 35 e0 ab 4a 64    	xor    $0x644aabe0,%rax
  401148:	50                   	push   %rax
  401149:	b8 0a 00 00 00       	mov    $0xa,%eax
  40114e:	e8 ac ff ff ff       	callq  4010ff <putc>
  401153:	58                   	pop    %rax
  401154:	c3                   	retq   

0000000000401155 <writeNum>:
  401155:	50                   	push   %rax
  401156:	53                   	push   %rbx
  401157:	51                   	push   %rcx
  401158:	52                   	push   %rdx
  401159:	48 29 d2             	sub    %rdx,%rdx
  40115c:	bb 0a 00 00 00       	mov    $0xa,%ebx
  401161:	48 29 c9             	sub    %rcx,%rcx
  401164:	48 83 f8 00          	cmp    $0x0,%rax
  401168:	7d 0c                	jge    401176 <wAgain>
  40116a:	50                   	push   %rax
  40116b:	b0 2d                	mov    $0x2d,%al
  40116d:	e8 8d ff ff ff       	callq  4010ff <putc>
  401172:	58                   	pop    %rax
  401173:	48 f7 d8             	neg    %rax

0000000000401176 <wAgain>:
  401176:	48 83 f8 09          	cmp    $0x9,%rax
  40117a:	7e 0c                	jle    401188 <cEnd>
  40117c:	48 f7 f3             	div    %rbx
  40117f:	52                   	push   %rdx
  401180:	48 ff c1             	inc    %rcx
  401183:	48 29 d2             	sub    %rdx,%rdx
  401186:	eb ee                	jmp    401176 <wAgain>

0000000000401188 <cEnd>:
  401188:	04 30                	add    $0x30,%al
  40118a:	e8 70 ff ff ff       	callq  4010ff <putc>
  40118f:	48 ff c9             	dec    %rcx
  401192:	7c 03                	jl     401197 <wEnd>
  401194:	58                   	pop    %rax
  401195:	eb f1                	jmp    401188 <cEnd>

0000000000401197 <wEnd>:
  401197:	5a                   	pop    %rdx
  401198:	59                   	pop    %rcx
  401199:	5b                   	pop    %rbx
  40119a:	58                   	pop    %rax
  40119b:	c3                   	retq   

000000000040119c <getc>:
  40119c:	51                   	push   %rcx
  40119d:	52                   	push   %rdx
  40119e:	56                   	push   %rsi
  40119f:	57                   	push   %rdi
  4011a0:	41 53                	push   %r11
  4011a2:	48 83 ec 01          	sub    $0x1,%rsp
  4011a6:	48 89 e6             	mov    %rsp,%rsi
  4011a9:	ba 01 00 00 00       	mov    $0x1,%edx
  4011ae:	b8 00 00 00 00       	mov    $0x0,%eax
  4011b3:	bf 00 00 00 00       	mov    $0x0,%edi
  4011b8:	0f 05                	syscall 
  4011ba:	8a 06                	mov    (%rsi),%al
  4011bc:	48 83 c4 01          	add    $0x1,%rsp
  4011c0:	41 5b                	pop    %r11
  4011c2:	5f                   	pop    %rdi
  4011c3:	5e                   	pop    %rsi
  4011c4:	5a                   	pop    %rdx
  4011c5:	59                   	pop    %rcx
  4011c6:	c3                   	retq   

00000000004011c7 <readNum>:
  4011c7:	51                   	push   %rcx
  4011c8:	53                   	push   %rbx
  4011c9:	52                   	push   %rdx
  4011ca:	b3 00                	mov    $0x0,%bl
  4011cc:	ba 00 00 00 00       	mov    $0x0,%edx

00000000004011d1 <rAgain>:
  4011d1:	48 31 c0             	xor    %rax,%rax
  4011d4:	e8 c3 ff ff ff       	callq  40119c <getc>
  4011d9:	3c 2d                	cmp    $0x2d,%al
  4011db:	75 04                	jne    4011e1 <sAgain>
  4011dd:	b3 01                	mov    $0x1,%bl
  4011df:	eb f0                	jmp    4011d1 <rAgain>

00000000004011e1 <sAgain>:
  4011e1:	3c 0a                	cmp    $0xa,%al
  4011e3:	74 19                	je     4011fe <rEnd>
  4011e5:	3c 20                	cmp    $0x20,%al
  4011e7:	74 15                	je     4011fe <rEnd>
  4011e9:	48 83 e8 30          	sub    $0x30,%rax
  4011ed:	48 6b d2 0a          	imul   $0xa,%rdx,%rdx
  4011f1:	48 01 c2             	add    %rax,%rdx
  4011f4:	48 31 c0             	xor    %rax,%rax
  4011f7:	e8 a0 ff ff ff       	callq  40119c <getc>
  4011fc:	eb e3                	jmp    4011e1 <sAgain>

00000000004011fe <rEnd>:
  4011fe:	48 89 d0             	mov    %rdx,%rax
  401201:	80 fb 00             	cmp    $0x0,%bl
  401204:	74 03                	je     401209 <sEnd>
  401206:	48 f7 d8             	neg    %rax

0000000000401209 <sEnd>:
  401209:	5a                   	pop    %rdx
  40120a:	5b                   	pop    %rbx
  40120b:	59                   	pop    %rcx
  40120c:	c3                   	retq   

000000000040120d <GetStrlen>:
  40120d:	53                   	push   %rbx
  40120e:	51                   	push   %rcx
  40120f:	50                   	push   %rax
  401210:	48 31 c9             	xor    %rcx,%rcx
  401213:	48 f7 d1             	not    %rcx
  401216:	48 31 c0             	xor    %rax,%rax
  401219:	fc                   	cld    
  40121a:	f2 ae                	repnz scas %es:(%rdi),%al
  40121c:	48 f7 d1             	not    %rcx
  40121f:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  401223:	58                   	pop    %rax
  401224:	59                   	pop    %rcx
  401225:	5b                   	pop    %rbx
  401226:	c3                   	retq   

0000000000401227 <hahaha>:
  401227:	53                   	push   %rbx
  401228:	bb 0d 00 00 00       	mov    $0xd,%ebx
  40122d:	48 f7 e3             	mul    %rbx
  401230:	5b                   	pop    %rbx
  401231:	c3                   	retq   

0000000000401232 <open_file>:
  401232:	52                   	push   %rdx
  401233:	53                   	push   %rbx
  401234:	51                   	push   %rcx
  401235:	b8 02 00 00 00       	mov    $0x2,%eax
  40123a:	be 02 00 00 00       	mov    $0x2,%esi
  40123f:	0f 05                	syscall 
  401241:	59                   	pop    %rcx
  401242:	5b                   	pop    %rbx
  401243:	5a                   	pop    %rdx
  401244:	c3                   	retq   

0000000000401245 <read_file>:
  401245:	53                   	push   %rbx
  401246:	51                   	push   %rcx
  401247:	b8 00 00 00 00       	mov    $0x0,%eax
  40124c:	0f 05                	syscall 
  40124e:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  401252:	0f 8e 9e fe ff ff    	jle    4010f6 <exit>
  401258:	c6 04 06 00          	movb   $0x0,(%rsi,%rax,1)
  40125c:	59                   	pop    %rcx
  40125d:	5b                   	pop    %rbx
  40125e:	c3                   	retq   

000000000040125f <seek_file>:
  40125f:	53                   	push   %rbx
  401260:	50                   	push   %rax
  401261:	51                   	push   %rcx
  401262:	b8 08 00 00 00       	mov    $0x8,%eax
  401267:	0f 05                	syscall 
  401269:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40126d:	0f 8e 83 fe ff ff    	jle    4010f6 <exit>
  401273:	59                   	pop    %rcx
  401274:	58                   	pop    %rax
  401275:	5b                   	pop    %rbx
  401276:	c3                   	retq   

0000000000401277 <close_file>:
  401277:	b8 03 00 00 00       	mov    $0x3,%eax
  40127c:	0f 05                	syscall 
  40127e:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  401282:	0f 8e 6e fe ff ff    	jle    4010f6 <exit>
  401288:	c3                   	retq   

0000000000401289 <check_license>:
  401289:	50                   	push   %rax
  40128a:	53                   	push   %rbx
  40128b:	41 57                	push   %r15
  40128d:	b9 00 00 00 00       	mov    $0x0,%ecx
  401292:	48 bf 00 20 40 00 00 	movabs $0x402000,%rdi
  401299:	00 00 00 
  40129c:	e8 91 ff ff ff       	callq  401232 <open_file>

  4012a1:	48 83 f8 00          	cmp    $0x0,%rax
  4012a5:	7f 05                	jg     4012ac <not_error>
  4012a7:	41 5f                	pop    %r15
  4012a9:	5b                   	pop    %rbx
  4012aa:	58                   	pop    %rax
  4012ab:	c3                   	retq   

00000000004012ac <not_error>:
  4012ac:	48 89 04 25 32 20 40 	mov    %rax,0x402032
  4012b3:	00 
  4012b4:	b9 01 00 00 00       	mov    $0x1,%ecx
  4012b9:	41 bf 2c 01 00 00    	mov    $0x12c,%r15d

00000000004012bf <looping>:
  4012bf:	52                   	push   %rdx
  4012c0:	48 be 34 21 40 00 00 	movabs $0x402134,%rsi
  4012c7:	00 00 00 
  4012ca:	48 8b 3c 25 32 20 40 	mov    0x402032,%rdi
  4012d1:	00 
  4012d2:	ba 2c 01 00 00       	mov    $0x12c,%edx
  4012d7:	e8 69 ff ff ff       	callq  401245 <read_file>
  4012dc:	5a                   	pop    %rdx
  4012dd:	48 3d 2c 01 00 00    	cmp    $0x12c,%rax
  4012e3:	7c 30                	jl     401315 <nono>
  4012e5:	e8 35 00 00 00       	callq  40131f <check_buff>
  4012ea:	48 83 f9 00          	cmp    $0x0,%rcx
  4012ee:	74 25                	je     401315 <nono>
  4012f0:	48 ff ca             	dec    %rdx
  4012f3:	74 25                	je     40131a <yesyes>
  4012f5:	52                   	push   %rdx
  4012f6:	48 8b 3c 25 32 20 40 	mov    0x402032,%rdi
  4012fd:	00 
  4012fe:	4c 89 fe             	mov    %r15,%rsi
  401301:	ba 00 00 00 00       	mov    $0x0,%edx
  401306:	e8 54 ff ff ff       	callq  40125f <seek_file>
  40130b:	49 81 c7 2c 01 00 00 	add    $0x12c,%r15
  401312:	5a                   	pop    %rdx
  401313:	eb aa                	jmp    4012bf <looping>

0000000000401315 <nono>:
  401315:	b9 00 00 00 00       	mov    $0x0,%ecx

000000000040131a <yesyes>:
  40131a:	41 5f                	pop    %r15
  40131c:	5b                   	pop    %rbx
  40131d:	58                   	pop    %rax
  40131e:	c3                   	retq   

000000000040131f <check_buff>:
  40131f:	50                   	push   %rax
  401320:	53                   	push   %rbx
  401321:	52                   	push   %rdx
  401322:	48 8b 04 25 2a 20 40 	mov    0x40202a,%rax
  401329:	00 
  40132a:	48 31 d2             	xor    %rdx,%rdx
  40132d:	bb 02 00 00 00       	mov    $0x2,%ebx
  401332:	48 f7 f3             	div    %rbx
  401335:	48 be 34 21 40 00 00 	movabs $0x402134,%rsi
  40133c:	00 00 00 
  40133f:	b9 00 00 00 00       	mov    $0x0,%ecx
  401344:	ba 00 00 00 00       	mov    $0x0,%edx

0000000000401349 <looping2>:
  401349:	80 3c 16 63          	cmpb   $0x63,(%rsi,%rdx,1)
  40134d:	75 0a                	jne    401359 <nextiter>
  40134f:	80 7c 16 01 73       	cmpb   $0x73,0x1(%rsi,%rdx,1)
  401354:	75 03                	jne    401359 <nextiter>
  401356:	48 ff c8             	dec    %rax

0000000000401359 <nextiter>:
  401359:	48 ff c2             	inc    %rdx
  40135c:	48 81 fa 2b 01 00 00 	cmp    $0x12b,%rdx
  401363:	7c e4                	jl     401349 <looping2>
  401365:	48 83 f8 00          	cmp    $0x0,%rax
  401369:	75 05                	jne    401370 <return>
  40136b:	b9 01 00 00 00       	mov    $0x1,%ecx

0000000000401370 <return>:
  401370:	5a                   	pop    %rdx
  401371:	5b                   	pop    %rbx
  401372:	58                   	pop    %rax
  401373:	c3                   	retq   
