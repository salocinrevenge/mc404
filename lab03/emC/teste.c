#include <stdlib.h>
#include <stdio.h>

int modulo(int num)
{
	if(num<0)
	return num*-1;
	return num;
}

void removerZeros(char *str)
{
	int i,j=2, copping=0;
	for(i=2;i<35;i++)
	{
		if(str[i]!='x'&&str[i]!='0'&&str[i]!='\0'&&str[i]!='\n'&&str[i]!='b')
			copping=1;
		if(copping)
		{
			str[j]=str[i];
			j++;
		}
		if(str[i]=='\0')
			break;
	}
}

int xToI(char c)
{
	char caracs[] = {'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
	for(int i =0;i<16;i++)
	{
		if(c == caracs[i])
		return i;
	}
	return 0;
}

int gerarInt(char * str,int n)
{
	int i=0,dig,res=0,neg=0,hex=0;
	if(str[0]=='0')
		if(str[1]=='x')
		{
			i=2;
			hex=1;
		}
	for(;i<n;i++)
	{
		if(str[i]=='\0')
			break;
		if(str[i]=='-')
		{
			neg = 1;
			continue;
		}
		
		if(hex)
			res*=16;
		else	
			res*=10;
		
		res+=(xToI(str[i]));
	}
	if(neg)
		res*=-1;
	return res;
}

void *setar(char *str,int tam,char c)
{
	int i;
	for(i=0;i<tam;i++)
	{
		str[i] = c;
	}
	str[tam-1]='\0';
}

void *intToBinary(int num, char *res)
{
	int neg =0;
	if(num<0)
		neg=1;
	char bin[33];
	setar(bin,33,'0');
	setar(res,35,'0'+neg);
	
	int i = 0,temp,j;
	while(num!=0 && num!=-1)
	{	
		
		temp=num&1;
		//printf("num:%d e temp:%d\n",num,temp);
		bin[i]=temp+'0';
		num= num>>1;
		i++;
	}
	if(num==-1)
	{
		temp=num&1;
		//printf("num:%d e temp:%d\n",num,temp);
		bin[i]=temp+'0';
		num= num>>1;
		i++;
	}
	res[0]='0';res[1]='b';
	for(j=34-i,i--;i>-1;i--,j++)
	{
		res[j]=bin[i];
	}
	res[j]='\0';
}

void *intToHex(unsigned int num,char *res)
{
	char caracs[] = {'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
	char hex[8];
	setar(hex,8,'0');
	setar(res,35,'0');
	
	int i,j;
	for(i=0;i<8;i++)
	{
		hex[i]=caracs[((15<<(4*i))&num)>>4*i];
	
	
	}
	res[0]='0';res[1]='x';
	for(j=2,i--;i>-1;i--,j++)
	{
		res[j]=hex[i];
	}
	res[j]='\0';
}

unsigned int endless(int num)
{
	unsigned int res = 0,temp = 255;
	for(int i =0;i<4;i++)
	{
		res=res<<8;
		res+=((temp<<(i*8))&num)>>(i*8);
	}
	return res;
}

void intToStr(int num, char *str,int n)
{
	setar(str,n,'0');
	int i =0,j=0;
	char temp;
	printf("num antes: %d\n",num);
	if(num<0)
	{
		printf("eu sou negativo!\n");
		str[0]='-';
		j=1;
		num=num*(-1);
		i++;
	}
	printf("num: %d\n",num);
	while(num!=0)
	{
		//printf("char: %d; ",((num%10)+'0'));
		str[i]=(modulo(num%10)+'0');
		num/=10;
		i++;
	}
	str[i]='\0';
	i--;
	for(;j<i;j++,i--)
	{
		temp = str[j];
		str[j]=str[i];
		str[i]=temp;
	}
}

void unsToStr(unsigned int num, char *str,int n)
{
	setar(str,n,'0');
	int i =0;
	char temp;
	while(num>0)
	{
		str[i]=((num%10)+'0');
		num/=10;
		i++;
	}
	str[i]='\0';
	i--;
	for(int j = 0;j<i;j++,i--)
	{
		temp = str[j];
		str[j]=str[i];
		str[i]=temp;
	}
}

int main()
{
	int n = 11;
	char str[11];
  
	scanf("%s",str);


	int numero = gerarInt(str,n);
	char res[35];
	
	intToBinary(numero,res);
	removerZeros(res);
	printf("%s\n",res);
	
	intToStr(numero,res,35);
	printf("%s\n",res);
	
	intToHex(numero,res);
	removerZeros(res);
	printf("%s\n",res);
	
	unsToStr(endless(numero),res,35);
	printf("%s\n",res);
	return 0;

}

