#include <fcntl.h>
#include <unistd.h>

#define TAM_PROG 100000

void getString(unsigned char *prog,int ini, int tam, char *saida)
{
	//le do programa uma string com tamanho tam
	for(int i = 0;i<tam;i++)
	{
		saida[i] = prog[i+ini];
		
	}
	saida[tam-1] = '\0';
}

void set(char *saida, char carac, int tam)
{
	//preenche uma string com o caracter dado e seta \0
	for(int i =0;i<tam-1;i++)
	{
		saida[i] = carac;
	}
	saida[tam-1] = 0;
}

void join(char *saida, char *adicionando, char final)
{
	int i =0;
	while(saida[i]!=0)
		i++;
	int j = 0;
	while(adicionando[j]!=0)
	{
		saida[i]=adicionando[j];		
		j++;i++;
	}
	saida[i]=final;
}

int size(char *str)
{
	int i =0;
	while(str[i]!=0)
		i++;
	return i;

}

int equals(char *str1, char *str2)
{
	if(size(str1) != size(str2))
		return 0;
	for(int i =0;i<size(str1);i++)
	{
		if(str1[i]!=str2[i])
			return 0;
	}
	return 1;
}


void mostrar(char *forma, char *string)
{
	char caracs[100];
	set(caracs,0,100);
	int k=0;
	for(int i =0; forma[i] != 0; i++)
	{
		
		if(forma[i] == '%' && forma[i+1] == 's')
		{
			for(int j=0;string[j]!=0;j++)
			{
				caracs[k] = string[j];
				k++;
			}
			i++;
		}
		else
		{
			caracs[k] = forma[i];
			k++;
		}
			
	
	}
	caracs[k]=0;
	//printf("%s",caracs);
	write(1,caracs,size(caracs));
}

char *_8Digi(char *string)
{
	int tam = size(string);
	for(int i =0;i<8;i++)
	{
		if(i<tam)
			string[8-1-i] = string[(tam-1)-i];
		else
			string[8-1-i] = '0';
	
	}
	string[8]=0;
	return string;
	
}

void mostrar2(char *forma)
{
	write(1,forma,size(forma));
}

char *inverter(char *str)
{
	int i = 0;
	while(str[i]!=0)
		i++;
	i--;
	for(int j = 0;j<i;j++,i--)
	{
		char temp = str[i];
		str[i] = str[j];
		str[j] = temp;
	
	}
	return str;


}

char *toString(int num,char *saida)
{
	int i =0;
	int neg = 0;
	if(num == 0)
	{
		saida[i] = '0';
		i++;
	}
	if(num <0)
	{
		neg = 1;
		num*=-1;
	
	}
	while(num!=0)
	{
		//mostrar("num:%d digito:%d\n",num,num%10);
		saida[i]=num%10+'0';
		num/=10;
		i++;
	}
	if(neg)
	{
		saida[i] = '-';
		i++;
	}
	saida[i]=0;
	return inverter(saida);

}

char *unsitoString(unsigned int num,char *saida)
{
	int i =0;
	if(num == 0)
	{
		saida[i] = '0';
		i++;
	}
	while(num!=0)
	{
		saida[i]=num%10+'0';
		num/=10;
		i++;
	}
	saida[i]=0;
	
	return inverter(saida);

}


unsigned int lerLittNumEm(unsigned char *prog, int ini, int nBytes)
{
	//le do programa um inteiro
	unsigned int retorno=0;
	for(int i = nBytes-1; i>=0; i--)
	{
		retorno=retorno<<8;
		retorno+=prog[ini+i];
		//mostrar("%x ",prog[ini+i]);
		//mostrar(": %d\n",retorno);
	}
	//mostrar("\n%d\n",retorno);
	return retorno;
}



