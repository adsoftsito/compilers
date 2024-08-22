%{ 
   #include<stdio.h> 
   int yylex(void);
   void yyerror(char *s);
%} 
  
%token INTEGER
  
  
/* Rule Section */
%% 
  
program: 
        program expr '\n' { printf("%d\n", $2); }
        |
        ;

expr: 
        INTEGER           { $$ = $1; } 
        | expr '+' expr   { $$ = $1 + $3; }
        | expr '-' expr   { $$ = $1 - $3; }
        ; 
  
%% 
  
  
void yyerror(char *s) { 
   printf("\n%s\n", s); 
}

int main (void) {
  printf("enter expression ( a+b, a-b ) : ");
  yyparse();
  return 0;
}
