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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Facebook Profile"),
      ),
      body: SingleChildScrollView(
        child : Column(
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
            Text(
              "Matthieu Codabee",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Padding(
              padding : EdgeInsets.all(10),
              child : Text(
                "Un jour les chats domineront le monde, mais pas aujourd'hui, " +
                "c'est l'heure de la sieste",
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
            )
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
}