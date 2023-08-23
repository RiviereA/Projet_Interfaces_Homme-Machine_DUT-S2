# Projet d'Interfaces Homme-Machine (DUT - Semestre 2)

Projet consistant en la réalisation d'un jeu de type "SameGame".

## Principe du jeu

Au début d'une partie, le jeu génère aléatoirement une grille de pierres de trois couleurs différentes (rouges, vertes et bleues). 

À chaque tour de jeu, le joueur doit cliquer sur une pierre présente sur la grille. Si la pierre a au moins une voisine de la même couleur qu'elle, elle disparaîtra, de même que toutes les pierres de la même couleur qui lui sont connectées (directement ou indirectement), ce qui fera augmenter le score du joueur proportionnellement au nombre de pierres ayant été supprimées. 

Les pierres n'étant pas renouvelées au cours de la partie, la disparition intégrale d'une ligne ou d'une colonne provoquera le glissement des lignes/colonnes isolées vers le coin inférieur gauche de l'écran. La partie se termine s'il ne reste plus de pierres ou s'il n'y a plus de pierres de même couleur côte à côte au sein la grille.
