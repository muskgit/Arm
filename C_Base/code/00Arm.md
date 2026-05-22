--------------------------汇编语言的结构--------------------------

处理器
.cpu	arm7tdmi

节Section
    .text                                        (指示汇编器定义一个新的ELF段)
    .section	.rodata.str1.1,"aMS",%progbits,1 (%progbits:指定段的类型,表示该段只读数据，无法修改)(,1指示节内数据按照1字节对齐)
    .section	".note.GNU-stack","",%progbits   (.note.GNU-stack:指定段的名称)

符号
   外部符号
   printf

子程序
	.globl	main                            
	.p2align	2      后续数据或指令按照2字节对齐
	.type	main,%function  
	.code	32        
main:             标号
    .fnstart      伪指令，辅助阅读代码
    .fnend

标号
   字符串 + :
   main:

注释
   @ + 字符串


--------------------------寄存器(arm32共计37个寄存器)--------------------------
r0~r7    未分组寄存器
r8~r12   分组寄存器,不同模式下作用不同
r13~r14  r13--SP/r14--lr
r15      PC寄存器
CPSR     条件判断的标志寄存器
