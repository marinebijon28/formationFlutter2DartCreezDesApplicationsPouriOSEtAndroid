import 'package:flutter/material.dart';
import 'package:in_a_project_flutter/post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // désactive le mode debug
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BasicPage(),
    );
  }
}

class BasicPage extends StatelessWidget {
  List<Post> posts = [
    Post(name: "Matthieu Codabee", time: "5 minutes",
        imagePath: "images/carnaval.jpg", desc:
        "Petit tour au Magic world, on s'est bien amusées et en plus il n'y "
            + "avait pas grand monde. Bref, le kiff"),
    Post(name: "Matthieu Codabee", time: "2 jours", imagePath: "images/mountain.jpg", desc:
    "La montagne ca vous gagne", like: 38),
    Post(name: "Matthieu Codabee", time: "1 semaine", imagePath: "images/work.jpg", desc:
    "retour au boulot après plusieurs mois de confinement", like : 12,
        comment: 3),
    Post(name: "Matthieu Codabee", time: "5 ans", imagePath: "images/playa.jpg", desc:
    "Le boulot en remote c'est le pied: la preuve ceci sera mon bureau pour les"
        + " prochaines semaines", like : 235, comment: 88)
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Facebook Profile"),
      ),
      body: SingleChildScrollView(
        child : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // on utilise une stack car deux éléments se chevauchent
            Stack(
              alignment : Alignment.topCenter,
              children: [
                Image.asset(
                  "images/cover.jpg",
                  height: 200,
                  fit : BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.only(top : 125),
                  child : CircleAvatar(
                      radius: 75,
                      backgroundColor: Colors.white,
                      child : myProfilPic(72)
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Spacer(),
                Text(
                  "Matthieu Codabee",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Spacer(),
              ],
            ),
            Padding(
                padding : EdgeInsets.all(10),
                child : Text(
                  "Un jour les chats domineront le monde, mais pas aujourd'hui, "
                      + "c'est l'heure de la sieste",
                  style: TextStyle(
                    color : Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                )
            ),
            Row(
              children: [
                // pour utiliser un maximum de place
                Expanded(
                    child: buttonContainer(text: "modifier le profil")
                ),
                buttonContainer(icon: Icons.border_color),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            sectionTitle("A propos de moi"),
            aboutRow(icon: Icons.house, text: "Hyères les palmiers, France"),
            aboutRow(icon: Icons.work, text: "Développeur Flutter"),
            aboutRow(icon: Icons.favorite, text: "En couple avec mon chat"),
            Divider(
              thickness: 2,
            ),
            sectionTitle("Amis"),
            allFriends(width / 3.5),
            Divider(
              thickness: 2,
            ),
            sectionTitle("Mes posts"),
            allPosts(),
          ],
        ),
      ),
    );
  }

  CircleAvatar myProfilPic(double? radius) {
    return CircleAvatar(
      radius : radius,
      backgroundImage: AssetImage("images/profile.jpg"),
    );
  }

  Container buttonContainer({IconData? icon, String? text}) {
    return Container(
        height: 50,
        margin: EdgeInsets.only(left: 10, right: 10),
        padding: EdgeInsets.all(15),
        decoration : BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: (icon == null ) ? Center(
            child :Text(text ?? "", style: TextStyle(color: Colors.white),)) :
        Icon(icon, color: Colors.white,)
    );
  }

  Widget sectionTitle(String text) {
    return Padding(
      padding:EdgeInsets.all(5),
      child : Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
    );
  }

  Widget aboutRow({required IconData icon, required String text}) {
    return Row(
        children: [
          Icon(icon),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(text),
          ),
        ]
    );
  }

  Column friendsImage(String name, String imagePath, double width) {
    return Column(
        children:[
          Container(
            margin: EdgeInsets.all(5),
            width: width,
            height: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
              boxShadow: [
                BoxShadow(color: Colors.grey)
              ],
            ),
          ),
          Text(name),
          Padding(
            padding: EdgeInsets.only(bottom: 5),
          ),
        ]
    );
  }

  Row allFriends(double width) {
    Map<String, String> friends = {
      "José": "images/cat.jpg",
      "Maggie": "images/sunflower.jpg",
      "Douggy": "images/duck.jpg",
    };
    List<Widget> children = [];
    friends.forEach((name, imagePath) {
      children.add(friendsImage(name, imagePath, width));
    });
    return Row(
      children: children,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    );
  }

  Column allPosts() {
    List <Widget> postToAdd = [];
    // listes de poste déclarer en haut de la classe
    posts.forEach((element) {
      // créer une liste de widget
      postToAdd.add(post(post : element));
    });
    // retourne la colonne avec tous les post
    return Column(children: postToAdd);
  }

  Container post({required Post post}) {
    // créer l'affichage du post
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromRGBO(225, 225, 225, 1),
      ),
      child: Column(
        children: [
          Row(
            children: [
              myProfilPic(20),
              Padding(padding: EdgeInsets.only(left: 8)),
              Text("Mathieu codabee"),
              Spacer(),
              timeText(post.time),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 8, bottom: 8),
            child: Image.asset(post.imagePath, fit: BoxFit.cover),
          ),
          Text(post.desc,
            style: TextStyle(
              color : Colors.blueAccent,
            ),
            textAlign: TextAlign.center,
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.favorite),
              Text(post.setLikes()),
              Icon(Icons.message),
              Text(post.setComments()),
            ],
          )
        ],
      ),
    );
  }

  Text timeText(String time) {
    return Text(
      "Il y a $time",
      style: TextStyle(
          color: Colors.blueAccent
      ),
    );
  }
}