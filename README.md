# Projet système informatique
Ce dépot contient un compilateur basé sur LEX et YACC pour un langage C simplifié et l'implémentation VHDL d'un processeur 8 bits avec 4 niveaux de pipeline capable de traiter les programmes précédemment compilés.

## Partie compilateur
- Compilation du projet
```
make
```
- Exécution
```
./comp in_file out_file
```

## Partie processeur
Quelques précision :
Les flags se sont de sortie de l'ALU
On n'implemente pas la division
On implemente la multiplication à l'aide de l'operateur * car cet FPGA contient de multiplieurs cables donc il peut faire la  multiplication
Il y a un test bench VHDL a ecrire pour chaque composant
