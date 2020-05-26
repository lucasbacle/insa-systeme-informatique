# Projet Système Informatique (PSI)
Ce dépôt contient le travail que nous avons mené sur le projet "Système informatique' de 4IR à l'INSA de Toulouse.

Le dossier 'compiler/' contient un compilateur pour un langage proche du C décrit dans le sujet du projet produisant un langage d'assemblage orienté mémoire.

Le dossier 'processor/' contient une implémentation VHDL d'un processeur 8 bits d'architecture RISC à 5 niveaux de pipe-line capable de traiter les programmes écrits dans le langage précédent (si trans-compilé vers un assembleur orienté registres).

## Compilateur
Pour compiler le projet : ```make```

Pour utiliser le compilateur : ```./comp example.c out.asm```

## Processeur
Il est possible de charger ce projet sur l'IDE Xilinx ISE Webpack 14.7.
