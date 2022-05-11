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
              Stack(
                // pour placer l'image en haut
                alignment: Alignment.topCenter,
                children: [
                  // taille total
                  fromAsset(height : 200, width : screenSize.width),
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
              ),
              Text(
                "Matthieu Codabee",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child : Text(
                  "Un jour les chats domineront le monde mais pas aujourd'hui " +
                  "c'est le jour de la sieste",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
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
}
