# Constructeurs
Quand on a crée notre table ikea vous voyez que pour faire notre table Ikea c'est super long. Il y aurait pas moyen de créer une table unique à chaque fois? On va créer un constructeur

void main() {
  // POO tout est un objet
  /* 
   * Exemple : Widget, Text, Notre post dans l'application 
   * précédente... String ou int aussi...
   */
  /*
   * Va avoir les mêmes attributs et méthodes avec des valeurs 
   * qui peuvent être différentes
   */
  // Réapplicable à l'infini
  // Une table 
  // Attributs :
  // Plateau
  // Hauteur
  // Pieds
  // Largeur
  // Longueur
  // Matière
  // Même chose pour un post, un utilisateur,
  
  Table tableIkea = Table();
  
  print(tableIkea.pieds);
  tableIkea.hauteur = 80;
  print(tableIkea.hauteur);
  tableIkea.largeur = 60;
  tableIkea.longueur = 120;
  print("Ma table est longue de ${tableIkea.longueur} cm et large de ${tableIkea.largeur} cm.");
  tableIkea.matiere = "Or";
  print(tableIkea.matiere);
}

class Table {
  // Attributs 
  int pieds = 4;
  double? hauteur;
  double? largeur;
  double? longueur;
  String matiere="bois";
  
  // Constructeurs
  
  // Methodes
}

Comment on crée un contructeur ?  On va prendre le nom de la classe, ouvrir les guillemets et fermer les parenthèses. Dans les parenthèses on pourrait avoir int pied, double hauteur, double largeur, double, longueur, String matière. Alors ce constructeur contient tous les attributs. On est pas obligée de mettre tous les attributs. Je vais les attribuer à mes attributs. Si je fais pieds = pieds. On va avoir un problème.

void main() {
  // POO tout est un objet
  /* 
   * Exemple : Widget, Text, Notre post dans l'application 
   * précédente... String ou int aussi...
   */
  /*
   * Va avoir les mêmes attributs et méthodes avec des valeurs 
   * qui peuvent être différentes
   */
  // Réapplicable à l'infini
  // Une table 
  // Attributs :
  // Plateau
  // Hauteur
  // Pieds
  // Largeur
  // Longueur
  // Matière
  // Même chose pour un post, un utilisateur,
  
  Table tableIkea = Table();
  
  print(tableIkea.pieds);
  tableIkea.hauteur = 80;
  print(tableIkea.hauteur);
  tableIkea.largeur = 60;
  tableIkea.longueur = 120;
  print("Ma table est longue de ${tableIkea.longueur} cm et large de ${tableIkea.largeur} cm.");
  tableIkea.matiere = "Or";
  print(tableIkea.matiere);
}

class Table {
  // Attributs 
  int pieds = 4;
  double? hauteur;
  double? largeur;
  double? longueur;
  String matiere="bois";
  
  // Constructeurs
  Table(int pieds, double hauteur, double largeur, double longueur, String matiere)
  {
    pieds = pieds;
  }
  // Methodes
}

Quand on veut récupérer un attribut à l'intérieur de sa classe. On va mettre this. Ça veut dire quoi ? this.pied correspond à l'attribut de la classe Table et si il n'y a pas this il correpond au paramètre passer en argument de la fonction. Du coup on va pouvoir attribuer la variable passé en paramètre à l'attribut pieds dans la classe Table. Par rapport au constructeur, j'ai besoin de mettre autant de valeur que dans le constructeur.
Automatiquement on a pu affecter toutes les valeurs. Vous voyez c'est super long. C'est la façon 1.

void main() {
  // POO tout est un objet
  /* 
   * Exemple : Widget, Text, Notre post dans l'application 
   * précédente... String ou int aussi...
   */
  /*
   * Va avoir les mêmes attributs et méthodes avec des valeurs 
   * qui peuvent être différentes
   */
  // Réapplicable à l'infini
  // Une table 
  // Attributs :
  // Plateau
  // Hauteur
  // Pieds
  // Largeur
  // Longueur
  // Matière
  // Même chose pour un post, un utilisateur,
  
  Table tableIkea = Table(4, 78, 58.9, 140, "plastique");
  
  print(tableIkea.pieds);
  print(tableIkea.hauteur);
  print("Ma table est longue de ${tableIkea.longueur} cm et large de ${tableIkea.largeur} cm.");
  print(tableIkea.matiere);
  
}

class Table {
  // Attributs 
  int pieds = 4;
  double? hauteur;
  double? largeur;
  double? longueur;
  String matiere="bois";
  
