/**
 * Documentation
 * Quand on cliaue sur n'importe laquelle des éléments. On va voir notre
 * constructeur aussi. Si par exemple je cliquais sur Container. On n'a tous les
 * pas besoin forcément sur la documentation. J'aime bien aller sur la
 * documentation. J'aime bien aller sur la documentation et amener à chercher.
 * On va pas le faire à tous les Widgets. Bien évidemment on va le faire pour
 * les basics mais comme ça vous saurez où chercher. Là si vous cliquez dessus
 * aue vous allez pouvoir trouver tous les paramètres et tous ce qui va pouvoir
 * être modifié.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /**
     * MaterialApp on en avait parlé dans notre premier tour d'application.
     * C'est peut-être pas forcément la peine de revenir dessus. On a notre
     * application de mon app basique.
     */
    return MaterialApp(
      /**
       * SI on veut supprimer le debug. On tappe debugShowCheckedModeBanner. Je
       * le mets sur false.
       */
      debugShowCheckedModeBanner : false,
      title: 'Flutter Demo',
      theme: ThemeData(
        /**
         * La couleur du thème du Widget
         */
        //primarySwatch: Colors.blue,
        /**
         * Si j'avais mis .red. Notre application serait rouge. On va avoir tout
         * qui va être en blanc de base.
         */
        primarySwatch: Colors.red,
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
    var size = MediaQuery
        .of(context)
        .size;
    var platform = Theme
        .of(context)
        .platform;
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
       * Avant de lancer dans la création de children dans notre vous rappelez
       * Scaffold. On avait un élément qui avait une AppBar. Ça serait bien de
       * le voir quand méme. Dans ce Scaffold on a qu'un body. Si je lui ajouté
       * une AppBar. Cela fonctionne comment ? Je vais appeler la classe AppBar.
       * Vous voyez qu'ici, ona va pouvoir voir plein de choses. On va avoir un
       * Title aui sera un Widget, un Leading. On va pouvoir ajouter des
       * Actions, Button d'action. Un double pour l'Elevation comme ce qu'on a
       * sur la Card. Un Shape, une couleur de BackgroundColor, une Couleur de
       * ForegroundColor (c'est la couleur d'avant plan), une Brightness,
       * un IconTheme, une ActionIconTheme : est- ce que c'est primaire ?
       * Est-ce au'on centre le texte ? Vous voyez on va avoir plein de choses.
       * Qu'est-ce qu'on pourrait ajouter ? On pouvait ajouter title, on pouvait
       * ajouter un Leading. On avoir plusieurs actions. Une liste de Widgets.
       *
       */
      appBar: AppBar(
        /**
         * Ce que je vais vouloir qu'on fasse ici ? On pourrait rajouter, ce
         * qu'on est Widget Text. Mon app basique. Maintenant si je relance. on
         * a mon app basique qui est arrivé. On va avoir notre texte et une
         * couleur qui dépend de la primarySwatch.
         */
        title: Text("Mon app basic"),
        /**
         * Ça pourrait une Icon. Icons.favorite, on petit coeur étant donné
         * sur le thème rouge.
         */
        leading: Icon(
          Icons.favorite,
        ),
        /**
         * On pourrait ajouter plusieurs Widgets. On pourrait ajouter ici
         * Icons.border_Color pour que l'on puisse entrer un texte.
         */
        actions: [
          Icon(
              Icons.handyman
          ),
          Icon(
              Icons.border_color
          ),
        ],
        /**
         * On pourrait avoir un centerTitle : true. Notre texte ce centre. C'est
         * pas beau ça. Voilà pour l'AppBar, vous voyez qu'il n'y a pas mal de
         * chose.
         */
        centerTitle: true,
        /**
         * Vous vous rappelez une elevation à 0, vous voyez qu'on a notre petit
         * ombre. Si je la mettais sur 8. Elle sera un peu plus grosse. Sur 15
         * elle sera encore plus grosse. J'aime bien 7.5 c'est un double. Voilà
         * ce aue cela nous donne.
         */
        elevation: 7.5,
      ),
      /**
       * Container
       * vous vous rappeler qu'on peut ajouter des paramètres au constructeur.
       * On peut ajouter une couleur, une height, une width, un padding, une
       * margin. Pour ajouter un container, on avait la taille : la height
       * (la hauteur) et  une width (la taille). Ce sont de type double. Selon
       * le contexte, je récupère l'intégralité de mon écran. Vous voyez que
       * désormais, j'ai mon container qui a pris l'intégralité.
       */
      body: Container(
          height: size.height,
          width: size.width,
          /**
           * Colors
           * deprecated colorAccent replace by colorScheme.secondary
           * Theme qui nous donne notre couleur. Il est dans la classe MyApp
           * où on retrouve la méthode override
           */
          // color : Theme.of(context).colorScheme.secondary,
          /**
           * Je peux changer la classe couleur. Je peux obtenir une couleur
           * par rapport a plein de choses. Par exemple Color.fromRGBO(r, g,
           * b, opacity) qui va aller pour les trois premiers paramètres de 0
           * à 255. L'opacity permet de régler la transparence. C'est une
           * valeur de 0 et 1. Vous pouvez voir internet RGB. Plus la couleur
           * est vers 0, elle tira vers le noir. Plus elle est vers 255, elle
           * tira vers le blanc.
           */
          // color : Color.fromRGBO(230, 12, 100, 1.0),
          /**
           * On pourrait voir une couleur qui s'appelle Colors. Là on voit des
           *  couleurs qui sont définis déjà par Flutter et par l'UI. Ça veut
           *  dire qu'on a des couleurs de base, ce sont des couleurs
           *  standards. Voilàsi je lance l'émulateur, on voit rectangle de
           *  couleur.
           */
          color: Colors.white,
          /**
           * Margin
           * On va rajouter des margins. On va rajouter EdgeInsets.all(50) à
           * margin. Désormais, notre élément est déplacé de 50 par rapport au
           * haut, au bas, à la droite et à la gauche.
           */
          //margin: EdgeInsets.all(10),
          /**
           * Padding
           * On pourrait aussi avoir des paddings. Ça va être des margins à
           * l'intérieur, EdgeInsets.only(top : 20) pour tous les côtés.
           */
          //padding: EdgeInsets.only(top: 150),
          /**
           * Child
           * On va vouloir voir le contructeur sur la documentation de
           * Flutter. En paramètre obligatoire on aura une String data. Donc
           * le texte qu'on va vouloir. On va mettre le style, l'alignement et
           * éventuellement la direction et la locale. C'est-ce qui est la
           * plus important. Je vous ait dit que chaque Widget avait un child.
           * C'est-à-dire qu'un Widget va pouvoir s'imbriquer à l'intérieur
           * des poupées russes et on va pouvoir en ajouter sauf certains cas
           * où onaurait des childrens et pas des childs. On va pouvoir en
           * imbriquer comme cela.
           * Je pourrais juste ici la fonction simpleText. On peut réutiliser
           * notre Text. Désormais, si je lance. On peut voir qu'on peut
           * réutiliser notre texte. C'est pas génial, donc ça c'est avant de
           * le voir le text.Rich. Comment refactoriser notre code qui soit
           * réutilisable à l'infini. Donc vous pourrez avoir des fonctions
           * des classes spéciales où on aura juste à ajouter des paramètres
           * et on aura nos réglages qui seront prédéfinis. Si je là j'avais
           * voulu qui ne sont par exemple titleText. C'est-à-direune fonction
           * pour que notre titre soit le même font, toujours le même height.
           * Pour qu'on n'est pas réinventer pas réinventer la roue à chaque
           * fois. On a juste à rentrer le texte que l'on veut montrer et ça
           * fonctionne. Voilà comment on peut refactoriser le code.
           */
          //child : simpleText("Salut les codeurs"),
          /**
           * Center
           * Widget qui centre un autre widget tout simpement. Ici je vais
           * vouloir mon text child.
           */
          child: Center (
            /**
             * Il aura un child demo qui sera un spanDemo. Vous vous voyez que
             * notre center est centré. Il est centré un peu bas, il est centré
             * par rapportau padding. Si on enlève padding. Si on enlève le
             * padding. Il est vraiment exactement centrer. Ce center pourrait
             * nous à nos éléments arrivés toujours à gauche. Il peut vous
             * servir dans un container pour avoir un élément centré. Par
             * exemple à la place de notre spanDemo.
             */
            /*
              child : spanDemo(),
            /**
             * On peut mettre un container une width de 80 et une height 80 et
             * une color pinkAccent. Si je relance on a un carré de 80 sur 80.
             * Un carré rose qui est parfaitement centré au sein de notre
             * application
             */
                child: Container(
                width: 80,
                height: 80,
                color: Colors.pinkAccent,
            ),
         )*/
            /**
             * On va passer aux images. Qu'est-ce qu'on pourrait avoir ? On
             * pourrait avoir cette icône à l'intérieur. Ici au lieu de montrer
             * le Container. Je vais dans Widget catalogue dans mes basics une
             * Icon. C'est un Matériel Design. Icon elle est déjà présente dans
             * Matériel Design. On va avoir dans les icônes : un nom, une
             * couleur, une taille et un semanticLabel. C'est par rapport à
             * l'accessibilité, au personne qui sont malvoyante. On a juste à
             * taper Icon on ouvre ou on ferme les parenthèses. Ce qui faut
             * savoir c'est-ce que les icônes, on va leur choisir principalement
             * une taille, une couleur et bien évidemment une icône. C'est-ce
             * qu'on va voit ici. Ces icônes on va pouvoir les ajouter des
             * IconButton, des FloatingActionButton et dans plein d'endroits.
             * L'IconButton nous servira à avoir une icône qui sera cliquable.
             */
            /* child: Icon(
              /**
               * Icons
               * Il va falloir mettre juste Icons., on a voir
               * une liste tous les icônes. Je vais choisir Icons.house. Si je
               * veux sauvegarde et que je montre. Ici on a une icône noir. De
               * base, elle sera noir.
               */
              Icons.house,
              /**
               * size
               * Elle avait une size ce sera un double. On pourrait vouloir
               * qu'elle fasse un dixième de la largeur : size.width, les médias
               * queries of context. Donc size.width / 10. Si je l'avais / 3.
               * On aura quelque chose comme ça. On va mettre 5 sur notre icône.
               */
              size : size.width / 5,
              /**
               * Colors.yellow que ce soit bien moche. Ça c'est le principal.
               */
              color : Colors.yellow,
              /**
               * On pourrait avoir semanticLabel qui sera. Ceci est une maison
               * et ça sera pour l'accessibilité. Ça honnêtement on va peu s'en
               * servir.
               */
              semanticLabel: "Ceci est une maison",
            */
            /**
             * Désormais qund je vais vouloir l'ajouter ici. Je vais prendre
             * fromAsset par rapport à cette valeur size et ça fonctionne de la
             * même façon.
             */
            //child : fromNetwork(size)
            //  child : fromAsset(size)
            /**
             * La card qu'est-ce aue ça peut-être Card ? Si je lance jusque
             * comme ça. On verra absolument rien.
             */
              child : Card(
                /**
                 * Un élément un petit peu comme un container. D'ailleurs, je vais
                 * mettre un container à l'intérieur.
                 */
                /* child : Container(
                /**
                 * Vous allez voir, disons une height de 150 et une width de 300
                 */
                height : 150,
                width : 300,
                /**
                 * Si je lance, vous voyez jusqu'ici on a un élément qui aura
                 * toujour besoin d'un child sinon il sera transparent qui sera
                 * légèrement surélever pour faire Colors.grey. Vous voyez ici
                 * légèrement une petite ombre. On peut la choisir ce que l'on
                 * appelle dans ma card élévation.
                 */
              ),
              */
                /**
                 * Si on mettait mon simpleText. Je suis dans une card les amis et
                 * vous voyez que notre card. Elle est belle et bien là.
                 */
                /*
            child: simpleText("Je suis dans une card les amis"),
            /**
             * Pourquoi on ne voit pas ? Parce que blanc sur blanc. Si je lance,
             * je suis dans une card les amis. Donc en faite c'est un élément
             * qui va être peut surrélever qui va nous donné un petit effet
             * avec les bords arrondis sauf si évidemment on a un élément à
             * l'intérieur qui va arriver jusqu'au coin. S'il y arrive jusqu'au
             * coin.
             */
            color: Colors.teal
            */
                /**
                 * Au lieu d'avoir un simpleText, mon image fromNetwork. Vous voyez
                 * que désormais on n'a plus le bord arrondis parce aue l'image
                 * prends l'intégralité de la place. J'aurais pu avoir ici une
                 * margin EdgeInsets.all(10). La margin nou servira qu'a écarté. On
                 * n'a pas de padding pour qu'on est nos bords arrondis.
                 */
                //child : fromNetwork(size)
                /**
                 * Padding
                 * Vous avez remarqué que notre card n'avez pas de padding.
                 * Alors comment on pourrez faire pour ajouter un widget qui a
                 * un padding ? Je ne peux pas pas utiliser une le fromNetwork
                 * aussi si je mets une virgule. Je peux rajouter qu'un seul
                 * child, un seul enfant. Alors comment on pourrait faire
                 * Matthieu ?
                 */
                child: Padding(
                  /**
                   * Vous avez remarqué que si je mets ce padding. Je ne peux
                   * pas utiliser
                   */
                  padding: EdgeInsets.all(3),
                  /**
                   * Notre padding pour pourrait avoir un child. Ce child on va
                   * lui choisir le fameux fromNetworket vais le coller.
                   * Maintenant si je lance. Vous voyez que désormais, on a
                   * notre image. On a plus le mettre uniquement sur 3. On a aussi
                   * quelque chose d'aussi simpa. Voilà comment utiliser le Widget
                   * Padding et un child, un enfant et ça va permettre un Padding a
                   * un élément qui en a pas.
                   */
                  //child: fromNetwork(size),
                  /**
                   * Alors, vous avez remarqué on imbriquait un child à
                   * l'intérieur d'un notre child, mais il va y avoir des
                   * moments où on va devoir imbriquer plusieurs éléments. Dans
                   * cette card par exemple, si on voulait une image, mais aussi
                   * un texte. Comment on ferait Matthieu. On va retourner sur
                   * notre card et on a un padding. On avait un child
                   * fromNetwork. Ça on va supprimer et je vais vouloir ajouter
                   * un child avec la fois un élément en haut et en bas. Donc
                   * je vais vouloir dans une forme Column. Ce Widget va avoir
                   * plusieurs éléments. Je vais revenir ici, je vais aller
                   * dans mes basics Je vais choisir la colonne. C'est layout
                   * pour une liste de Widget. On va avoir notre constructeur
                   * ici. On va voir un axe d'alignement le MainAxisAlignement.
                   * On va voir un style une MainAxisStyle, une
                   * CrossAxisAligmement,une TextDirection, une
                   * VerticalDirection et on va avoir des Widgets, des childrens
                   * une liste. Vous vous rappelez des basics. Alors, ceci on
                   * va faire ? On va commencer par ajouter des childrens. On a
                   * array vide de children. Comment on pourrait faire.
                   */
                  /*  child: Column(
                    /**
                     * Vous voyez qu'on a notre card qui a prit toute la
                     * place parce qu'on avait un mainAxisSize qui était
                     * MainAxisSize qui était par défaut .max. Si je faisais .min.
                     * Ça nous donnerait quoi ? Ça nous donnerait notre colonne
                     * demande la taille minimale de tout notre UI. Donc on peut
                     * choisir min ou max. On va avoir, un mainAxisAlignement. On
                     * le verra un peu plus tard. Si j'avais mis
                     * MainAxisSize. Vous voyez qu'on prends de plus place.
                     */
                    mainAxisSize: MainAxisSize.max,
                    /**
                     * Là je vais pouvoir utiliser mainAxisAlignement qui
                     * MainAxisAlignement. Je vais pouvoir choisir spaceEvenly.
                     * Ça veut dire quoi ? Les éléments mes childrens vont
                     * s'espacer de la même façon.
                     * Je vais pouvoir mettre spaceBetween. Ça serait le premier
                     * élément sera totalement haut, le dernier élément
                     * totalement bas et les autres vont s'aligner en relation et
                     * auront le même espacement. C'est juste le haut et le bas
                     * seront collés.
                     * MainAxisAlignement.end, on peut mettre spaceAround qui va
                     * s'espacer un peu comme le spaceEvenly. Voilà comment elle
                     * fonctionne une colonne.
                     */
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    /**
                     * On pourrait avoir le crossAxisAlignement.start si je veux
                     * que tous les éléments partent du départ.
                     * CrossAxisAlignement.end si je veux que tous à la fin.
                     * Grâce à ses modifyer, grace à ses paramètres, on va pouvoir
                     * faire notre colonne comme on va avoir envie.
                     */
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    /**
                     * Alors, on va se faire un petit peu de place. Avant de
                     * commencer notre ligne. Là ce que je vais vouloir c'est
                     * déjà un center. Pour qu'on est tout de centré. Ça sera
                     * plus jolie.
                     */
                    crossAxisAlignment: CrossAxisAlignment.center,
                    /**
                     * Ce que je vais vouloir. C'est qu'on rajoute plusieurs
                     * éléments. Donc vous voyez que la j'ai ajouté une
                     * liste plusieurs Widgets. On va avoir une image
                     * fromNetwork et un spanDemo. Je pourrais lui rajouter.
                     */
                    children: [
                      /**
                       * Un Text tout simple je n'oublit pas de le mettre entre
                       * guillemets. "test de la colonne" je rajoute bien une
                       * virgule parce qu'on est dans une liste. Les éléments
                       * sont classés et on a une liste. Maintenant vous voyez
                       * qu'on a test de la colonne.
                       */
                      Text("test de la colonne"),
                      /**
                       * On pourrait déjà ajouter fromNetwork. Si je l'ajoute
                       * juste comme ça. On avait le TextSpan. On l'aurait
                       * nommé comment ? On avais le TextSpan. On l'avait nommé
                       * le SpanDemo. Donc vous voyez que désormais on a notre
                       * image et ensuite on a notre style.
                       */
                      fromNetwork(size),
                      spanDemo(),
                    ],
                  ),*/
                  /**
                   * Ce que je vais faire ici c'est à l'intérieur de ces
                   * childrens. Je pourrais ajouter ce Row n'importe où.
                   * Remplacer le Column par Row. Si je le fais. Ça donnerait
                   * quoi. Je vais changer cette classe par Row. Si je relance,
                   * vous voyez que désormais on a nos éléments en tant que
                   * ligne. Vous voyez que c'est write overflow. Ce qui veut
                   * dire qu'on dépasse : on le verra un poil plus tard. Ce que
                   * Ce que je vais faire. C'est revenir en arrière. Je vais
                   * vous montrer un peu plus tard dans d'autres vidéos. Comment
                   * on peut faire quand ça dépasse.
                   */
                  /*child: Row(
                    /**
                     * Vous voyez qu'on a notre card qui a prit toute la
                     * place parce qu'on avait un mainAxisSize qui était
                     * MainAxisSize qui était par défaut .max. Si je faisais .min.
                     * Ça nous donnerait quoi ? Ça nous donnerait notre colonne
                     * demande la taille minimale de tout notre UI. Donc on peut
                     * choisir min ou max. On va avoir, un mainAxisAlignement. On
                     * le verra un peu plus tard. Si j'avais mis
                     * MainAxisSize. Vous voyez qu'on prends de plus place.
                     */
                    mainAxisSize: MainAxisSize.max,
                    /**
                     * Là je vais pouvoir utiliser mainAxisAlignement qui
                     * MainAxisAlignement. Je vais pouvoir choisir spaceEvenly.
                     * Ça veut dire quoi ? Les éléments mes childrens vont
                     * s'espacer de la même façon.
                     * Je vais pouvoir mettre spaceBetween. Ça serait le premier
                     * élément sera totalement haut, le dernier élément
                     * totalement bas et les autres vont s'aligner en relation et
                     * auront le même espacement. C'est juste le haut et le bas
                     * seront collés.
                     * MainAxisAlignement.end, on peut mettre spaceAround qui va
                     * s'espacer un peu comme le spaceEvenly. Voilà comment elle
                     * fonctionne une colonne.
                     */
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    /**
                     * On pourrait avoir le crossAxisAlignement.start si je veux
                     * que tous les éléments partent du départ.
                     * CrossAxisAlignement.end si je veux que tous à la fin.
                     * Grâce à ses modifyer, grace à ses paramètres, on va pouvoir
                     * faire notre colonne comme on va avoir envie.
                     */
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    /**
                     * Alors, on va se faire un petit peu de place. Avant de
                     * commencer notre ligne. Là ce que je vais vouloir c'est
                     * déjà un center. Pour qu'on est tout de centré. Ça sera
                     * plus jolie.
                     */
                    crossAxisAlignment: CrossAxisAlignment.center,
                    /**
                     * Ce que je vais vouloir. C'est qu'on rajoute plusieurs
                     * éléments. Donc vous voyez que la j'ai ajouté une
                     * liste plusieurs Widgets. On va avoir une image
                     * fromNetwork et un spanDemo. Je pourrais lui rajouter.
                     */
                    children: [
                      /**
                       * Un Text tout simple je n'oublit pas de le mettre entre
                       * guillemets. "test de la colonne" je rajoute bien une
                       * virgule parce qu'on est dans une liste. Les éléments
                       * sont classés et on a une liste. Maintenant vous voyez
                       * qu'on a test de la colonne.
                       */
                      Text("test de la colonne"),
                      /**
                       * On pourrait déjà ajouter fromNetwork. Si je l'ajoute
                       * juste comme ça. On avait le TextSpan. On l'aurait
                       * nommé comment ? On avais le TextSpan. On l'avait nommé
                       * le SpanDemo. Donc vous voyez que désormais on a notre
                       * image et ensuite on a notre style.
                       */
                      fromNetwork(size),
                      spanDemo(),
                    ],
                  ),*/
                  child: Column(
                    /**
                     * Vous voyez qu'on a notre card qui a prit toute la
                     * place parce qu'on avait un mainAxisSize qui était
                     * MainAxisSize qui était par défaut .max. Si je faisais .min.
                     * Ça nous donnerait quoi ? Ça nous donnerait notre colonne
                     * demande la taille minimale de tout notre UI. Donc on peut
                     * choisir min ou max. On va avoir, un mainAxisAlignement. On
                     * le verra un peu plus tard. Si j'avais mis
                     * MainAxisSize. Vous voyez qu'on prends de plus place.
                     */
                    mainAxisSize: MainAxisSize.max,
                    /**
                     * Là je vais pouvoir utiliser mainAxisAlignement qui
                     * MainAxisAlignement. Je vais pouvoir choisir spaceEvenly.
                     * Ça veut dire quoi ? Les éléments mes childrens vont
                     * s'espacer de la même façon.
                     * Je vais pouvoir mettre spaceBetween. Ça serait le premier
                     * élément sera totalement haut, le dernier élément
                     * totalement bas et les autres vont s'aligner en relation et
                     * auront le même espacement. C'est juste le haut et le bas
                     * seront collés.
                     * MainAxisAlignement.end, on peut mettre spaceAround qui va
                     * s'espacer un peu comme le spaceEvenly. Voilà comment elle
                     * fonctionne une colonne.
                     */
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    /**
                     * On pourrait avoir le crossAxisAlignement.start si je veux
                     * que tous les éléments partent du départ.
                     * CrossAxisAlignement.end si je veux que tous à la fin.
                     * Grâce à ses modifyer, grace à ses paramètres, on va pouvoir
                     * faire notre colonne comme on va avoir envie.
                     */
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    /**
                     * Alors, on va se faire un petit peu de place. Avant de
                     * commencer notre ligne. Là ce que je vais vouloir c'est
                     * déjà un center. Pour qu'on est tout de centré. Ça sera
                     * plus jolie.
                     */
                    crossAxisAlignment: CrossAxisAlignment.center,
                    /**
                     * Ce que je vais vouloir. C'est qu'on rajoute plusieurs
                     * éléments. Donc vous voyez que la j'ai ajouté une
                     * liste plusieurs Widgets. On va avoir une image
                     * fromNetwork et un spanDemo. Je pourrais lui rajouter.
                     */
                    children: [
                      /**
                       * Un Text tout simple je n'oublit pas de le mettre entre
                       * guillemets. "test de la colonne" je rajoute bien une
                       * virgule parce qu'on est dans une liste. Les éléments
                       * sont classés et on a une liste. Maintenant vous voyez
                       * qu'on a test de la colonne.
                       */
                      Text("test de la colonne"),
                      /**
                       * Stack
                       * Allez maintenant passons à la stack. Tout simplement
                       * qu'est-ce qu'est une stack ? C'est la colonne des
                       * éléments les uns sur les autres. Les éléments les uns
                       * sur les autres. Row les éléments alignés de gauche à
                       * droite sur une ligne. Stack ça va être les uns sur les
                       * autres. Donc comment ça pourrait fonctionner au lieu
                       * après mon test de la colonne. On pourrait avoir une
                       * stack. Cette stack qu'est-ce qu'elle va avoir des
                       * childrens, un overflow, un clipBehavior, un
                       * textDirections, un alignement. Ce que je pourrais ici.
                       * Je pourrais avoir une stack.
                       */
                      Stack(
                        /**
                         * Je vais vouloir un children.
                         */
                        children: [
                          /**
                           * Je vais vouloir fromAsset. La height, je vais
                           * vouloir une height de 200 et une width qui soit
                           * size.width. On a désormais notre image qui est
                           * comme ceci. DOnc on voit notre image
                           */
                          fromAsset(height : 200, width : size.width),
                          Padding(
                            /**
                             * Tout simplement ici je mets un padding de
                             * EdgeInsets.only top 40. Mon padding je vais tous
                             * mettre à la ligne.
                             * On aurait pas été bien centré parce que faudrait
                             * que je fasse le radius moins ceci. Pour avoir
                             * l'espacement et être bien centré.
                             */
                            padding: EdgeInsets.only(
                                //top : 160
                                top : 150
                            ),
                            /**
                             * Ensuite après ce padding, on va avoir un child
                             * profilePicture. Ça donnerait quoi ? Ça donnerait
                             * pas grand chose. Pourquoi ? Ici il va se basé sur
                             * la height totale. Je ne vais pas me baser là où
                             * il est actuellement. Pas besoin de voir par
                             * rapport au radius.
                             */
                            //child: profilePicture(),
                            /**
                             * Je pourrais faire profile picture de 50. Il me
                             * dit qu'est-ce que sait Matthieu ce truc là.
                             */
                            child: profilePicture(radius :50),
                          ),
                          /**
                           * On est bien dans ma stack. on avait notre image en
                           * asset et ici je peux pourrais rajouter ma profile
                           * picture. Si je relance, vous voyez que désormais on
                           * on a les images qu'ils sont mise les unes sur les
                           * autres. Dans la liste des childrens plus elle sera
                           * en haut. Plus elle sera au fond de notre écran.
                           */
                          //profilePicture()
                          /**
                           * Je pourrais ici après ce padding avoir un Text. Un
                           * autre élément et pourquoi il y a une erreur parce
                           * que j'ai mis un ; à la place d'une ,. Là on a un
                           * autre élément qui est centré topCenter. Donc voilà
                           * comment on peut faire un élément facebook. Pour
                           * faire un élément de type cover et compagnie sur
                           * facebook sur instagram. Voilà comment on pourrait
                           * faire avec une stack
                           */
                          Text("Un autre élément"),
                        ],
                        /**
                         * Pour la stack qu'est-ce qu'on pourrait faire ? Un
                         * alignenment.center. Tous les éléments seront centré
                         * au milieu.
                         * Si je fais bottomCenter. On aurait tous les éléments
                         * bottom en bas.
                         * On pourrait avoir bottomRight, bottomLeft. Je vais
                         * vouloir bottomCenter. Vous vous rappelez sur facebook
                         * comme une image qui dépasse un petit peu. Comment on
                         * pourrait faire ça Matthieu?
                         */
                        //alignment: Alignment.bottomCenter,
                        /**
                         * Ce que je pourrais bottomCenter, mais topCenter. Là
                         * tu vas me dire Matthieu c'est pas du tout ce que l'on
                         * veut. Donc là je me suis basé sur le top et la vous
                         * voyez qu'il y a les 40 qui ont été mis. Si je vais
                         * 160. Vous voyez que désormais on a notre padding avec
                         * notre image.
                         */
                        alignment: Alignment.topCenter,
                      ),
                      Container(
                        /**
                         * Ici un container qui aurait une Colors.teal
                         */
                        color: Colors.teal,
                        /**
                         * Ce que je pourrais lui rajouter à ce container un
                         * padding qui soit EdgeInsets.all(5). C'est beau, non
                         * ça commence à être pas mal.
                         */
                        padding: EdgeInsets.all(5),
                        /**
                         * Là ce que je vais faire. C'est rajouté une Row à
                         * l'intérieur de la colonne. Je vais l'ajouter en
                         * tant que children, Je vais pas le mettre avant le
                         * texte, mais disons après le texte.
                         * Ce child est à l'intérieur la Row. Si je relance,
                         * voilà ce que ça nous donnerait.
                         */
                        child: Row(
                          /**
                           * Donc ce texte sera rectangle autour de mon texte,
                           * mais si dans ma row je faisais mainAxisAlignement
                           * qui sera MainAxisAlignement.spaceAround. Tout
                           * décaler. Je pourrais spaceBetween, ça serait pas
                           * mal. Ça serait bien. Voilà comment on pourrait
                           * faire ? Comment ajouter une Row ? Ça vous va.
                           * Alors pour cette Row, j'aurais besoin de deux
                           * autres éléments. Ces deux autres éléments. Je
                           * vais vouloir le Widget expanded et je vais
                           * vouloir un Widget qui sera le circle Avatar.
                           */
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          /**
                           * Un mainAxisSize, si vous regardez que je fais un
                           * MainAxisSize.max. Qu'est-ce qui se passe ?
                           * Désormais elle prend en intégralité de notre
                           * écran parce qu'on lui dis attention cette Row
                           * s'élargisse au maximum comme on avait fais pour
                           * la colonne. Du coup voilà on est pas mal.
                           */
                          mainAxisSize: MainAxisSize.max,
                          /**
                           * Là je vais avoir la même chose. je vais avoir des
                           * childrens.
                           */
                          children: [
                            /**
                             * Du coup dans ma Row, je peux remettre ma profile
                             * picture. Elle revient.
                             */
                            //profilePicture(),
                            /**
                             * Je vais avoir une erreur parce que  si je fais
                             * commande S. Il va me dire ça ne fonctionne pas
                             * parce qu'il a son radius de base. Ce radius de
                             * base est dans ma row. Ici du coup radius on va le
                             * mettre à 40. Voilà donc on a pu rajouter des
                             * paramètres. Ça vous va vous voyez comment
                             * facebook la petite magie qu'il y a. on a vu
                             * comment faire une stack. Avoir les éléments l'un
                             * au-dessus des autres.
                             */
                            profilePicture(radius: 40),
                            /**
                             * Ensuite, comme children qu'est-ce qu'on pourrait
                             * avoir ? Le fromAsset vous vous rappelez on a une
                             * size. Si je fais un size / 10. On a désormais une
                             * image aui est toute petite. On pourrait le mettre
                             * à 7. On ne voit pas forcément la différence. Par
                             * 3, on ne voit un petit mieux. Voilà ce ça nous
                             * donne.
                             */
                            //fromAsset(size),
                            /**
                             * J'enregistre, mais on a une erreur. On a une
                             * erreur ici. Notre fromAsset, je vais avoir besoin
                             * d'une height : qui soit 80, width 80 ici. Si je
                             * lance, on a une image carrée. Ensuite qu'est-ce
                             * que je pourrais rajouter un texte. Vous savez
                             * quoi une color. Non, on ne pourrait pas ajouter
                             * de color, mais ce aue je pourrais.
                             */
                            //fromAsset(height : 80, width : 80),
                            /**
                             * On a vue Columns et les Rows. Ce que je vais
                             * vouloir, c'est un élément qui est assez utile
                             * quand on va avoir des Rows. Par exemple ou des
                             * Columns, avec deux éléments, mais que le
                             * MainAxisAlignment ne nous servira pas forcément.
                             * On pourra avoir le design qu'on veut. Moi ce que
                             * j'aimerais c'est prendre toute la place qui reste
                             * et ce centre. Alors comment on pourrait faire
                             * Matthieu ? Tout simplement il existe un Widget
                             * qui s'appelle Expanded et qui aura juste un child
                             * et un flew en aura besoin. Ce child si je mets
                             * uniquement simpleText. Vous voyez que désormais
                             * pourquoi Matthieu ton texte est il au milieu
                             * comme ceci ? Tout simplement parce que l'Expanded
                             * prends la place qu'il reste. Donc il va s'étendre
                             * sur la place qu'il reste et étend donnait que je
                             * lui est mis un TextAlign center. Il est centré.
                             * Le Expanded il va être super important parce
                             * qu'on va devoir étendre les Widgets à plusieurs
                             * moments de notre applications. Donc voilà pour
                             * cette vidéo. Voilà pour l'expanded c'est assez
                             * rapide, mais c'est très utile et rapide.
                             */
                            Expanded(
                              /**
                               * Dans ma row je pourrais ajouter quoi ? Un Text,
                               * vous savez quoi on pourrait ajouter le
                               * simpleText. Comme ça on pourrait Matthieu
                               * Codabee. Vous voyez que là ça dépasse.
                               */
                              child : simpleText("Matthieu Codabee"),
                            )

                          ],
                        ),
                      ),
                      /**
                       * On pourrait déjà ajouter fromNetwork. Si je l'ajoute
                       * juste comme ça. On avait le TextSpan. On l'aurait
                       * nommé comment ? On avais le TextSpan. On l'avait nommé
                       * le SpanDemo. Donc vous voyez que désormais on a notre
                       * image et ensuite on a notre style.
                       */
                      fromNetwork(size),
                      spanDemo(),
                    ],
                  ),
                ),
                /**
                 * Je vais enlever cette Colors.teal pas très jolie. On a
                 * notre card avec à l'intérieur notre avec à l'intérieur de
                 * notre padding. Ça nous donne des petits rebords arrondis.
                 * Un petit effet sympathique tout simplement parce qu'on a
                 * une petite bordure tout le long.
                 */
                //color : Colors.teal
                /**
                 * Une élévation imaginez je la prends a dix. Vous voyez
                 * désormais on a une petite ombre, une petite shadow. On
                 * pourrait mettre 7.5. Vous le voyez ce petit élément.
                 */
                elevation: 7.5,
                /**
                 * Au lieu d'avoir un simpleText, mon image fromNetwork. Vous voyez
                 * que désormais on n'a plus le bord arrondis parce aue l'image
                 * prends l'intégralité de la place. J'aurais pu avoir ici une
                 * margin EdgeInsets.all(10). La margin nous servira qu'a
                 * écarté. On n'a pas de padding pour qu'on est nos bords
                 * arrondis.
                 */
                margin: EdgeInsets.all(10),
              )
          )
      ),
    );
  }

  /**
   * Si je voulais ajouté en fond notre circleAvatar. Alors, tout simplement
   * ceci. Je vais le copier. On pourrait avoir ceci. Un circleAvatar soit un
   * profilPicture et aui va nous renvoyer ici un circleAvatar. J'oublit pas le
   * ;. Maintenant on a plus du tout notre image ici. Je l'avais appelé mon
   * circleAvatar mon ProfilePicture.
   */
 //CircleAvatar profilePicture() {
  /**
   * Tout simplement dans mon profile picture double radius. Ici du coup ça
   * sera radius en paramètre.
   */
  CircleAvatar profilePicture({double? radius}) {
    return /**
            * CircleAvatar
            * Je voulais vous montrer un autre élément. Un
            * autre élément qui s'appelle le circleAvatar.
            * C'est quoi un circleAvatar ? Ça va nous permettre
            * d'avoir des images arrondies ou des Widgets. Si
            * je voulais avoir à la place de fromAsset. Je vais
            * le commentaire CircleAvatar, si je lance comme
            * ça, on va avoir donnée simplement un rond rouge.
            * Alors, ce CircleAvatar qu'est-ce qu'il va avoir.
            * Il va avoir un widget enfant, une color qui sera
            * la couleur background. Vous voyez qu'ici on va
            * avoir des images background. On va avoir un
            * radius, un min radius et un max radius. Ici qu'on
            * a l'image provider. Ça fonctionne différemment
            * d'une image.
            */
      CircleAvatar(
        /**
         * radius
         * Alors, ici je vais vouloir déjà un radius et on
         * va le mettre à 50. Ça va nous donnerune image.
         * Vous savez quoi on va le mettre à 40. Ça sera
         * mieux. Ça va nous donner un radius. C'est-à-
         * dire un arrondis. Quand on met 40. On va
         * arriver à 80. Chaque arrondis sera de 40. On
         * sera à 80 en hauteur et 80 en largeur.
         */
        //radius: 40,
        /**
         * Si j'avais mis une image. Si j'avais mis une image en radius 50.
         */
        //radius: 50,
        radius: radius,
        /**
         * backgroundColor
         * Si je tape backgroundColor qui va prendre
         * Colors.blue. Désormais notre color est blue. On
         * va avoir couleur de background qui est la
         * couleur d'arrière plan.
         */
        backgroundColor: Colors.blue,
        /**
         * Image Provider
         * Foreground Image est ça va fonctionner
         * comment ? Est-ce que je pourrais qjouter le
         * fromAsset, 80, 80. Là vous voyez qu'on a une
         * erreur. Pourquoi ? Parce que l'argument Image
         * ne peut pas être assigné au paramètre
         * ImageProvider. Alors au lieu de faire
         * Image.Asset comme on l'avait fait. Quand on
         * voulait une Image. On faisait Image.asset ou
         * Image.network. Alors, là imageProvider qu'on a
         * besoin "Images/beach.jpg". Alors, est-ce que
         * ça fonctionnerait comme ceci.Vous voyez
         * désormaison a pu avoir image. Si j'avais voulu
         * le faire avec Image.network
         */
        //foregroundImage: AssetImage("images/beach.jpg"),
        /**
         * J'aurai fait pas AssetImage, mais networkImage
         * Je copie et j'enlève la virgule. Si je relance,
         * on a les tongs et Matthieu Codabee. Si on veut
         * une imageProvider. On aura Image.network et
         * Image.asset. Ici je n'aurais plus le fit,
         * la size, j'aurais la scale, les headers.
         */
        foregroundImage: NetworkImage("https://images."
            + "pexels.com/photos/1756086/pexels-photo-"
            + "1756086.jpeg?auto=compress&cs=tinysrgb&"
            + "dpr=2&h=750&w=1260"),
      );
  }
  /**
   * Je pourrais juste ici de faire une Image qui sera fromAsset. Je vais
   * retourner tout simplement ici. Là vous voyez que si je renvoie ceci. Il ne
   * reconnaît plus la size. Pourquoi ? On est plus à l'intérieur de notre
   * fonction qui a le BuildContext. Donc je pourrais la récupérer la size.
   * Donc c'est une classe Size size.
   */
  // Image fromAsset(Size size) {
  /**
   * On pourrait faire encore mieux. Ici au lieu d'avoir une size. On pourrait
   * essayer autre chose. Les accolades et avoir une height aui sera de type de
   * type double et une width qui sera aussi un double.
   */
  Image fromAsset({double? height, double? width}) {
    /**
     * Image.asset
     * Vous vous rappelez que j'avais télécharger une image de dans la
     * vidéo précédente. Vous voyez l'image de plage. on avait copié
     * l'URL et l'autre on avait copié une image. Alors, pour ajouter
     * une image dans notre application et ne pas avoir à la télécharger
     * sur internet. Ça risque d'être vachement utile notamment si les
     * gens ont un mauvaise connection ou pas du tout. Ce que je vais
     * faire un click droit pour créer un New > Directory. C'est-à-dire
     * je crée un nouveau dossier. Ce nouveau dossier images. A
     * l'intérieur de ce dossier c'est click droit Open In finder. Voilà
     * mon projet dans mon dossier fraichement créer. Je vais copié
     * l'image que j'ai téléchargé que j'ai nommé beach. Maintenant vous
     * allez voir petit à petit ça va se mettre à jour ici. Si je change
     * de page. Vous voyez qu'on a beach.jpg et pour l'utiliser cette
     * image. Il va falloir que je l'ajoute dans ce fameux dossier le
     * pubspec.yaml. Qu'est-ce qu'il va nous permettre des
     * spécifications. Par exemple ici ce que nous voulons voir. Il va
     * donner la version de l'environnement, des dependencies. Si on
     * ajouter autre choses. Les copertino_icons qui ont été ajouté. La
     * ici to add assets que ce soit to your application. Si on veut
     * ajouter des assets que ce soit des fonts, des images et
     * compagnies. Il va falloir décommenté cette fonction. Je
     * décommente la partie assets. Je vais supprimer. Après ceci je
     * vais faire - espace et je vais vouloir récupérer mon image. Il va
     * falloir que je choisisse le chemin. Ça va être le nom de dossier
     * Images/beach.jpg. Ça aurait pu ici faire un click droit faire un
     * Copy > Path From Content Root. Si je fais ceci ça nous aurait
     * donné exactement la même chose pour que notre application puisse
     * prendre en compte. Je click en haut à droite pour que ce
     * changement soit pris en compte. Je vais obtenir un message avec
     * un numéro de sortie. Si c'est 0. C'est au'on a pas d'erreur. Il
     * va falloir que tout fonctionne bien que je relance l'application.
     * Pourquoi ? Si je fais un hot reload. Il risque de ne pas avoir
     * prit en compte mon image. C'est possible aue je dois carrément
     * arrété donc si vous avez une erreur dès le début c'est possible
     * que ce soit à cause de ça. Maintenant je vais revenir sur mon
     * main.dart. Je vais obtenir mes dependicies et on va vouloir
     * changer Image.network par image.asset. Cela va fonctionner de la
     * même façon à part qu'on ne va pas avoir une src.
     */
    return Image.asset(
      /**
       * name
       * On va avoir une string name. On va devoir donné en tant que
       * string le chemin du fichier. Copy > Path From Content Root.
       * Maintenant si je relance. Vous voyez que notre image est
       * apparut.
       */
        "images/beach.jpg",
        /**
         * fit
         * On pourrait faire quoi ? On pourrait faire un fit : BoxFit.cover. On
         * voir que ça ne change pas pas.
         */
        fit: BoxFit.cover,
        /**
         * height
         * Une height : size.height. Çela prendra l'intégralité de notre écran
         */
        //height: size.height,
        /**
         * Du coup ici on met un height
         */
        height : height,
        /**
         * width
         * Si je lui avais mit une width : 75. Ça va être moche. On aurait juste
         * ceci. On pourrait prendre size.width pour qu'on est l'intégralité de
         * l'écran. On a pu avoir notre image à partir de nos assets. Vous
         * voyez, on a quelques étapes à respecter. Bien avoir un dossier, bien
         * rajouterdans le pubspec. Relancé notre application. Après vous avez
         * accès à vos images.
         */
        //width : size.width
        /**
         * La width.
         */
        width : width
    );
  }

  /**
   * Je vais prendre 30 secondes pour rajouter mon Image fromNetwork qui sera
   * une Image.network par rapport à la source. La source je vais la mettre
   * comme ceci. Je n'oublis pas return comme ça.
   */
  Image fromNetwork(Size size) {
    /**
     * Image.network
     * On peut télécharger une image depuis Internet. Moi ce que j'aime
     * bien c'est allé sur pixels.com. Pourquoi ? Par ce que ce sont des
     * images libres de droits ce qu'on pourrait faireces prendre une
     * image au hasard. Je vais prendre une image une vidéo de plage.
     * Ici je peux télécharger gratuitement et on va regarder. Elle est
     * libre de droit. Parfait je télécharge gratuitement. On peut
     * définir un lien. Cette image on l'utilisera quand on devra
     * télécharger. Si je reviens en arriére, je peux prendre celle-là.
     * cette image je vais vouloir faire ouvrir l'image dans un nouvel
     * onglet. Je vais prendre l'URL de l'image. Je vais prendre celle-
     * là. Je vais retourner dans mon Flutter dans notre projet et à la
     * place de l'icône. Je vais commencer à taper une Image.network().
     * Alors, qu'est-ce sait Matthieu ? On va retourner sur Widget. Ici
     * on a une image. Donc notre image, ils vont nous expliquer comment
     * utiliser une image avec des contructeurs. Moi ce aue je veux
     * c'est une image, ils vont nous expliquer une image. Moi ce aue je
     * veux c'est une Image.network(). Alors, qu'est-ce que sait
     * Matthieu ? On va retourner sur Widget. Ici on a une image. Donc
     * notre image. Moi ce aue je veux c'est Image.network et
     * Image.asset.
     * Image.network c'est une image qui a été obtenu depuis internet.
     * On va pouvoir choisir une image, un scale, une width, une height,
     * une couleur de fond, un alignement et un BoxFit. C'est le BoxFit,
     * height et width qui vont être les plus important.
     */
    return Image.network(
      /**
       * Alors, ici src c'est la source dans donc ça va être une
       * string. C'est quoi la string ? C'est ce que j'ai copié.
       * J'ouvre les guillemets. Je colle mon image URL. Je lance et
       * sur mon mon application j'ai l'image. Donc on a réussi à
       * télécharger une image sur internet.
       */
      "https://images.pexels.com/photos/1756086/pexels-photo-175608"
          + "6.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      /**
       * colors
       * Je pourrai lui ajouter une couleur et on va mettre une
       * Colors.teal. Ça sert à quoi Matthieu ? Ça va nous cacher
       * notre image. Ça on ne va pas là vouloir.
       */
      //color : Colors.teal,
      /**
       * height
       * On pourrait avoir une height. On va la mettre de 150 et
       * vous voyez qu'on vous voyez qu'automatiquement.
       */
      //height : 150,
      /**
       * width
       * Elle s'est resizé où on pourrait avoir width disont 300. Le
       * width de 300 n'a pas été pris en compte parce qu'il rentre
       * dans la hauteur.
       */
      // width: size.width,
      /**
       * Je vais vouloir que mon fromNetwork. Je vais juste après virgule. Là
       * je vais vouloir ajouter une height. Je vais vouloir  que cette image
       * fasse juste 200. Là vous voyez que notre colonne s'est adapté à la
       * taille. Vous voyez que notre désormais que notre s'est adapté.
       */
      height : 150,
      /**
       * BoxFit
       * Je vous ai parlé du fit qui sera un BoxFit et on pourrait
       * avoir BoxFit.. On va voir plein de choses. BoxFit.cover ça
       * veut dire que ça va prendre la taille définit et ça va
       * remplir en partant du centre.
       * On pourrait avoir BoxFit.fill, ça veut dire aue ça vous
       * remplit le container donc la hauteur et la largeur. Ça va
       * déformez l'image pour qu'on est toute l'image.
       * On pourrait avoir quoi le contain. La valeur de base.
       * On va voir le FitHeight. C'est exactement la même chose ça
       * va prendre la taille de mon image.
       * Le fitWidth aui va centré au cover.
       * On peut avoir scaleDown. Ça va récupérer l'image pour
       * qu'elle rentre en entier.
       * On va vouloir utiliser ici le cover et on pourrait avoir
       * width. Le size.width pour que ça prenne l'intégralité.
       * Voilà pour l'Image.network.
       */
      // fit : BoxFit.cover
    );
  }

  /**
   * Alors, pour ceci ce qu'on pourrait faire ceci une fonction. Text qui va
   * nous renvoyer un texte qui s'appelle simple text. Je vais copier tout ce
   * que j'ai ici. Je commence par un return Text et ajouter un ;. On va aller
   * plus loin. Une string text, cette String sera juste le Text en paramètre.
   * Ça veut dire que ce texte si je veux le réutiliser 20 mille fois avec ce
   * même font.
   */
  Text simpleText(String text) {
    /**
     * Text
     * Ici ce que je fais c'est un texte. J'ouvre les parenthèses et on nous a
     * dit qu'il fallait en rajouter data et vous avez vu que c'était entre
     * accolade sur la documentation. Ce texte on ne mettra pas data :. On va
     * ouvrir les "". On va mettre "Salut les codeurs". Maintenant si je relance
     * commande S et contrôle S.
     */
    return Text(
      text,
      /**
       * TextSyle
       */
      style: TextStyle(
        /**
         * Color
         * Ce nouveau Widget que vous pouvez avez remarqué qu'il existe des
         * constructeurs. Il n'a pas de couleur. Pourquoi il n'a pas couleur
         * ? Un text on va ajouter un style qui sera un TextStyle aura une
         * couleur. On peut mettre une Colors.white, on voit que notre text
         * est devenu blanc.
         */
        color: Colors.white,
        /**
         *  FontSize
         *  On pourra avoir un fontSize : 40. Vous voyez que notre texte
         *  s'agrandit,
         */
        // fontSize: 40,
        /**
         * Ce aui pourrait faire ici, changer dans mon texte. La taille était un
         * peu grosse. Il est ici mettre juste à 25.
         */
        fontSize: 25,
        /**
         * FontWeight
         * On pourrait un FontWeight. FontWeight.w200 entre 0 et 1 mille.
         * Pour mettre plus au moins gras. On pourrait ajouter un FontStyle
         * italic. Après FontFamily on va devoir importer des fonts.
         */
        //fontWeight: FontWeight.w200,
        /**
         * Je pourrais le mettre ici et le mettre en bold.
         */
        fontWeight: FontWeight.bold,
      ),
      /**
       * TextAlign
       * on avait un TextAlign.center, center pour le center. On pourrait
       * avoir, center, left, right, start, end, justify. Par exemple :
       * start et end. Si on veut utiliser en arabe ou le Japonais qui
       * commence dans l'autre sens. Si jamais vous utilisez ces codes là.
       * Le start commence à un endroit différent que ce soit une langue ou
       * un autre. En right est aligné droite.
       */
      //textAlign: TextAlign.center,
      /**
       * Vous voyez que aue textAlign. Il n'a pas été centré parce que le texte.
       * Il prend uniquement la place dont il a besoin.
       */
      textAlign: TextAlign.center,
    );
  }

  Text spanDemo() {
    /**
     * Text.rich prend en paramètre un TextSpan qui aura un TextSpan qui
     * auront des enfants TextSpan
     */
    return Text.rich(
      /**
       * TextSpan
       * C'est un texte a part entière pù on aura une valeur text et une
       * style.
       */
        TextSpan(
          text: "Salut",
          style: TextStyle(
            color: Colors.red,
          ),
          /**
           * Je peux lui rajouter des enfants qui sont des inlines span
           * ça veut dire qu'on va pouvoir lui rajouter un text avec
           * plusieurs couleurs. Un autre TextSpan avec un autre text
           * et un autre style. Si jamais je ne renseigne pas la
           * couleur. La couleur sera celle du parent
           */
          children: [
            TextSpan(
                text: "second style",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.grey
                )
            ),
            TextSpan(
                text: "A l'infini",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blue
                )
            )
          ],
        )
    );
  }
}