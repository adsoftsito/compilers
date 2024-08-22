%{ 
  #include<stdio.h> 
  #include "y.tab.h" 
  void yyerror(char *);
%} 

%option noyywrap
  

/* Rule Section */
%% 

    /* variables */

[a-z]                {
                       yylval = *yytext - 'a';
                       return VARIABLE;
                     }

    /* integers  */

[0-9]+               { 
                       yylval=atoi(yytext); 
                       return INTEGER; 
		                 }

    /* operators  */

[-+()=/*\n]          { return *yytext; }
[ \t]        ;        /* skip whitespace */
.                    yyerror("invalid character");
%%
