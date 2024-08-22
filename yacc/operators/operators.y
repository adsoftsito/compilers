%{ 
   #include<stdio.h> 
   int yylex(void);
   void yyerror(char *s);
   int sym[26];
%} 
  
%token INTEGER VARIABLE
%left '+' '-'
%left '*' '/'
  
  
/* Rule Section */
%% 
  
program: 
        program statement '\n'
        |
        ;

statement:
        expr                { printf("%d\n", $1); }
        | VARIABLE '=' expr { sym[$1] = $3; }
        ;

expr: 
        INTEGER             
        | VARIABLE          { $$ = sym[$1]; }
        | expr '+' expr     { $$ = $1 + $3; }
        | expr '-' expr     { $$ = $1 - $3; }
        | expr '*' expr     { $$ = $1 * $3; }
        | expr '/' expr     { $$ = $1 / $3; }
        | '(' expr ')'     { $$ = $2;  }  
        ; 
  
%% 
  
  
void yyerror(char *s) { 
   printf("\n%s\n", s); 
}

int main (void) {
  printf("enter expressions: x=5, y=2, x+y, 4+3-(x) : ");
  yyparse();
  return 0;
}
