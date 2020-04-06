#include "symbols.h"

int length = 0;
int n_tmp = 0;

int create_symbol(const char *name, type_t type, qualifier_t qualifier)
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
            symbols_array[length] = symbol;
            printf("%s is at %d\n",name,length);
            length++;
        }
    }

    return length - 1;
}

int create_tmp_symbol()
{

    SYMBOL *symbol = NULL;

    if (length + n_tmp < MAX_SYMBOLS)
    {
        n_tmp++;

        symbol = malloc(sizeof(SYMBOL));
        char str[7];
        symbol->name = sprintf(str, "tmp%d", n_tmp);
        symbol->type = Integer;
        symbol->qualifier = Const;
        symbol->isInitialized = 1;
        symbols_array[MAX_SYMBOLS - n_tmp] = symbol;

        return MAX_SYMBOLS - n_tmp;
    }

    return -1;
}

int get_symbol_by_name(const char *name)
{
    SYMBOL *s = NULL;
    int i = 0;
    int find = 0;
    printf("Name = %s\n",name);

    while (i < length && !find)
    {
        if (strcmp(symbols_array[i]->name, name) == 0)
        {
            find = 1;
            printf("Indice = %d\n",i);
            return i;
        }
        i++;
    }
    return -1;
}