  // Constructeurs
  Table(int pieds, double hauteur, double largeur, double longueur, String matiere)
  {
    this.pieds = pieds;
    this.hauteur = hauteur;
    this.largeur = largeur;
    this.longueur = longueur;
    this.matiere  = matiere;
  }
  // Methodes
}

J'ai une deuxième façon plus rapide. si je mets this.attribut dans les paramètres de la fonction. Cela les assignent automatiquement.

void main() {
  // POO tout est un objet
  /* 
   * Exemple : Widget, Text, Notre post dans l'application 
   * précédente... String ou int aussi...
   */
  /*
   * Va avoir les mêmes attributs et méthodes avec des valeurs 
   * qui peuvent être différentes
   */
  // Réapplicable à l'infini
  // Une table 
  // Attributs :
  // Plateau
  // Hauteur
  // Pieds
  // Largeur
  // Longueur
  // Matière
  // Même chose pour un post, un utilisateur,
  
  Table tableIkea = Table(4, 78, 58.9, 140, "plastique");
  
  print(tableIkea.pieds);
  print(tableIkea.hauteur);
  print("Ma table est longue de ${tableIkea.longueur} cm et large de ${tableIkea.largeur} cm.");
  print(tableIkea.matiere);
  
}

class Table {
  // Attributs 
  int pieds = 4;
  double? hauteur;
  double? largeur;
  double? longueur;
  String matiere="bois";
  
  // Constructeurs
  Table(this.pieds, this.hauteur, this.largeur, this.longueur,this.matiere);
    
  // Methodes
}

Il y a aussi une troisième façon avec les noms de attributs. On peut mettre les paramétres dans le désordre vue qu'il y a le nom de l'attribut devant. Vous voyez qu' on a du null car on a des valeurs nullable comme hauteur, largeur, longueur.

void main() {
  // POO tout est un objet
  /* 
   * Exemple : Widget, Text, Notre post dans l'application 
   * précédente... String ou int aussi...
   */
  /*
   * Va avoir les mêmes attributs et méthodes avec des valeurs 
   * qui peuvent être différentes
   */
  // Réapplicable à l'infini
  // Une table 
  // Attributs :
  // Plateau
  // Hauteur
  // Pieds
  // Largeur
  // Longueur
  // Matière
  // Même chose pour un post, un utilisateur,
  
  Table tableIkea = Table(pieds : 1, matiere : "Savon");
  
  print(tableIkea.pieds);
  print(tableIkea.hauteur);
  print("Ma table est longue de ${tableIkea.longueur} cm et large de ${tableIkea.largeur} cm.");
  print(tableIkea.matiere);
  
}

class Table {
  // Attributs 
  int pieds;
  double? hauteur;
  double? largeur;
  double? longueur;
  String matiere;
  
  // Constructeurs
  Table({this.pieds = 4, this.hauteur, this.largeur, this.longueur = 128,this.matiere = "Bois"});
    
  // Methodes
}

Pour ne pas avoir une erreur on passe à la méthode 4. C'est une façon avec des attributs required. On ne peut pas avoir des valeurs par défaut mais un null safely.

void main() {
  // POO tout est un objet
  /* 
   * Exemple : Widget, Text, Notre post dans l'application 
   * précédente... String ou int aussi...
   */
  /*
   * Va avoir les mêmes attributs et méthodes avec des valeurs 
   * qui peuvent être différentes
   */
  // Réapplicable à l'infini
  // Une table 
  // Attributs :
  // Plateau
  // Hauteur
  // Pieds
  // Largeur
  // Longueur
  // Matière
  // Même chose pour un post, un utilisateur,
  
  Table tableIkea = Table(pieds : 1, hauteur : 32, largeur : 45, longueur : 250, matiere : "Savon");
  
  print(tableIkea.pieds);
  print(tableIkea.hauteur);
  print("Ma table est longue de ${tableIkea.longueur} cm et large de ${tableIkea.largeur} cm.");
  print(tableIkea.matiere);
  
}

class Table {
  // Attributs 
  int pieds;
  double? hauteur;
  double? largeur;
  double? longueur;
  String matiere;
  
  // Constructeurs
  Table({required this.pieds, required this.hauteur, required this.largeur, required this.longueur, required this.matiere});
    
  // Methodes
}

# Les méthodes
Les méthodes sont simplement les fonctions et pourra effectuer des actions. J'aurais donc une méthode extendTable.

