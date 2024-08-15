/*** Sección de declaraciones ***/

%{
/* Código en C que será copiado */
#include <stdio.h>
%}

/* Esto indica a Flex que lea sólo un fichero de entrada */
%option noyywrap

%%
    /*** Sección de reglas ***/

    /* [0-9]+ identifica una cadena de uno o más dígitos */
[0-9]+  {
            /* yytext es una cadena que contiene el texto coincidente. */
            printf("Encontrado un entero: %s\n", yytext);
        }

.       {   /* Ignora todos los demás caracteres. */   }

%%
/*** Sección de código en C ***/

int main(void)
{
    /* Ejecuta el ''lexer'', y después termina. */
    yylex();
    return 0;
}
