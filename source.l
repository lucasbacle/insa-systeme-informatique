%{
    #include "y.tab.h"
%}

%%

[ ]+ ;
[\n]+ ;
[\t]+ ;
\, return tCOMMA;
\; return tSEMI_COLUMN;

\/ return tSLASH;
\* return tSTAR;
\+ return tPLUS;
\- return tMINUS;
\= return tEQUAL;
\) return tCLOSED_PARENTHESIS;
\( return tOPENED_PARENTHESIS;

void return tVOID;
const return tCONST;
int return tINT;

main return tMAIN;
\{ return tOPENED_C_BRACKET;
\} return tCLOSED_C_BRACKET;
return return tRETURN;

printf return tPRINTF;

[0-9]+e[0-9]+|[0-9]+ return tNUMBER;
[a-z|A-Z|_][a-z|A-Z|0-9|_]* return tIDENTIFIER;

%%

int yywrap(void){}

/* int main(void){main:
    lex source_v2.lex
    gcc
    yacc
    

    printf("Début\n");
    yylex();
    printf("Fin\n");
    return 0;
}
 */