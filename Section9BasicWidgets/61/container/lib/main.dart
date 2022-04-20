import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        /**
         * Le thème de Widget
         */
        primarySwatch: Colors.blue,
      ),
      /**
       * home : classe appelé dans ce Widget
       */
      home: BasicPages(),
    );
  }
}

/**
 * StatelessWidget
 * quand on crée une classe qui hérite StatelessWidget pour créer un basique
 * widget. Elle a toujours une méthode override build obligatoire qui retourne
 * un widget
 */
class BasicPages extends StatelessWidget {

  /**
   * BuildContext
   * décrit le user interface représenter par ce widget. En gros, on va
   * récupérer le contexte on va créer ce widget. Ça peut être pas mal de choses
   * sa taille, sa largeur, sa hauteur, sa langue. La fonction build va devoir
   * retourner un widget.
   *
   * @param context
   * @return widget
   */
  @override
  Widget build(BuildContext context) {

    /**
     * récupération des variables dans le context du widget la taille et de la
     * plateforme
     */
    var size = MediaQuery.of(context).size;
    var platform = Theme.of(context).platform;

    /**
     * affiche les variables de la taille et la plateform du widget
     */
    print("Size : $size");
    print("Platform : $platform");

    /**
     * Scaffold
     * Ça va être le squelette de notre vue. Ça implémente le Basic Material
     * Design. Cette classe va nous permettre les Drower, des SnackBar, les
     * ButtonShit. Dans Flutter1 quand on crée un nouvel l'élément. On devait
     * mettre le mot clé new. Personne ne le met ce new est devenu optionnel.
     * Ce scaffold on ne va pas le créer d'un coup. On peut rajouter body,
     * AppBar, BottomNavigationBar, FloatingActionButton. Pour l'instant, on va
     * se concentrer sur le body.
     */
    return Scaffold(
    /**
     * Container
     * vous vous rappeler qu'on peut ajouter des paramètres au constructeur. On
     * peut ajouter une couleur, une height, une width, un padding, une margin.
     * Pour ajouter un container, on avait la taille : la height (la hauteur) et
     * une width (la taille). Ce sont de type double. Selon le contexte, je
     * récupère l'intégralité de mon écran. Vous voyez que désormais, j'ai mon
     * container qui a pris l'intégralité.
     *
     *
     */
      body : Container(
        height : size.height,
        width : size.width,
        /**
         * deprecated colorAccent replace by colorScheme.secondary
         * Theme qui nous donne notre couleur. Il est dans la classe MyApp où
         * on retrouve la méthode override
         */
        // color : Theme.of(context).colorScheme.secondary,
        /**
         * Je peux changer la classe couleur. Je peux obtenir une couleur par
         * rapport a plein de choses. Par exemple Color.fromRGBO(r, g, b,
         * opacity) qui va aller pour les trois premiers paramètres de 0 à 255
         * L'opacity permet de régler la transparence. C'est une valeur de 0 et
         * 1. Vous pouvez voir internet RGB. Plus la couleur est vers 0, elle
         * tira vers le noir. Plus elle est vers 255, elle tira vers le blanc.
         */
         // color : Color.fromRGBO(230, 12, 100, 1.0),
        /**
         * On pourrait voir une couleur qui s'appelle Colors. Là on voit des
         *  couleurs qui sont définis déjà par Flutter et par l'UI. Ça veut dire
         *  qu'on a des couleurs de base, ce sont des couleurs standards. Voilà
         *  si je lance l'émulateur, on voit rectangle de couleur.
         */
        color : Colors.teal,
        /**
         * On va rajouter des margins. On va rajouter EdgeInsets.all(50) à
         * margin. Désormais, notre élément est déplacé de 50 par rapport au
         * haut, au bas, à la droite et à la gauche.
         */
         margin : EdgeInsets.all(50),
        /**
         * On pourrait aussi avoir des paddings. Ça va être des margins à
         * l'intérieur, EdgeInsets.only(20) pour tous les côtés.
         */
         padding: EdgeInsets.only(top : 150),
      ),
    );
  }

}