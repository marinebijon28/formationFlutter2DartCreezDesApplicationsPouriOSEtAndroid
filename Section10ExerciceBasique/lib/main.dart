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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // récupérer la size
    var screenSize = MediaQuery.of(context).size;

    // squelette
    return Scaffold(
      // appbar
      appBar : AppBar(
        backgroundColor: Colors.blue,
        title: Text("Basics"),
      ),
      // body
      body: Container(
        // liste déroulante
        child: SingleChildScrollView(
          child: Column(
            children: [
              // pour superposer les images
              profilePictureAndPictureCover(screenSizeWidth: screenSize.width),
              // nom de profil
              name(),
              // presentation
              presentation(),
              // button
              button(),
              divider(),
              aboutUsTitle("A propos de moi"),
              aboutUs(Icons.house, "Hyères les palmiers, France"),
              aboutUs(Icons.work, "Développeur IOS"),
              aboutUs(Icons.favorite, "couple"),
              divider(),
              aboutUsTitle("Amis"),
              // liste d'amis
              Padding(
                padding: EdgeInsets.only(left: 12),
                child : Row(
                  children: [
                    friends(),
                    friends(),
                    friends(),
                  ],
                ),
              ),
              divider(),
              post(width: screenSize.width),
              post(width: screenSize.width),
              post(width: screenSize.width),
            ],
          ),
        ),
      ),
    );
  }
  Image fromAsset({double? height, double? width}) {
      return Image.asset(
        "images/beach.jpg",
        width: width,
        height: height,
        fit: BoxFit.cover,
      );
  }
 Stack profilePictureAndPictureCover({double? screenSizeWidth}) {
    return Stack(
      // pour placer l'image en haut
      alignment: Alignment.topCenter,
      children: [
        // taille total
        fromAsset(height : 200, width : screenSizeWidth),
        Padding(
          // permet de placer l'image du circle avatar plus bas
          padding: EdgeInsets.only(top: 130),
          // bordure blanche de la photo de profil
          child : CircleAvatar(
            backgroundColor: Colors.white,
            radius: 60,
            // image de profile
            child: CircleAvatar(
              backgroundImage: AssetImage("images/beach.jpg"),
              radius: 57,
            ),
          ),
        ),
      ],
    );
  }

  Text name() {
    return Text(
      "Matthieu Codabee",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w900,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  Container presentation() {
    return Container(
      margin: EdgeInsets.all(10),
      child : Text(
        "Un jour les chats domineront le monde mais pas aujourd'hui "
            + "c'est le jour de la sieste",
        style: TextStyle(
          color: Colors.grey,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Row button() {
    return Row(
        children : [
          Padding(
            padding : EdgeInsets.only(left: 10),
            child : ElevatedButton(
              style: ButtonStyle(
                shape:  MaterialStateProperty.all(
                    RoundedRectangleBorder(side: BorderSide.none,
                        borderRadius: BorderRadius.circular(20))),
                // StadiumBorder(side: BorderSide.none)),
                backgroundColor: MaterialStateProperty.all<Color>
                  (Colors.blue),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>
                  (EdgeInsets.symmetric(vertical : 15, horizontal: 110)),
              ),
              onPressed: null,
              child: Text(
                "Modifier profil",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child : ElevatedButton(
              style: ButtonStyle(
                shape:  MaterialStateProperty.all(
                    RoundedRectangleBorder(side: BorderSide.none,
                        borderRadius: BorderRadius.circular(25))),
                // StadiumBorder(side: BorderSide.none)),
                backgroundColor: MaterialStateProperty.all<Color>
                  (Colors.blue),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>
                  (EdgeInsets.symmetric(vertical : 15, horizontal: 5)),
              ),
              onPressed: null,
              child: Icon(
                Icons.border_color,
                color: Colors.white,
              ),
            ),
          ),
        ]
    );
  }

  Padding divider() {
    return Padding(
      padding : EdgeInsets.only(top: 5),
      child : Divider(
        height: 1,
        color: Colors.grey,
        thickness: 0.2,
      ),
    );
  }

  Container aboutUsTitle(String text) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top : 5),
      child: Text(text,
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 15,
        ),
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr,
      ),
    );
  }

  Row aboutUs(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon),
        Text(text,
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Padding friends() {
    return Padding(
      padding: EdgeInsets.only(right: 12),
      child :Column(
        children : [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child : SizedBox.fromSize(
              child :Image.network(
                "https://images.pexels.com/photos/1756086/pexels-photo-1756086.jpeg?cs=srgb&dl=pexels-jo%C3%A3o-v%C3%ADtor-heinrichs-1756086.jpg&fm=jpg",
                width : 120,
                height : 160,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text("Isabelle"),
        ],
      ),
    );
  }
  Padding post({double? width}) {
    return Padding(
      padding: EdgeInsets.only(top: 15),
      child : Container(
        color: Color.fromRGBO(206, 206, 206, 1.0),
        width: width,
        height: 400,
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/beach.jpg"),
                        radius: 20,
                      ),
                      Text(
                        "Matthieu Codabee",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Il y a 5 heures",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8, right: 0.5,
                        left: 0.5, bottom: 8),
                    child: Image.network(
                      "https://images.pexels.com/photos/1440476/pexels-"
                          "photo-1440476.jpeg?cs=srgb&dl=pexels-bagus-pange"
                          "stu-1440476.jpg&fm=jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                      "Seul sur le sable, les yeux dans l'eau, mon rêve" +
                          " était trop beau…",
                      style : TextStyle(
                        fontSize: 15,
                      )
                  ),
                  Row(
                    mainAxisAlignment : MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.favorite),
                      Text("36 likes"),
                      Icon(Icons.message),
                      Text("12 commentaires")
                    ],
                  )
                ]
            )
        ),
      ),
    );
  }
}
