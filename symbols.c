#include "symbols.h"

int length = 0;

SYMBOL *create_symbol(const char *name, type_t type, qualifier_t qualifier)
{
    if (strcmp(name, "") == 0)
    {
        yyerror("Empty variable name forbidden");
        return NULL;
    }

    SYMBOL *symbol = NULL;
    if (length < MAX_SYMBOLS)
    {

        if (get_symbol_by_name(name) == -1)
        {
            symbol = malloc(sizeof(SYMBOL));
            symbol->name = strdup(name);
            symbol->type = type;
            symbol->qualifier = qualifier;
            symbol->isInitialized = 0;
            symbols_array[length]=symbol;
            length++;
        }
        printf("%s, @=%d", symbol->name, symbol->addr);
    }
    return length-1;
}

int get_symbol_by_name(const char *name)
{
    SYMBOL *s = NULL;
    int i = 0;
    int find = 0;

    while (i < length && !find)
    {
        if (strcmp(symbols_array[i]->name, name) == 0)
        {
            find = 1;
            return i;
        }
        i++;
    }
    return -1;
}