%{ 
  #include<stdio.h> 
  #include "y.tab.h" 
  void yyerror(char *);
%} 

%option noyywrap
  

/* Rule Section */
%% 
[0-9]+               { 
                       yylval=atoi(yytext); 
                       return INTEGER; 
		     } 
[-+\n]                 { return *yytext; }
[ \t]        ;        /* skip whitespace */
.                    yyerror("invalid character");
%%
