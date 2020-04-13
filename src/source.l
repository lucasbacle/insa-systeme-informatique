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
\> return tSUP;
\< return tINF;
if return tIF;
else return tELSE;

void return tVOID;
const return tCONST;
int return tINT;

main return tMAIN;
\{ return tOPENED_C_BRACKET;
\} return tCLOSED_C_BRACKET;
return return tRETURN;

printf return tPRINTF;

[0-9]+e[0-9]+|[0-9]+ {yylval.nb = atof(yytext); return tNUMBER;};
[a-z|A-Z|_][a-z|A-Z|0-9|_]* {yylval.var = strdup(yytext); return tIDENTIFIER;};

%%

int yywrap(void){}
