%{
	#include <stdio.h>
	#include <stdlib.h>

	extern FILE *yyin;
	extern FILE *yyout;
	int yydebug = 0;
%}

%token tCOMMA tSEMI_COLUMN tSLASH tSTAR tPLUS tMINUS tEQUAL tCLOSED_PARENTHESIS tOPENED_PARENTHESIS tVOID tCONST tINT tMAIN tOPENED_C_BRACKET tCLOSED_C_BRACKET tRETURN tPRINTF tNUMBER tIDENTIFIER

%right tEQUAL
%left tPLUS tMINUS
%left tSTAR tSLASH

%%

S: RETURN_TYPE tMAIN tOPENED_PARENTHESIS tCLOSED_PARENTHESIS BODY {printf("S\n");};
RETURN_TYPE: TYPE | ;

BODY: tOPENED_C_BRACKET LISTE_DECLARATIONS LISTE_INSTRUCTIONS tCLOSED_C_BRACKET {printf("BODY\n");};
LISTE_DECLARATIONS: DECLARATION LISTE_DECLARATIONS | ;
LISTE_INSTRUCTIONS: INSTRUCTION LISTE_INSTRUCTIONS | {printf("LISTE_INSTRUCTIONS\n");};
INSTRUCTION: AFFECTATION|AFFICHAGE {printf("INSTRUCTION\n");};

TYPE: tINT {printf("TYPE\n");};
TYPE_OPTION: tCONST;

DECLARATION: TYPE_OPTION TYPE LIST_IDENTIFIER tEQUAL EXPRESSION tSEMI_COLUMN
		{printf("DECLARATION CONST\n");}
	|TYPE LIST_IDENTIFIER tSEMI_COLUMN
		{printf("DECLARATION SANS AFFECTATION\n");}
	|TYPE LIST_IDENTIFIER tEQUAL EXPRESSION tSEMI_COLUMN
		{printf("DECLARATION AVEC AFFECTATION\n");};

LIST_IDENTIFIER: tIDENTIFIER | tIDENTIFIER tCOMMA LIST_IDENTIFIER;

AFFECTATION: tIDENTIFIER tEQUAL EXPRESSION tSEMI_COLUMN {printf("AFFECTATION\n");};

AFFICHAGE: tPRINTF tOPENED_PARENTHESIS tIDENTIFIER tCLOSED_PARENTHESIS tSEMI_COLUMN {printf("AFFICHAGE\n");};

EXPRESSION: tOPENED_PARENTHESIS EXPRESSION tCLOSED_PARENTHESIS
	|EXPRESSION tSTAR EXPRESSION 
		{printf("EXPR*EXPR\n");}
	|EXPRESSION tSLASH EXPRESSION 
		{printf("EXPR/EXPR\n");}
	|EXPRESSION tPLUS EXPRESSION 
		{printf("EXPR+EXPR\n");}
	|EXPRESSION tMINUS EXPRESSION 
		{printf("EXPR-EXPR\n");}
	|tIDENTIFIER
		{printf("IDENTIFIER\n");}
	|tMINUS EXPRESSION %prec tSTAR
	|tNUMBER 
		{printf("NUMBER\n");}
	{printf("EXPRESSION\n");};

%%

int yyerror(void){}

int main(int argc, char *argv[]) {
	if (argc == 3) {
		yyout = fopen(argv[2], "w");
		yyin = fopen(argv[1], "r");
		
		if (yyparse()==0){
			printf("OK\n");
		} else {
			printf("PAS OK\n");
		}
		
		fclose(yyin);
		fclose(yyout);
	} else {
		printf("Wrong usage !\n");
	}
	
	return 0;
}


