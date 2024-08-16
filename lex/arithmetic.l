%{
#include<stdio.h>
#include<string.h>
int flag=0,i=0,j,k=0;
char operand[20][20],oparator[20][20];
%}

%%
[a-zA-Z0-9]+  {flag++; strcpy(operand[i],yytext);  i++;}
[-+*/]	{flag--;  strcpy(oparator[k],yytext);    k++;}
%%

int main(int argc, char* argv[])
{
	printf("enter an arithmetic expression\n");
	yylex();
	
	if(flag!=1)
		printf("Invalid expression\n");
	else
	{
		printf("Valid expression\n");
		
		printf("The operands are\t");
		for(j=0;j<i;j++)
			printf("%s\t",operand[j]);
			
		printf("\nThe operators are\t");
		for(j=0;j<k;j++)
			printf("%s\t",oparator[j]);
			
		printf("\n");
	}
}

int yywrap( )
{
	return 1;
}
