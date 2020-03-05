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

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    tCOMMA = 258,
    tSEMI_COLUMN = 259,
    tSLASH = 260,
    tSTAR = 261,
    tPLUS = 262,
    tMINUS = 263,
    tEQUAL = 264,
    tCLOSED_PARENTHESIS = 265,
    tOPENED_PARENTHESIS = 266,
    tVOID = 267,
    tCONST = 268,
    tINT = 269,
    tMAIN = 270,
    tOPENED_C_BRACKET = 271,
    tCLOSED_C_BRACKET = 272,
    tRETURN = 273,
    tPRINTF = 274,
    tNUMBER = 275,
    tIDENTIFIER = 276
  };
#endif
/* Tokens.  */
#define tCOMMA 258
#define tSEMI_COLUMN 259
#define tSLASH 260
#define tSTAR 261
#define tPLUS 262
#define tMINUS 263
#define tEQUAL 264
#define tCLOSED_PARENTHESIS 265
#define tOPENED_PARENTHESIS 266
#define tVOID 267
#define tCONST 268
#define tINT 269
#define tMAIN 270
#define tOPENED_C_BRACKET 271
#define tCLOSED_C_BRACKET 272
#define tRETURN 273
#define tPRINTF 274
#define tNUMBER 275
#define tIDENTIFIER 276

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
