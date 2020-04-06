#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "error.h"

#define MAX_SYMBOLS 128

typedef unsigned int address_t;

typedef enum Type {
    Integer,
    Void
} type_t;

typedef enum Qualifier {
    Nothing,
    Const
} qualifier_t;

typedef struct Symbol {
    char *name;
    type_t type;
    qualifier_t qualifier;
    int isInitialized;
} SYMBOL;

SYMBOL *symbols_array[MAX_SYMBOLS];

int create_symbol(const char *name, type_t type, qualifier_t qualifier);

int create_tmp_symbol();

int get_symbol_by_name(const char *name);