char *toHex(int num,char *texto)
{
	//converte um int para string de hex
	char characs[] = {'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
	int res = 0,i;
	if(num==0)
		texto[0]='0';
	for(i =0;num!=0;i++)
	{
		texto[i] = (res<<4)+characs[num&15];
		num=num>>4;
		
	}
	texto[i]='\0';
	
	return inverter(texto);
	
}

/*
char *encontrarNome(unsigned char *prog, int posNomes, int posTabSec, int indx,char *saida)
{
	//le a string ate o \0 e a recorta a partir da tabela de secoes e da posicao dos nomes
	int posNome = posNomes + lerLittNumEm(prog,posTabSec+(40*indx),4);
	for(int i = 0;i<14;i++)
	{
		
		if(prog[posNome+i]==0)
			break;
		saida[i] = prog[posNome+i];
	}
	saida[14]='\0';
	return saida;
}*/



char *lerString(unsigned char *prog, int pos, char *saida)
{
	int i;
	for(i = 0;prog[pos+i]!=0;i++)
		saida[i] = prog[pos+i];
	saida[i]=0;
	return saida;

}


char *lerLittHexEm(unsigned char *prog, int ini, int tam, char *saida)
{
	//le um hexadecimal do arquivo na posicao dada por ini e tamanho tam
	char characs[] = {'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
	for(int i = 0, j = tam-1; i < tam; i++,j--)
	{
		saida[i*2] = characs[(prog[ini+j]>>4)&15];
		saida[i*2+1] = characs[prog[ini+j]&15];
	}
	saida[tam*2]='\0';
	return saida;
}

char *lerComando(unsigned char *prog, int ini, int tam, char *saida)
{
	//le um comando hexadecimal do arquivo
	char characs[] = {'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
	int j=0;
	for(int i = 0; i < tam; i++)
	{
		if(i!=0)
			saida[j++] = ' ';
		saida[j++] = characs[(prog[ini+i]>>4)&15];
		saida[j++] = characs[prog[ini+i]&15];
	}
	saida[j]='\0';
	return saida;
}

char *format(int num,char *alvo,int tam)
{
	//essa funcao passa um inteiro para string com o tamanho dado
	
	if(num==0)
		alvo[0]='0';
	for(int i = 0;i<tam;i++)
	{
		if(num==0)
			break;
		alvo[i]=num%10+'0';
		num/=10;
	}
	alvo[tam-1]='\0';
	for(int i =0,j=tam-2;i<tam/2;i++,j--)
	{
		char temp = alvo[i];
		alvo[i] = alvo[j];
		alvo[j] = temp;
	}
	alvo[tam-1] = '\0';
	return alvo;
}

void tabelaDeSecoes(unsigned char *prog)
{
	/*
	imprimir o cabecalho - feito
	encontrar endereco tabela de secoes - feito
	encontrar secao de nome das secoes -
	encontar endereco dos nomes das secoes - 
	passar secoes uma a uma mostrarndo o index,
		nomes tamanho e vma -
	*/
	
	mostrar2("Sections:\nIdx Name          Size     VMA\n");
	int posTabSec = lerLittNumEm(prog,32,4);
	int numSec = lerLittNumEm(prog,48,2);
	int indx = lerLittNumEm(prog,50,2);
	//mostrar("posicao da tabela de secoes: %d numero de secoes: %d indx tabela de nomes: %d\n",posTabSec,numSec,indx);
	int posSecNomesSec = posTabSec+indx*40; //posicao secao dos nomes das secoes
	int posNomesSec = lerLittNumEm(prog,posSecNomesSec+16,4); //posicao nomes das secoes
	//mostrar("posicao dos nomes: %d\n",posNomesSec);
	
	char saida[100];
	for(int i = 0;i<numSec;i++)
	{
		set(saida,' ',13);
		mostrar("%s ",format(i,saida,4)); //index
		set(saida,' ',13);
		mostrar("%s ",lerString(prog,posNomesSec + lerLittNumEm(prog,posTabSec+(40*i),4),saida)); //nome
		mostrar("%s ",lerLittHexEm(prog,posTabSec+(40*i)+20,4,saida)); //size
		mostrar("%s\n",lerLittHexEm(prog,posTabSec+(40*i)+12,4,saida)); //vma
		
	}
	mostrar2("\n");
	
	
}

char *encontrarNomeRotulo(unsigned char *prog, int posSymbols,int indx,int posStr,char *saida)
{

	int posString = lerLittNumEm(prog,posSymbols+(16*indx),4);
	int i;
	for(i = 0;prog[posStr+posString+i]!=0;i++)
	{
		saida[i] = prog[posStr+posString+i];
	}
	saida[i]='\0';
	return saida;
}

char *encontrarSecaoUsada(unsigned char *prog, int posSymbols, int indx, int posTabSec, char *saida)
{
	/*
		encontrar o indice da secao usada
		encontrar o enderesso da secao indicada pelo indice
		encontrar o enderesso dos nomes das secoes
		encontrar a posicao do nome da secao indicada
		retornar o nome nessa posicao
		
	*/
	
	int indxSecao = lerLittNumEm(prog,posSymbols+(16*indx)+14,2);
	int posNomesSec = lerLittNumEm(prog,posTabSec+40*lerLittNumEm(prog,50,2)+16,4);
	return lerString(prog,posNomesSec + lerLittNumEm(prog,posTabSec+(40*indxSecao),4),saida);
}

char *endireitar(char *str,int tam)
{
	//endireitar = levar para direita
	
	int copiar = 0;
	for(int i = tam-2,j=tam-2;i>=0;i--)
	{
		if(str[i]!=' ')
			copiar = 1;
		if(copiar)
		{
			str[j]=str[i];
			j--;
			str[i]=' ';
		}
	
	}
	return str;

}

void tabelaDeSimbolos(unsigned char *prog)
{
	/*
		encontrar tabela de secoes
		encontrar symtab (antes de shstrtab)
		encontrar strtab (depois de shstrtab)
		encontrar o offset de symtab
		encontrar o offset de symtab
		mostrar os nomes e outras informações com base nos resultados otido
	*/
	int posTabSec = lerLittNumEm(prog,32,4);
	int indx = lerLittNumEm(prog,50,2);
	int posSymtab = indx - 1;
	int posStrtab = indx + 1;
	int posSymbols = lerLittNumEm(prog,posTabSec + (posSymtab*40)+16,4);
	int posStr = lerLittNumEm(prog,posTabSec + (posStrtab*40)+16,4);
	int tamSym = lerLittNumEm(prog,posTabSec+(40*posSymtab)+20,4)/16;
	
	mostrar("%s\n","SYMBOL TABLE:");
	char saida[100];
	for(int i = 1;i<tamSym;i++) //ajeitar baseado na quantidade de rotulos
	{
		set(saida,' ',13);
		mostrar("%s ",lerLittHexEm(prog,posSymbols+(16*i)+(1*4),4,saida));
		set(saida,' ',13);
		mostrar("%s ",encontrarSecaoUsada(prog,posSymbols,i,posTabSec,saida));
		mostrar("%s ",lerLittHexEm(prog,posSymbols+(16*i)+(2*4),4,saida));
		mostrar("%s\n",encontrarNomeRotulo(prog,posSymbols,i,posStr,saida));
		
	}
	
}

char *instrucao(unsigned int comando, int *param)
{
	int num =comando&127, aux = (comando>>12)&7, aux2 = (comando>>25)&127;

	switch(num)
	{
		case 55:
			param[1]=5;
			return "lui";
		case 23:
			param[1]=2;
			return "auipc";
		case 111:
			param[1]=3;
			return "jal";
		case 103:
			param[2]=param[0]=2;
			return "jalr";
		case 99:
			param[0]=4;
			switch(aux)
			{
				case 0:
					return "beq";
				case 1:
					return "bne";
				case 4:
					return "blt";
				case 5:
					return "bge";
				case 6:
					return "bltu";
				case 7:
					return "bgeu";
			
			}
			
			
		case 3:
		param[2]=param[0]=2;
		switch(aux)
		{
			case 0:
				return "lb";
			case 1:
				return "lh";
			case 2:
				return "lw";
			case 4:
				return "lbu";
			case 5:
				return "lhu";
		}
		case 35:
			param[0]=3;
			switch(aux)
			{
				case 0:
					return "sb";
				case 1:
					return "sh";
				case 2:
					return "sw";
			}
		case 19:
			param[2]=2;
			switch(aux)
			{
				case 0:
					return "addi";
				case 2:
					return "slti";
				case 3:
					return "sltiu";
				case 4:
					return "xori";
				case 6:
					return "ori";
				case 7:
					return "andi";
				case 1:
					
					param[2]=3;
					if(aux2 == 0)
						return "slli";
					param[0]=param[1]=param[2]=param[3]=0;
					return "<unknown>";
					
				case 5:
					param[2]=3;
					if(aux2 == 0)
						return "srli";
					if(aux2 == 32)
						return "srai";
					param[0]=param[1]=param[2]=param[3]=0;
					return "<unknown>";
			}
		case 51:
			param[3]=0;
			switch(aux)
			{
				case 0:
					if(aux2 == 0)
						return "add";
					if(aux2 == 32)
						return "sub";
					param[0]=param[1]=param[2]=param[3]=0;
					return "<unknown>";
				case 1:
					if(aux2 == 0)
					return "sll";
					param[0]=param[1]=param[2]=param[3]=0;
					return "<unknown>";
				case 2:
					if(aux2 == 0)
					return "slt";
					param[0]=param[1]=param[2]=param[3]=0;
					return "<unknown>";
				case 3:
					if(aux2 == 0)
					return "sltu";
					param[0]=param[1]=param[2]=param[3]=0;
					return "<unknown>";
				case 4:
					if(aux2 == 0)
					return "xor";
					param[0]=param[1]=param[2]=param[3]=0;
					return "<unknown>";
				case 5:
					if(aux2 == 0)
						return "srl";
					if(aux2 == 32)
						return "sra";
					param[0]=param[1]=param[2]=param[3]=0;
					return "<unknown>";
				case 6:
					if(aux2==0)
						return "or";
					else
					param[0]=param[1]=param[2]=param[3]=0;
					return "<unknown>";
					
				case 7:
					if(aux2 == 0)
						return "and";
					param[0]=param[1]=param[2]=param[3]=0;
					return "<unknown>";
			}
			
		case 15:
			param[0]=param[1]=param[2]=param[3]=0;
			if(aux == 0)
				return "fence";
			return "fence.i";
		case 115:
			param[2]=param[3] = 0;
			switch(aux)
			{
				case 0:
					param[0]=param[1]=param[2];
					if(((comando>>20)&1)==0)
						return "ecall";
					return "ebreak";
				case 1:
					return "csrrw";
				case 2:
					return "csrrs";
				case 3:
					return "csrrc";
				case 5:
					return "csrrwi";
				case 6:
					return "csrrsi";
				case 7:
					return "csrrci";
			}
		default:
			param[0]=param[1]=param[2]=param[3]=0;
			return "<unknown>";
	
	
	}

	

}

char *parametros(int comando, int *param, char *saida)
{
	set(saida,0,100);
	char *registradores[] = {"zero","ra","sp","gp","tp","t0","t1","t2","s0","s1","a0","a1","a2","a3","a4","a5","a6","a7","s2","s3","s4","s5","s6","s7","s8","s9","s10","s11","t3","t4","t5","t6"};
	char temp[100];
	set(temp,0,100);
	int rd = (comando>>7)&31;
	int temAntes = 0;
	int ntemp = 0;
	if(param[0]==1)
	{	
		if(temAntes)
			join(saida, ", ",0);
		join(saida, registradores[rd],0);
		temAntes=1;
		
	}
	else
	if(param[0]==2)
	{	
		param[1] = 4;
		if(temAntes)
			join(saida, ", ",0);
		join(saida, registradores[rd],0);
		temAntes=1;
		
	}
	else
	if(param[0]==3)
	{	
		param[1] = 4;
		param[3] = 3;
		ntemp += rd;
		
	}
	else
	if(param[0]==4)
	{	
		param[3] = 2;
		ntemp += ((comando>>8)&15);
		
	}
	if(param[1]==1)
	{
		
		rd = (comando>>15)&31;
		if(temAntes)
			join(saida, ", ",0);
		join(saida, registradores[rd],0);
		temAntes=1;
	}
	else if(param[1]==2)
	{
		param[2] = param[3]=0;
		if(temAntes)
			join(saida, ", ",0);
		join(saida,unsitoString((comando>>12)&1048575,temp),0);
		temAntes=1;
	
	}
	else if(param[1]==3)
	{ 
		//jal
		param[2] = param[3]=0;
		if(temAntes)
			join(saida, ", ",0);
		
		int numero = 0;
		if(comando & (1<<31))
			numero = -2097152;
		int jal = comando >>12;
		numero = numero | ((jal & 524288)|((jal & 255)<<11)|((jal &256)<<2)|((jal & 523776)>>9))<<1;
		join(saida,toString(numero,temp),0);
		temAntes=1;
		
	}
	else if(param[1]==5)
	{
		param[2] = param[3]=0;
		if(temAntes)
			join(saida, ", ",0);
		join(saida,unsitoString((comando>>12)&1048575,temp),0);
		temAntes=1;
	
	}
	if(param[2]==1)
	{
		rd = (comando>>20)&31;
		if(temAntes)
			join(saida, ", ",0);
		join(saida, registradores[rd],0);
		temAntes=1;
	}
	else if(param[2]==2)
	{
		param[3]=0;
		if(temAntes)
			join(saida, ", ",0);
		join(saida,toString(comando>>20,temp),0);
		temAntes=1;
	
	}
	else if(param[2]==3)
	{
		param[3]=0;
		if(temAntes)
			join(saida, ", ",0);
		join(saida,toString((comando>>20)&31,temp),0);
		temAntes=1;
	
	}
	if(param[3]==1)
	{
		if(temAntes)
			join(saida, ", ",0);
		join(saida,toString(comando>>25,temp),0);
		temAntes=1;
	
	}
	if(param[3]==2)
	{
		if(temAntes)
			join(saida, ", ",0);
		int numero = 0;
		if(comando & (1<<31))
			numero = -2048;
		
		//printf("numero: %d, ntemp: %d, nov parte: %d\n",numero,ntemp,((comando>>20)&2032));
		join(saida,toString((numero+(ntemp+((comando>>21)&2032)))<<1,temp),0);
		//join(saida,toString(numero|(ntemp+((comando>>20)&2032)),temp),0);
		temAntes=1;
	
	}
	if(param[3]==3)
	{
		if(temAntes)
			join(saida, ", ",0);
		int numero = 0;
		if(comando & (1<<31))
			numero = -4096;
		
		//printf("numero: %d, ntemp: %d, nov parte: %d\n",numero,ntemp,((comando>>20)&4064));
		join(saida,toString((numero+(ntemp+((comando>>20)&4064))),temp),0);
		//join(saida,toString(numero|(ntemp+((comando>>20)&2032)),temp),0);
		temAntes=1;
	
	}
	
	if(param[1]==4)
	{
		
		rd = (comando>>15)&31;
		join(saida,"(",0);
		join(saida, registradores[rd],0);
		join(saida,")",0);
		temAntes=1;
	}
	
	return saida;
}


void mostrarInstrucao(unsigned char *prog, int pos,int endFisico)
{
	/*
	*mostrar instrucao:
		mostrar endereco
		receber a instrucao de 32 bits
		verificar a instrucao
		se nao encontrada:
			mostrar os 4 primeiros valores da instrucao
			\t
			mostrar <unknown>
		se encontrada:
			mostrar os 4 primeiros valores da instrucao
			\t
			mostrar a instrucao
			\t
			mostrar os parametros
	*/
	char texto[100];
	int param[] = {1,1,1,1};
	
	mostrar("%s: ",toHex(pos,texto));
	mostrar("%s\t",lerComando(prog,endFisico,4,texto));
	mostrar("%s\t",instrucao(lerLittNumEm(prog,endFisico,4),param));
	mostrar("%s\n",parametros(lerLittNumEm(prog,endFisico,4),param,texto));
	
	
}

int getIndexText(unsigned char *prog,int posTabSec, int posNomesSec)
{
	char saida[100];
	int numSec = lerLittNumEm(prog,48,2);
	for(int i =1;i<numSec;i++)
	{
		if(equals(lerString(prog,posNomesSec + lerLittNumEm(prog,posTabSec+(40*i),4),saida),".text")) return i;
	}
	return 0;
}

void comandos(unsigned char *prog)
{
	/*
		encontrar a tabela de secoes
		encontrar a tabela de rotulos
		encontrar secao .text
		encontrar tamanho da secao .text
		encontrar VMA
		//ordenar o vetor de indices ordenando os enderecos
		loop enquanto dentro de text:
		
		se endereco = ao da posicao j: mostrar "endereco nome"
		mostrar instrucao
		aumentar o endereco em 4
		voltar no loop
	
		
		*mostrar instrucao:
		funcao detalhada acima
	*/
	
	mostrar("\n%s\n","Disassembly of section .text:");
	//encontrando tabelas
	int posTabSec = lerLittNumEm(prog,32,4); //tabela de secoes
	int indx = lerLittNumEm(prog,50,2); //index da tabela de secoes
	int indxTextSec = getIndexText(prog,posTabSec,lerLittNumEm(prog,(posTabSec+(lerLittNumEm(prog,50,2))*40)+16,4));
	//mostrar("posicao da tabela de secoes: %d numero de secoes: %d indx tabela de nomes: %d\n",posTabSec,numSec,indx);
	int posSymtab = indx - 1;
	int posStrtab = indx + 1;
	int posSymbols = lerLittNumEm(prog,posTabSec + (posSymtab*40)+16,4);
	int posText = lerLittNumEm(prog,posTabSec + (indxTextSec*40)+16,4); //posicao de text (nao da secao)
	int virtualPosText = lerLittNumEm(prog, posTabSec + (indxTextSec*40)+12,4);
	int posStr = lerLittNumEm(prog,posTabSec + (posStrtab*40)+16,4);
	//int posStrSec = lerLittNumEm(prog,posTabSec + (indx*40)+16,4);
	int tamSym = lerLittNumEm(prog,posTabSec+(40*posSymtab)+20,4)/16;
	int tamText = lerLittNumEm(prog,posTabSec + (indxTextSec*40)+20,4);
	char saida[100];



	//mostrar("text: %s\n",lerString(prog,posStrSec+lerLittNumEm(prog,posTabSec + (1*40),4),14,saida));
	//mostrar("pos em text: %d\n",lerLittNumEm(prog,posTabSec + (2*40),4));
	//mostrar("%s %d\n",toHex(posTabSec,saida),posStr);
	//rodar o text
	for(int i =0;i<tamText;i+=4)
	{
		
		//procurar se o endereco esta em symbols
		for(int j=tamSym-1;j>=0;j--)
			if(lerLittNumEm(prog,posSymbols+j*16+4,4)==i+virtualPosText)
			{
				mostrar("\n%s ",_8Digi(toHex(i+virtualPosText,saida)));
				mostrar("%s:\n",encontrarNomeRotulo(prog,posSymbols,j,posStr,saida));
				break;
			}
		mostrarInstrucao(prog,i+virtualPosText,posText+i);
	}
		
	
	

}

void objDump(unsigned char *prog, char *argv[])
{
	
	char assinatura[4];
	getString(prog,1,4,assinatura);
	mostrar("\n%s:\tfile format ",argv[2]);
	mostrar("%s",assinatura);
	mostrar("%s-",prog[4]==1?"32\0":"64\0");
	mostrar("%s\n\n",prog[18]==243?"riscv":"x86");
	
	
	//mostrar("%s: file format ELF32-riscv\n\n\n",argv[2]);
	
	switch(argv[1][1])
	{
		case 'h':
			tabelaDeSecoes(prog);
			break;
		case 't':
			tabelaDeSimbolos(prog);
			break;
		case 'd':
			comandos(prog);
			break;
		default:
			mostrar2("erro: argumento invalido!\n");
			break;
	
	}
	
}

int main(int argc, char *argv[] )
{
	int arq = open(argv[2],O_RDONLY);
	unsigned char prog[TAM_PROG];
	read(arq,prog,TAM_PROG);
	objDump(prog,argv);
}

//remover as dependencias de ordem das secoes
