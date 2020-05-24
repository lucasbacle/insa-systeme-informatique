%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "symbols.h"
	#include "assembly.h"

	extern FILE *yyin;
	extern FILE *yyout;
	int yydebug = 0;
%}

%union {int nb; char * var;}

%token <nb> tNUMBER
%token <var> tIDENTIFIER
%token tCOMMA tSEMI_COLUMN tSLASH tSTAR tPLUS tMINUS tEQUAL tCLOSED_PARENTHESIS tOPENED_PARENTHESIS tVOID tCONST tINT tMAIN tOPENED_C_BRACKET tCLOSED_C_BRACKET tRETURN tPRINTF tSUP tINF tIF tELSE tWHILE

%type <nb> EXPRESSION TYPE TYPE_OPTION LIST_IDENTIFIER CONDITION_IF tWHILE tOPENED_PARENTHESIS

%right tEQUAL
%left tPLUS tMINUS
%left tSTAR tSLASH

%start PROGRAM

%%

PROGRAM: RETURN_TYPE tMAIN tOPENED_PARENTHESIS tCLOSED_PARENTHESIS BODY ;
RETURN_TYPE: TYPE | ;

BODY: tOPENED_C_BRACKET LISTE_DECLARATIONS LISTE_INSTRUCTIONS tCLOSED_C_BRACKET {pop_tmp();};
LISTE_DECLARATIONS: DECLARATION LISTE_DECLARATIONS | ;
LISTE_INSTRUCTIONS: INSTRUCTION LISTE_INSTRUCTIONS | ;
INSTRUCTION: AFFECTATION|COP|WHILE|CONDITION|AFFICHAGE ;

TYPE: tINT {$$=Integer;};
TYPE_OPTION: tCONST{$$=Const;};

CONDITION_IF: tIF tOPENED_PARENTHESIS EXPRESSION tCLOSED_PARENTHESIS
	{	
		char * str = malloc(sizeof(char)*15);
		sprintf(str, "JMF %d",$3);
		int ligne = insert(str) ;
		free(str);
		$$ = ligne ;	
	};

CONDITION: CONDITION_IF	BODY
	{	
		int current = getNumberLine();
		patch($1, current + 2);
		int ligne = insert("JMP");
		$1 = ligne;
	} 
	tELSE BODY
	{	
		int current = getNumberLine(); 
		patch($1, current + 1);
	}
	| CONDITION_IF BODY
	{	
		int current = getNumberLine(); 
		patch($1, current + 1);
	};

WHILE: tWHILE tOPENED_PARENTHESIS {$1 = getNumberLine()+1;} EXPRESSION tCLOSED_PARENTHESIS
	{	
		char * str = malloc(sizeof(char)*15);
		sprintf(str, "JMF %d",$4);
		int ligne = insert(str) ;
		free(str);
		$2 = ligne ;	
	}
 	BODY
	{	
		int current = getNumberLine();
		patch($2, current + 2);

		char * str = malloc(sizeof(char)*15);
		sprintf(str, "JMP %d", $1);
		insert(str);
		free(str);
	};

DECLARATION: TYPE_OPTION TYPE LIST_IDENTIFIER tEQUAL EXPRESSION tSEMI_COLUMN
	|TYPE LIST_IDENTIFIER tSEMI_COLUMN
	|TYPE LIST_IDENTIFIER tEQUAL EXPRESSION tSEMI_COLUMN;

LIST_IDENTIFIER: tIDENTIFIER{$$=create_symbol($1, Integer, Nothing);}| tIDENTIFIER {create_symbol($1, Integer, Nothing);} tCOMMA LIST_IDENTIFIER;

AFFECTATION: tIDENTIFIER tEQUAL tNUMBER tSEMI_COLUMN 
{
	char * str = malloc(sizeof(char)*100);
	sprintf(str, "AFC %d %d",get_symbol_by_name($1),$3);
	insert(str);
	free(str);
};

