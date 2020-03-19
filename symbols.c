#include "symbols.h"

SYMBOL *create_symbol(const char *name, type_t type, qualifier_t qualifier) {

}

SYMBOL *get_symbol_by_name(const char *name) {
    SYMBOL *s=NULL;
    int i=0;
    int find=0;
    while(i<length&&!find)
    {
        if(strcmp(symbols_array[i].name,name)==0)
        s=symbols_array[i];
        find=1;
    }
    return s;
}

SYMBOL *get_symbol_by_index(int index) {
    if(index>=length)
        return null;
    return symbols_array[index];
}