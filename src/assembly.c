#include "assembly.h"
LISTE * listeInstructions=NULL;
int insert(char * instruction){
    printf("Insertion ########### %s \n",instruction);
    LISTE *aux= listeInstructions;
    LISTE *new = (LISTE *)malloc(sizeof(LISTE));
    new->instruction=strdup(instruction);
    new->next=NULL;
    compteur++;
    if(aux!=NULL)
    {
        printf("IF-----\n");
        while(aux->next!=NULL)
        {
            aux=aux->next;
        }
        aux->next=new;
    }
    else
    {
        printf("ELSE-----\n");
        listeInstructions=new;
    }
    display();
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
void display(){
    int index=0;
    LISTE *aux= listeInstructions;
    printf("DISPLAY @@@@@@@@@@@\n");
    while(aux!=NULL){
        printf("L%d : %s",++index,aux->instruction);
        aux=aux->next;
    }
}
void writeFile(char * fileName){
    int index=0;
    LISTE *aux= listeInstructions;
    int file = fopen(fileName,"w");
    while(aux!=NULL){
        fprintf(file, "L%d : %s",++index,aux->instruction);
        aux=aux->next;
    }
    fclose(fileName);
}