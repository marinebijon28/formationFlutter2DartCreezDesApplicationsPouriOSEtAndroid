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
}
