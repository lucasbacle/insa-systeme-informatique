#include "assembly.h"

int insert(char * instruction){
    LISTE *aux= listeInstructions;
    LISTE *new = malloc(sizeof(LISTE));
    new->instruction=instruction;
    new->next=NULL;
    compteur++;
    while(aux->next!=NULL){
        aux=aux->next;
    }
    aux->next=new;
    return compteur-1;
}
int getNumberLine(){
    return compteur;
}
void patch(int from, int to){
    int index=0;
    LISTE *aux= listeInstructions;
    while(index < from && aux != NULL){
        index++;
        aux=aux->next;
    }
    if(index == from && aux!=NULL)
        {
            char *debut=strdup(aux->instruction);
            char *add;
            sprintf(add, "%d", to);
            debut= strcat(debut,add );
            aux->instruction = debut;
        }

}
void writeFile(char * fileName){
    int index=1;
    LISTE *aux= listeInstructions;
    int file = fopen(fileName,'w');
    while(aux!=NULL){
        fprintf(file, "L%d : %s",index,aux->instruction);
        aux=aux->next;
    }
    fclose(fileName);
}