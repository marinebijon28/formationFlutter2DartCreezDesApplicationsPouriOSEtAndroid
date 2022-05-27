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

# L'héritage
L'héritage va nous permettre d'enfait d'avoir des objets qui seront légèrement différent qui auront les mêmes attributs et méthodes qu'une classe mais qui on en aura quelques une de plus. 

On va avoir une classe mère qui va avoir les valeurs de base et la classe enfant qui va hériter de sa classe mère pour avoir des attributs et des méthodes en plus.

On fait une classe TableEte on va vouloir qu'elle extends de Table. Avec un attribut parasol et sa méthode seProtéger. On va créer un constructeur TableEte. TableIkea n' a pas accès a seProtéger. TableEte hérite des attributs de la classe Table et ses méthodes, mais la classe mère n'a pas accès aux attributs de la classe fille.

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
  TableEte ete = TableEte(parasol: "Perrier", pieds : 3, hauteur : 84, largeur : 375, longueur : 375, matiere : "Plastique", extensible : true);
  ete.seProteger();
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

class TableEte extends Table {
  String parasol;
  
  TableEte({required this.parasol, required int pieds, required double hauteur, required double largeur, required double longueur, required String matiere, bool extensible = true}) : super(
  pieds : pieds, 
  hauteur : hauteur, 
  largeur : largeur, 
  longueur : longueur, 
  matiere : matiere,
  );
  
  seProteger() {
    print("On est bien mieux à l'abri du soleil");
  }
}

# Enum
C'est une sorte d'objet ou on va avoir plusieurs cas. On a besoin du mot clé enum avec plusieurs propositions dedans. on va enuméré un certain nombre de cas.

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
  TableEte ete = TableEte(typeTable : TypeDeTable.tableDeJardin, parasol: "Perrier", pieds : 3, hauteur : 84, largeur : 375, longueur : 375, matiere : "Plastique", extensible : true);
  ete.seProteger();
  ete.checkType();
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

class TableEte extends Table {
  String parasol;
  TypeDeTable typeTable;
  
  TableEte({required this.typeTable, required this.parasol, required int pieds, required double hauteur, required double largeur, required double longueur, required String matiere, bool extensible = true}) : super(
  pieds : pieds, 
  hauteur : hauteur, 
  largeur : largeur, 
  longueur : longueur, 
  matiere : matiere,
  );
  
  seProteger() {
    print("On est bien mieux à l'abri du soleil");
  }
  
  checkType() {
    print(typeTable);
  }
}

enum TypeDeTable {
  tableDeJardin,
  tableDeSalon,
  tableAManger,
  tableDePingPong
}

On va utiliser un switch pour retourner le type de table sous forme de string. Le principe des enums c'est de choisir les choix qu'on a prédéfinie.

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
  TableEte ete = TableEte(typeTable : TypeDeTable.tableDeJardin, parasol: "Perrier", pieds : 3, hauteur : 84, largeur : 375, longueur : 375, matiere : "Plastique", extensible : true);
  ete.seProteger();
  print(ete.checkType());
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

class TableEte extends Table {
  String parasol;
  TypeDeTable typeTable;
  
  TableEte({required this.typeTable, required this.parasol, required int pieds, required double hauteur, required double largeur, required double longueur, required String matiere, bool extensible = true}) : super(
  pieds : pieds, 
  hauteur : hauteur, 
  largeur : largeur, 
  longueur : longueur, 
  matiere : matiere,
  );
  
  seProteger() {
    print("On est bien mieux à l'abri du soleil");
  }
  
  String checkType() {
    switch (typeTable)
    {
      case TypeDeTable.tableDeJardin :
        return "table de jardin";
      case TypeDeTable.tableDeSalon :
        return "table de salon";
      case TypeDeTable.tableDePingPong :
        return "table de pin pong";
      case TypeDeTable.tableAManger :
        return "table a manger";
    }
  }
}

enum TypeDeTable {
  tableDeJardin,
  tableDeSalon,
  tableAManger,
  tableDePingPong
}

# Dans un projet Flutter