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
        primarySwatch: Colors.blue,
      ),
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
     * Container
     * vous vous rappeler qu'on peut ajouter des paramètres au constructeur. On
     * peut ajouter une couleur, une height, une width, un padding, une margin.
     * Pour ajouter un container, on avait la taille : la height (la hauteur) et
     * une width (la taille). Ce sont de type double. on retourne un container
     * pour afficher rien ne s'affiche sur l'émulateur,
     * on voit les print dans la console
     *
     * @param height hauteur définit
     * @param width largeur définit
     */
    return Container(
        height : 10,
        width : 10
    );
  }

}