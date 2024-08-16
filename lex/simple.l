/*Program to recognize whether a given sentence is simple or compound.*/
%{
	#include<stdio.h>
	int flag=0;
%}

%%
and |
or |
but |
because |
if |
then |
nevertheless  { flag=1; }
.  ;
\n  { return 0; }
%%

int main()
{
	printf("Enter the sentence:\n");
	yylex();
	if(flag==0)
		printf("Simple sentence\n");
	else
		printf("compound sentence\n");
}

int yywrap( )
{
	return 1;
}
