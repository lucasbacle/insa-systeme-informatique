#include "error.h"

int yyerror(const char *msg) {
    printf("%s", msg);
    return 0;
}