void main() {
  // POO tout est un objet
  /* 
   * Exemple : Widget, Text, Notre post dans l'application 
   * précédente... String ou int aussi...
   */
  /*
   * Va avoir les mêmes attributs et méthodes avec des valeurs 
   * qui peuvent être différentes
   */
  // Réapplicable à l'infini
  // Une table 
  // Attributs :
  // Plateau
  // Hauteur
  // Pieds
  // Largeur
  // Longueur
  // Matière
  // Même chose pour un post, un utilisateur,
  
  Table tableIkea = Table(pieds : 1, hauteur : 32, largeur : 45, longueur : 250, matiere : "Savon", extensible : true);
  
  print(tableIkea.pieds);
  print(tableIkea.hauteur);
  print("Ma table est longue de ${tableIkea.longueur} cm et large de ${tableIkea.largeur} cm.");
  print(tableIkea.matiere);
  tableIkea.extendTable();
  print(tableIkea.longueur);
}

On pourrait avoir une fonction avec retour 

void main() {
  // POO tout est un objet
  /* 
   * Exemple : Widget, Text, Notre post dans l'application 
   * précédente... String ou int aussi...
   */
  /*
   * Va avoir les mêmes attributs et méthodes avec des valeurs 
   * qui peuvent être différentes
   */
  // Réapplicable à l'infini
  // Une table 
  // Attributs :
  // Plateau
  // Hauteur
  // Pieds
  // Largeur
  // Longueur
  // Matière
  // Même chose pour un post, un utilisateur,
  
  Table tableIkea = Table(pieds : 1, hauteur : 32, largeur : 45, longueur : 250, matiere : "Savon", extensible : true);
  
  print(tableIkea.pieds);
  print(tableIkea.hauteur);
  print("Ma table est longue de ${tableIkea.longueur} cm et large de ${tableIkea.largeur} cm.");
  print(tableIkea.matiere);
  tableIkea.extendTable();
  print(tableIkea.longueur);
  String aPrinter = tableIkea.caract();
  print(aPrinter);
}

class Table {
  // Attributs 
  int pieds;
  double? hauteur;
  double? largeur;
  double longueur;
  String matiere;
  bool extensible;
  
  // Constructeurs
  Table({required this.pieds, required this.hauteur, required this.largeur, required this.longueur, required this.matiere, this.extensible = false});
    
  // Methodes
  extendTable() {
    if (extensible) {
      this.longueur += 20;
   }
  }
  
  String caract() {
    return "Salut je suis la table en $matiere, je suis haute de $hauteur longue de largeur $longueur et large $largeur \n avec des pieds $pieds je suis super stable pour le petit déjeuner";
  }
}

On pourtait avoir une fonction void c'est-à-dire sans rien. Avec un int nouveau nombre. On va pouvoir changer le nombre de pieds.

void main() {
  // POO tout est un objet
  /* 
   * Exemple : Widget, Text, Notre post dans l'application 
   * précédente... String ou int aussi...
   */
  /*
   * Va avoir les mêmes attributs et méthodes avec des valeurs 
   * qui peuvent être différentes
   */
  // Réapplicable à l'infini
  // Une table 
  // Attributs :
  // Plateau
  // Hauteur
  // Pieds
  // Largeur
  // Longueur
  // Matière
  // Même chose pour un post, un utilisateur,
  
  Table tableIkea = Table(pieds : 1, hauteur : 32, largeur : 45, longueur : 250, matiere : "Savon", extensible : true);
  
  print(tableIkea.pieds);
  print(tableIkea.hauteur);
  print("Ma table est longue de ${tableIkea.longueur} cm et large de ${tableIkea.largeur} cm.");
  print(tableIkea.matiere);
  tableIkea.extendTable();
  print(tableIkea.longueur);
  tableIkea.changerPieds(12);
  String aPrinter = tableIkea.caract();
  print(aPrinter);
}

class Table {
  // Attributs 
  int pieds;
  double? hauteur;
  double? largeur;
  double longueur;
  String matiere;
  bool extensible;
  
  // Constructeurs
  Table({required this.pieds, required this.hauteur, required this.largeur, required this.longueur, required this.matiere, this.extensible = false});
    
  // Methodes
  extendTable() {
    if (extensible) {
      this.longueur += 20;
   }
  }
  
  String caract() {
    return "Salut je suis la table en $matiere, je suis haute de $hauteur longue de largeur $longueur et large $largeur \n avec des pieds $pieds je suis super stable pour le petit déjeuner";
  }
  
  changerPieds(int nouveauNombre) {
    pieds = nouveauNombre;
  }
}