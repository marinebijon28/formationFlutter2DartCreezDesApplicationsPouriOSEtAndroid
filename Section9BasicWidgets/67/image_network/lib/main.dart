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
          margin: EdgeInsets.all(10),
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
           * Widget qui centre un autre widget tout simpement. Ici je vais vouloir
           * mon text child.
           */
          child: Center (
            /**
             * Il aura un child demo qui sera un spanDemo. Vous vous voyez que
             * notre center est centré. Il est centré un peu bas, il est centré
             * par rapportau padding. Si on enlève padding. Si on enlève le
             * padding. Il est vraiment exactement centrer. Ce center pourrait
             * nous à nos éléments arrivés toujours à gauche. Il peut vous servir
             * dans un container pour avoir un élément centré. Par exemple à la
             * place de notre spanDémo.
             */
            /*
              child : spanDemo(),
            /**
             * On peut mettre un container une width de 80 et une height 80 et une
             * color pinkAccent. Si je relance on a un carré de 80 sur 80. Un
             * carré rose qui est parfaitement centré au sein de notre application
             */
                child: Container(
                width: 80,
                height: 80,
                color: Colors.pinkAccent,
            ),
         )*/
            /**
             * On va passer aux images. Qu'est-ce qu'on pourrait avoir ? On
             * pourrait avoir cette icône à l'intérieur. Ici au lieu de montrer le
             * Container. Je vais dans Widget catalogue dans mes basics une Icon.
             * C'est un Matériel Design. Icon elle est déjà présente dans Matériel
             * Design. On va avoir dans les icônes : un nom, une couleur, une
             * taille et un semanticLabel. C'est par rapport à l'accessibilité, au
             * personne qui sont malvoyante. On a juste à taper Icon on ouvre ou
             * on ferme les parenthèses. Ce qui faut savoir c'est-ce que les
             * icônes, on va leur choisir principalement une taille, une couleur
             * et bien évidemment une icône. C'est-ce au'on va voit ici. Ces
             * icônes on va pouvoir les ajouter des IconButton, des
             * loatingActionButton et dans plein d'endroits. L'IconButton nous
             * servira à avoir une icône qui sera cliquable.
             */
           /* child: Icon(
              /**
               * Icons
               * Il va falloir mettre juste Icons., on a voir
               * une liste tous les icônes. Je vais choisir Icons.house. Si je veux
               * sauvegarde et que je montre. Ici on a une icône noir. De base, elle
               * sera noir.
               */
              Icons.house,
              /**
               * size
               * Elle avait une size ce sera un double. On pourrait vouloir qu'elle fasse
               * un dixième de la largeur : size.width, les médias queries of context.
               * Donc size.width / 10. Si je l'avais / 3. On aura quelque chose comme
               * ça. On va mettre 5 sur notre icône.
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
            child : Image.network(
              /**
               * Alors, ici src c'est la source dans donc ça va être une
               * string. C'est quoi la string ? C'est ce que j'ai copié.
               * J'ouvre les guillemets. Je colle mon image URL. Je lance et
               * sur mon mon application j'ai l'image. Donc on a réussi à
               * télécharger une image sur internet.
               */
              "https://images.pexels.com/photos/1756086/pexels-photo-1756086.j"
                   + "peg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              /**
               * colors
               * Je pourrai lui ajouter une couleur et on va mettre une
               * Colors.teal. Ça sert à quoi Matthieu ? Ça va nous cacher
               * notre image. Ça on ne va pas là vouloir.
               */
              //color : Colors.teal,
              /**
               * height
               * On pourrait avoir une height. On va la mettre de 150 et vous
               * voyez qu'on vous voyez qu'automatiquement.
               */
              height : 150,
              /**
               * width
               * Elle s'est resizé où on pourrait avoir width disont 300. Le
               * width de 300 n'a pas été pris en compte parce qu'il rentre dans
               * la hauteur.
               */
              width: size.width,
              /**
               * BoxFit
               * Je vous ai parlé du fit qui sera un BoxFit et on pourrait avoir
               * BoxFit.. On va voir plein de choses. BoxFit.cover ça veut dire
               * que ça va prendre la taille définit et ça va remplir en partant
               * du centre.
               * On pourrait avoir BoxFit.fill, ça veut dire aue ça vous remplit
               * le container donc la hauteur et la largeur. Ça va déformez
               * l'image pour qu'on est toute l'image.
               * On pourrait avoir quoi le contain. La valeur de base.
               * On va voir le FitHeight. C'est exactement la même chose ça va
               * prendre la taille de mon image.
               * Le fitWidth aui va centré au cover.
               * On peut avoir scaleDown. Ça va récupérer l'image pour qu'elle
               * rentre en entier.
               * On va vouloir utiliser ici le cover et on pourrait avoir width.
               * Le size.width pour que ça prenne l'intégralité. Voilà pour l'
               * Image.network.
               */
              fit : BoxFit.cover
            )
          )
      ),
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
        fontSize: 40,
        /**
         * FontWeight
         * On pourrait un FontWeight. FontWeight.w200 entre 0 et 1 mille.
         * Pour mettre plus au moins gras. On pourrait ajouter un FontStyle
         * italic. Après FontFamily on va devoir importer des fonts.
         */
        fontWeight: FontWeight.w200,
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