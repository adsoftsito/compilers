/*Lex program to count the number of vowels & consonants from the given input string.*/
%{
	#include<stdio.h>
	int vow=0, con=0;
%}

%%
[ \t\n]+    ;
[aeiouAEIOU]+    {vow++;}
[^aeiouAEIOU]     {con++;}
%%

int main( )
{
	printf("Enter some input string:\n");
	yylex();
	printf("Number of vowels=%d\n",vow);
	printf("Number of consonants=%d\n",con);
}

int yywrap( )
{
	return 1;
}
