/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

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

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
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
     tPRINTF = 276
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




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 12 "src/source_v2.y"
{int nb; char * var;}
/* Line 1529 of yacc.c.  */
#line 93 "src/y.tab.h"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

