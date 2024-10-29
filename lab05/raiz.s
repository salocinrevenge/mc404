# ler da entrada padrao
# cortar em palavras
# transformar em numeros em a0
# calcular raiz
# transformar o resultado em string
# mostrar na saida padrao

.globl _start

.bss
input: .skip 21
output: .skip 21

.data

.text



# a1 parametro
# saida em a0, a1 numero
# a0 = chute
# a1 = num
# t0 = i
# t1 = 10 const
raiz:
	srai a0, a1, 1 # primeiro chute
	li t0, 0	# setando padroes
	li t1, 10
for:
	div t2, a1, a0 # num/chute
	add a0, a0, t2 # chute + divi
	srai a0, a0, 1 # resul / 2
	
	addi t0, t0, 1 # i++
	blt t0, t1, for # volta no for
break:
	ret #return a0
	
	
read:
	li a0, 0 # file descriptor = 0 (stdin)
	la a1, input
	li a2, 19 # size (lendo 19 bytes, mas tamanho é variável)
	li a7, 63 # syscall read (63)
	ecall
	li t0, '\n'
	sb t0, 19(a1)
	li t0, 0
	sb t0, 20(a1)


#for 4
#transformar a string de i*5 a i*5+3 em num (em a1)
#calcular raiz
#transformar em string e inserir em output

	li a2, 0	# i = 0
	li a3, 4	#const parada 4
	la a4, input	#endereco de input atual
	la a5, output	#endereco de output
	li t2, 10	
for4:
	li a1, 0	#num = 0
	#num = input[pos] - '0'
	#num *=10
	#pos++
	
	lb t1, (a4)		#t1 = input[pos]
	addi t1, t1, -48	# -'0'
	add a1, a1, t1
	mul a1, a1, t2		# num*=10
	addi a4, a4, 1		#pos++
	
	lb t1, (a4)		#t1 = input[pos]
	addi t1, t1, -48	# -'0'
	add a1, a1, t1
	mul a1, a1, t2		# num*=10
	addi a4, a4, 1		#pos++
	
	lb t1, (a4)		#t1 = input[pos]
	addi t1, t1, -48	# -'0'
	add a1, a1, t1
	mul a1, a1, t2		# num*=10
	addi a4, a4, 1		#pos++
	
	lb t1, (a4)		#t1 = input[pos]
	addi t1, t1, -48	# -'0'
	add a1, a1, t1
	addi a4, a4, 2		#pos+=2
	
	jal raiz
	#mv a0, a1
escrita:
	#output[i*5 + 0] = a0%10 + '0'
	#a0/=10
	#output[i*5 + 1] = a0%10 + '0'
	#a0/=10
	#output[i*5 + 2] = a0%10 + '0'
	#a0/=10
	#output[i*5 + 3] = a0 + '0'
	#output[i*5 + 4] = ' '
	
	
	#a0 = num
	li t2, 1000
	div t3, a0, t2		#t1=num/1000
	addi t1, t3, 48	#t1=t3+'0'
	sb t1, (a5)		#output[pos] = t1
	mul t1, t3, t2		#t1 =t3*1000
	sub a0, a0, t1		#a0 -=t1
	addi a5, a5, 1		#pos++
	
	li t2, 100
	div t3, a0, t2		#t1=num/1000
	addi t1, t3, 48	#t1=t3+'0'
	sb t1, (a5)		#output[pos] = t1
	mul t1, t3, t2		#t1 =t3*1000
	sub a0, a0, t1		#a0 -=t1
	addi a5, a5, 1		#pos++
	
	li t2, 10
	div t3, a0, t2		#t1=num/1000
	addi t1, t3, 48	#t1=t3+'0'
	sb t1, (a5)		#output[pos] = t1
	mul t1, t3, t2		#t1 =t3*1000
	sub a0, a0, t1		#a0 -=t1
	addi a5, a5, 1		#pos++
	
	addi t1, a0, 48	#t1+='0'
	sb t1, (a5)		#output[pos] = t1
	addi a5, a5, 1		#pos++
	
	li t1, ' '
	sb t1, (a5)		#output[pos] = 32
	addi a5, a5, 1		#pos++
	
	
	addi a2, a2, 1 # i++
breakpoint:
	blt a2, a3, for4 # volta no for
	
	li t0, '\n'
	sb t0, (a5)
	
write:
	li a0, 1            # file descriptor = 1 (stdout)
	la a1, output       # buffer
	li a2, 21           # size
	li a7, 64           # syscall write (64)
	ecall
	jal _end


	
_start:
	jal read
_end:
	li a0, 0
	li a7, 93
	ecall
	