COP: tIDENTIFIER tEQUAL EXPRESSION tSEMI_COLUMN 
{
	char * str = malloc(sizeof(char)*100);
	sprintf(str, "COP %d %d",get_symbol_by_name($1),$3);
	insert(str);
	free(str);
	if(is_tmp($3))
	{
		pop_tmp();
	}
};

AFFICHAGE: tPRINTF tOPENED_PARENTHESIS tIDENTIFIER tCLOSED_PARENTHESIS tSEMI_COLUMN 
{
	char * str = malloc(sizeof(char)*100);
	sprintf(str, "PRI %d",get_symbol_by_name($3));
	insert(str);
	free(str);
};

EXPRESSION: tOPENED_PARENTHESIS EXPRESSION tCLOSED_PARENTHESIS
		{
			printf("resultat inter : %d\n",$2);
			$$=$2;
		}
	|EXPRESSION tSTAR EXPRESSION 
		{
			int tmp=create_tmp_symbol();
			char * str = malloc(sizeof(char)*100);
			sprintf(str, "MUL %d %d %d", tmp, $1, $3);
			insert(str);
			free(str);
			$$=tmp;
		}
	|EXPRESSION tSLASH EXPRESSION 
		{
			int tmp=create_tmp_symbol();
			char * str = malloc(sizeof(char)*100);
			sprintf(str, "DIV %d %d %d", tmp, $1, $3);
			insert(str);
			free(str); 
			$$=tmp;
		}
	|EXPRESSION tPLUS EXPRESSION
		{
			int tmp=create_tmp_symbol();
			char * str = malloc(sizeof(char)*100);
			sprintf(str, "ADD %d %d %d", tmp, $1, $3);
			insert(str);
			free(str);
			$$=tmp;
		}
	|EXPRESSION tMINUS EXPRESSION 
		{
			int tmp=create_tmp_symbol();
			char * str = malloc(sizeof(char)*100);
			sprintf(str, "SOU %d %d %d", tmp, $1, $3);
			insert(str);
			free(str);
			$$=tmp;
		}
	|EXPRESSION tEQUAL tEQUAL EXPRESSION
		{
			int tmp=create_tmp_symbol();
			char * str = malloc(sizeof(char)*100);
			sprintf(str, "EQU %d %d %d", tmp, $1, $4);
			insert(str);
			free(str);
			$$=tmp;
		}
	|EXPRESSION tSUP EXPRESSION
		{
			int tmp=create_tmp_symbol();
			char * str = malloc(sizeof(char)*100);
			sprintf(str, "SUP %d %d %d", tmp, $1, $3);
			insert(str);
			free(str);
			$$=tmp;
		}
	|EXPRESSION tINF EXPRESSION
		{
			int tmp=create_tmp_symbol();
			char * str = malloc(sizeof(char)*100);
			sprintf(str, "INF %d %d %d", tmp, $1, $3);
			insert(str);
			free(str);
			$$=tmp;
		}
	|tIDENTIFIER
		{$$=get_symbol_by_name($1);}
	|tMINUS EXPRESSION %prec tSTAR
		{
			int tmp=create_tmp_symbol();
			$$=tmp;
		}
	|tNUMBER 
		{
			int tmp=create_tmp_symbol();
			char * str = malloc(sizeof(char)*100);
			sprintf(str, "AFC %d %d", tmp, $1); // TODO: check if it is needed
			insert(str);
			free(str);
			$$=tmp;
		};	
	

%%

int main(int argc, char *argv[]) {
	if (argc == 3) {
		yyin = fopen(argv[1], "r");
		
		if (yyparse()==0){
			printf("OK\n");
			writeFile(argv[2]);
		} else {
			printf("PAS OK\n");
		}
		
		fclose(yyin);
	} else {
		printf("Wrong usage !\n");
	}
	
	return 0;
}


