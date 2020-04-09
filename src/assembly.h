#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int compteur;
int insert(char * instruction);
int getNumberLine();
void patch(int from, int to);
void writeFile(char * fileName);
typedef struct listeInstruction{
    char * instruction;
    struct listeInstruction * next;
} LISTE;
LISTE * listeInstructions=NULL;

