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
              /**
               * Une élévation imaginez je la prends a dix. Vous voyez désormais
               * on a une petite ombre, une petite shadow. On pourrait mettre
               * 7.5. Vous le voyez ce petit élément.
               */
              elevation: 10,
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
                  child: fromNetwork(size),
                  /**
                   * Je vais enlever cette Colors.teal pas très jolie. On a
                   * notre card avec à l'intérieur notre avec à l'intérieur de
                   * notre padding. Ça nous donne des petits rebords arrondis.
                   * Un petit effet sympathique tout simplement parce qu'on a
                   * une petite bordure tout le long.
                   */
                ),
              )
          )
      ),
    );
  }

  /**
   * Je pourrais juste ici de faire une Image qui sera fromAsset. Je vais
   * retourner tout simplement ici. Là vous voyez que si je renvoie ceci. Il ne
   * reconnaît plus la size. Pourquoi ? On est plus à l'intérieur de notre
   * fonction qui a le BuildContext. Donc je pourrais la récupérer la size.
   * Donc c'est une classe Size size.
   */
  Image fromAsset(Size size) {
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
        height: size.height,
        /**
         * width
         * Si je lui avais mit une width : 75. Ça va être moche. On aurait juste
         * ceci. On pourrait prendre size.width pour qu'on est l'intégralité de
         * l'écran. On a pu avoir notre image à partir de nos assets. Vous
         * voyez, on a quelques étapes à respecter. Bien avoir un dossier, bien
         * rajouterdans le pubspec. Relancé notre application. Après vous avez
         * accès à vos images.
         */
        width : size.width
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
        height : 150,
        /**
         * width
         * Elle s'est resizé où on pourrait avoir width disont 300. Le
         * width de 300 n'a pas été pris en compte parce qu'il rentre
         * dans la hauteur.
         */
        width: size.width,
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
        fit : BoxFit.cover
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