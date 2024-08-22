%{
#include <stdio.h>
#include "y.tab.h"
%}

%option noyywrap

%%

"hello"    { printf("Hello, World!\n"); }
.          { ECHO; }

%%
/*
int main() {
    yylex();
    return 0;
}*/
