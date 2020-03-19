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
    address_t addr;
    int isInitialized;
} SYMBOL;

SYMBOL symbols_array[MAX_SYMBOLS];
int length = 0;

SYMBOL *create_symbol(const char *name, type_t type, qualifier_t qualifier);

SYMBOL *get_symbol_by_name(const char *name);

SYMBOL *get_symbol_by_index(int index);