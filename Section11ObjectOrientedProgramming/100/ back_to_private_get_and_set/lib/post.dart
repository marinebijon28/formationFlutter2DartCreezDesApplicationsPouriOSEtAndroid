class Post {
  String name;
  String time;
  // String imagePath;
  /**
   * Je veux que l'image ne soit pas modifiable. C'est-à-dire je la rends privé.
   * Ce qui va se passer c'est qu'on va modifier un peu tous ça. Il va falloir
   * que j'ai un string imagePath.
   */
  // String _imagePath;
  /**
   * Là on va avoir une erreur du coup je vais lui donner une erreur par défaut.
   */
  String _imagePath = "";
  String desc;
  int like;
  int comment;

  /*Post({
    required this.name,
    required this.time,
    required this.imagePath = "",
    required this.desc,
    this.like = 0,
    this.comment = 0});*/
  /**
   * Mon constructeur devrait être différent parce que à ce moment là je
   * mettrais this._imagePath sera égal imagePath. Je ne peux pas avoir de
   * paramètre qui commence par _.
   */
  Post({required this.name, required this.time, String imagePath = "",
    required this.desc, this.like = 0, this.comment = 0}) {
    this._imagePath = imagePath;
  }

  /**
   * get
   * Je vais dans mon post. Vu qu'il est impossible d'y accéder depuis une autre
   * classe je vais avoir une variable qui va être une variable getter. Là ça va
   * me retourner _imagePath. Je peux relancer, il n'y a pas de problème. Ça
   * veut dire quoi ? _imagePath je peux pas y accéder directement à cette
   * propriété _imagePath. Je peux y accéder uniquement par cette string get
   * qui est un getter. C'est-à-dire je pourrais uniquement avoir cette valeur.
   * via un get. Je pourrais uniquement l'obtenir. Je ne pourrais pas la
   * modifier
   */
  String get imagePath {
    return _imagePath;
  }

  /**
   * set
   * On va aussi avoir une fonction set image. Elle prends un paramètre une
   * newUrl qui soit de type String. et le _imagePath soit égal a une newUrl.
   * On peut faire une set image. On peut faire une vérification. Pour ne pas la
   * setter si on a une string vide. Avant de setter une valeur.
   */
  set image(String newUrl) {
    if (newUrl != "")
      _imagePath = newUrl;
  }

  String setTime() => "Il y a $time";

  String setLikes() {
    return "$like j'aime";
  }

  String setComments() {
    if (comment > 1) {
      return "$comment commentaires";
    } else {
      return "$comment commentaire";
    }
  }
}