%{
#include <stdio.h>
int yylex(void);
void yyerror(char *s);
%}

%token HELLO

%%

start: HELLO { printf("Hello, World!\n"); }

%%

void yyerror(char *s) { 
   printf("\n%s\n", s); 
}

int main() {
    printf("Type 'hello' : ");
    return yyparse();
}
