import 'package:flutter/material.dart';

/**
 * Je vais vouloir qu'on retourne sur les widgets. On va apprendre de nouveaux
 * widgets. On a vu les basics et la je vais vouloir qu'on parle des widgets
 * interactifs. Qu'est ce que ça va être les widgets basics, ce seront tous les
 * widgets avec lesquels l'utilisateur va pouvoir intégargir. C'est-à-dire par
 * exemple un boutton avec lequel l'utilisateur pourra intérargir. Une textfield
 * qui est zone de texte où l'utilisateur pourra bien évidemment rentrer du
 * texte.
 * On va voir comment créer une widget StatefullWidget et comprendre quand
 * utiliser un StatefullWidget et un StatelessWidget
 */

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

