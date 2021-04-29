import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:
    // buildScaffoldFirstQuestion()); // First Question
    buildScaffoldSecondQuestion()); // Second Question
    // buildScaffoldThirdQuestion()); // Third Question
    // buildScaffoldFourthQuestion()); // Fourth Question
  }
}

// First Question
Scaffold buildScaffoldFirstQuestion() {
  return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildContainer('Container 1', Colors.green),
            SizedBox(
              width: 10,
            ),
            buildContainer('Container 2', Colors.white),
            SizedBox(
              width: 10,
            ),
            buildContainer('Container 3', Colors.blue),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ));
}

Container buildContainer(String text, Color color) {
  return Container(
    width: 100,
    height: 100,
    color: color,
    child: Text(text),
  );
}

//Second Question
Scaffold buildScaffoldSecondQuestion() {
  return Scaffold(
    body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('images/sny.jfif'),
          ),
          Text(
            'Rafa Gates',
            style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.green,
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
                color: Colors.teal.shade100,
                fontSize: 20,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold),
          ),
          buildCardSecond('+55 86 9 7777-7777', Icons.phone, 18.0),
          buildCardSecond('rafael@gmail.com', Icons.email, 16.5)
        ],
      ),
    ),
  );
}

Card buildCardSecond(String text, IconData icon, double size) {
  return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
          leading: Icon(icon, color: Colors.green[300]),
          title: Text(text,
              style: TextStyle(
                color: Colors.green[300],
                fontSize: size,
              ))));
}
