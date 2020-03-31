int compteur;
int insert(char * instruction);
int getNumberLine();
void patch(int from, int to);
void writeFile(char * fileName);
typedef struct listeInstruction{
    char * instruction;
    LISTE * next;
} LISTE;
LISTE * listeInstructions=NULL;

