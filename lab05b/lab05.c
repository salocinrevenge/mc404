
int read(int __fd, const void *__buf, int __n){
  int bytes;
  __asm__ __volatile__(
    "mv a0, %1           # file descriptor\n"
    "mv a1, %2           # buffer \n"
    "mv a2, %3           # size \n"
    "li a7, 63           # syscall read (63) \n"
    "ecall \n"
    "mv %0, a0"
    : "=r"(bytes)  // Output list
    :"r"(__fd), "r"(__buf), "r"(__n)    // Input list
    : "a0", "a1", "a2", "a7"
  );
  return bytes;
}

void write(int __fd, const void *__buf, int __n){
  __asm__ __volatile__(
    "mv a0, %0           # file descriptor\n"
    "mv a1, %1           # buffer \n"
    "mv a2, %2           # size \n"
    "li a7, 64           # syscall write (64) \n"
    "ecall"
    :   // Output list
    :"r"(__fd), "r"(__buf), "r"(__n)    // Input list
    : "a0", "a1", "a2", "a7"
  );
}


int elevado(int base, int expoente)
{
    int num = 1;
    for(int i =0;i<expoente;i++)
        num*=base;
    return num;
}

char *gerarString(int num, char *str)
{   
    if(num<0)
    {
        str[0]='-';
        num*=-1;
    }
    else
    {
        str[0]='+';
    }
    int digito;
    for(int i = 1;i<5;i++)
    {
        digito = num/elevado(10,4-i);
        str[i] = digito + '0';
        num-=digito*elevado(10,4-i);
    }
    str[5]=0;
    return str;
}

char *unir(char *str1, char *str2, char *resul)
{
    int pos = 0;
    for(;str1[pos]!=0;pos++)
    {
        resul[pos] = str1[pos];
    }
    resul[pos++] = ' ';
    for(int i =0;str2[i]!=0;i++)
    {
        resul[pos++] = str2[i];
    }
    resul[pos]='\n';
    resul[pos]=0;
    return resul;
}

int lerNum(int pos,char *string)
{
    int neg = 0;
    if(string[pos]=='-')
    {
        neg = 1;
        pos++;
    }
    else if(string[pos]=='+')
        pos++;

    int num=0;
    while(string[pos]!= ' ' && string[pos]!= '\n' && string[pos]!= '\0')
    {
        num*=10;
        num+=(string[pos]-'0');
        pos++;
    }
    if(neg)
        num*=-1;

    return num;
}

int main()
{
    //receber
    char cords[12];
    read(0,cords,12);
    char tempos[20];
    read(0,tempos,20);

    //traduzir
    int yb, xc, ta, tb, tc, tr;
    yb = lerNum(0,cords);
    xc = lerNum(6,cords);
    ta = lerNum(0,tempos);
    tb = lerNum(5,tempos);
    tc = lerNum(10,tempos);
    tr = lerNum(15,tempos);
    char resp[13];
    int x,y;

    //calculo
    int da = (tr-ta)*3/10;
    int db = (tr-tb)*3/10;
    int dc = (tr-tc)*3/10;

    x=(((da*da-dc*dc)/xc)+xc)/2;
    y=(((da*da-db*db)/yb)+yb)/2;

    //impressao
    char cx[6];
    char cy[6];
    write(1, unir(gerarString(x,cx),gerarString(y,cy),resp),13);

}
