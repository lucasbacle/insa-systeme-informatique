%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "symbols.h"

	extern FILE *yyin;
	extern FILE *yyout;
	int yydebug = 0;
%}

%union {int nb; char * var;}

%token <nb> tNUMBER
%token <var> tIDENTIFIER
%token tCOMMA tSEMI_COLUMN tSLASH tSTAR tPLUS tMINUS tEQUAL tCLOSED_PARENTHESIS tOPENED_PARENTHESIS tVOID tCONST tINT tMAIN tOPENED_C_BRACKET tCLOSED_C_BRACKET tRETURN tPRINTF

// TODO: %type
%type <nb> EXPRESSION

%right tEQUAL
%left tPLUS tMINUS
%left tSTAR tSLASH

%start PROGRAM

%%

PROGRAM: RETURN_TYPE tMAIN tOPENED_PARENTHESIS tCLOSED_PARENTHESIS BODY {printf("S\n");};
RETURN_TYPE: TYPE | ;

BODY: tOPENED_C_BRACKET LISTE_DECLARATIONS LISTE_INSTRUCTIONS tCLOSED_C_BRACKET {printf("BODY\n");};
LISTE_DECLARATIONS: DECLARATION LISTE_DECLARATIONS | ;
LISTE_INSTRUCTIONS: INSTRUCTION LISTE_INSTRUCTIONS | {printf("LISTE_INSTRUCTIONS\n");};
INSTRUCTION: AFFECTATION|AFFICHAGE {printf("INSTRUCTION\n");};

TYPE: tINT {$$=Integer;};
TYPE_OPTION: tCONST{$$=Const;};

DECLARATION: TYPE_OPTION TYPE LIST_IDENTIFIER tEQUAL EXPRESSION tSEMI_COLUMN
		{printf("DECLARATION CONST\n");}
	|TYPE LIST_IDENTIFIER tSEMI_COLUMN
		{create_symbol($2, $1, Nothing);}
	|TYPE LIST_IDENTIFIER tEQUAL EXPRESSION tSEMI_COLUMN
		{printf("DECLARATION AVEC AFFECTATION\n");};

LIST_IDENTIFIER: tIDENTIFIER {$$="ma_variable";}| tIDENTIFIER tCOMMA LIST_IDENTIFIER;

AFFECTATION: tIDENTIFIER tEQUAL EXPRESSION tSEMI_COLUMN {printf("AFC @resultat EXPR\n");};
// TODO: COP @expr @resultat

AFFICHAGE: tPRINTF tOPENED_PARENTHESIS tIDENTIFIER tCLOSED_PARENTHESIS tSEMI_COLUMN {printf("AFFICHAGE\n");};

EXPRESSION: tOPENED_PARENTHESIS EXPRESSION tCLOSED_PARENTHESIS
	|EXPRESSION tSTAR EXPRESSION 
		{printf("EXPR*EXPR\n");}
	|EXPRESSION tSLASH EXPRESSION 
		{printf("EXPR/EXPR\n");}
	|EXPRESSION tPLUS EXPRESSION
		// return adresse temporaire du resultat 
		{printf("EXPR+EXPR\n");}
	|EXPRESSION tMINUS EXPRESSION 
		{printf("EXPR-EXPR\n");}
	|tIDENTIFIER
		{printf("IDENTIFIER\n");}
	// TODO: chercher dans la table des symbole puis return adresse de la var (int)
	|tMINUS EXPRESSION %prec tSTAR
	|tNUMBER 
		{printf("NUMBER\n");}
	// TODO: chercher dans la table des symbole temporaire puis return adresse de la var (int).
	// LES METTRE A LA FIN et remonter :)
	{printf("EXPRESSION\n");};
	

%%

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


