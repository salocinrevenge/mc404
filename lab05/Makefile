raiz.o: raiz.s
	clang-10 --target=riscv32 -march=rv32g -mabi=ilp32d -mno-relax raiz.s -c -o raiz.o
main: raiz.o
	ld.lld-10 raiz.o -o raiz.x
