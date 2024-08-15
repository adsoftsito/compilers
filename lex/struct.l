%{
#include <stdio.h>
%}
 
%%
[0-9]+ { printf("Saw an integer: %s\n", yytext); }
. { ;}
%%
 
int main( )
{
  printf("Enter some input that consists of an integer number\n");
  yylex();

  return (0);
}

int yywrap()
{
  return 1;
}
