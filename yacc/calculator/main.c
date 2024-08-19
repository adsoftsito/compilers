#include <stdio.h> 
#include "y.tab.h"
void parse(FILE *file);

int main(){
    FILE *file = fopen("entrada.txt", "r");
    parse(file);   
    return 0;
}
