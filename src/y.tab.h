/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_SRC_Y_TAB_H_INCLUDED
# define YY_YY_SRC_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    tNUMBER = 258,
    tIDENTIFIER = 259,
    tCOMMA = 260,
    tSEMI_COLUMN = 261,
    tSLASH = 262,
    tSTAR = 263,
    tPLUS = 264,
    tMINUS = 265,
    tEQUAL = 266,
    tCLOSED_PARENTHESIS = 267,
    tOPENED_PARENTHESIS = 268,
    tVOID = 269,
    tCONST = 270,
    tINT = 271,
    tMAIN = 272,
    tOPENED_C_BRACKET = 273,
    tCLOSED_C_BRACKET = 274,
    tRETURN = 275,
    tPRINTF = 276,
    tSUP = 277,
    tINF = 278,
    tIF = 279,
    tELSE = 280,
    tWHILE = 281
  };
#endif
/* Tokens.  */
#define tNUMBER 258
#define tIDENTIFIER 259
#define tCOMMA 260
#define tSEMI_COLUMN 261
#define tSLASH 262
#define tSTAR 263
#define tPLUS 264
#define tMINUS 265
#define tEQUAL 266
#define tCLOSED_PARENTHESIS 267
#define tOPENED_PARENTHESIS 268
#define tVOID 269
#define tCONST 270
#define tINT 271
#define tMAIN 272
#define tOPENED_C_BRACKET 273
#define tCLOSED_C_BRACKET 274
#define tRETURN 275
#define tPRINTF 276
#define tSUP 277
#define tINF 278
#define tIF 279
#define tELSE 280
#define tWHILE 281

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 12 "src/source_v2.y" /* yacc.c:1909  */
int nb; char * var;

#line 109 "src/y.tab.h" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_SRC_Y_TAB_H_INCLUDED  */
