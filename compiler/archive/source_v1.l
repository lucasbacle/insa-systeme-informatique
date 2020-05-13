%%
[ ]+ printf("SPACE ");
[\n]+ printf("NEW_LINE ");
[\t]+ printf("TAB ");
\, printf("COMMA ");
\; printf("SEMI_COLUMN ");

\/ printf("SLASH ");
\* printf("STAR ");
\+ printf("PLUS ");
\- printf("MINUS ");
\= printf("EQUAL ");
\) printf("CLOSED_PARENTHESIS ");
\( printf("OPENED_PARENTHESIS ");

void printf("VOID ");
const printf("CONST ");
int printf("INT ");

main printf("MAIN ");
\{ printf("OPENED_C_BRACKET ");
\} printf("CLOSED_C_BRACKET ");
return printf("RETURN ");

printf printf("PRINTF ");

[0-9]+e[0-9]+|[0-9]+ printf("NUMBER:%s ", yytext);
[a-z|A-Z|_][a-z|A-Z|0-9|_]* printf("IDENTIFIER:%s ", yytext);

\[ printf("OPENED_BRACKET ");
\] printf("CLOSED_BRACKET ");
\" printf("STRING_MARK ");
\' printf("CHAR_MARK ");

%%

int yywrap(void){}

int main(void){
    printf("Début\n");
    yylex();
    printf("Fin\n");
    return 0;
}
