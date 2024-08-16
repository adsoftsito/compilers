%{
#include<stdio.h>
#include<string.h>
int count_key=0;
%}

%%
int | 
float | 
char | 
double | 
switch | 
if | 
while | 
do  { count_key++;}
.|\n   {;}
%%

int main ( int argc,char *argv[] )
{
	if(argc==2)
		yyin=fopen(argv[1],"r");
	else
	{
		printf("\nEnter the input:\n");
		yyin=stdin;
	}
	yylex();
	printf("\nNumber of keywords = %d\n",count_key);
}

int yywrap( )
{
	return 1;
}
