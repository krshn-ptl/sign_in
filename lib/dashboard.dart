import 'package:flutter/material.dart';
import 'package:sign_in/login.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final avatar = Padding(
      padding: EdgeInsets.all(20),
      child: Hero(
        tag: "Avatar",
        child: CircleAvatar(
          child: Text("KP"),
          backgroundColor: Colors.deepPurpleAccent[300],
        ),
      ),
    );

    final description = Padding(
      padding: EdgeInsets.all(20),
      child: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
            text: "foifosifnsonfs",
            style: TextStyle(color: Colors.black, fontSize: 20)),
      ),
    );

    final logOut = FlatButton(
      child: Text("Log Out"),
      color: Colors.amberAccent[50],
      onPressed: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      },
    );
    return SafeArea(
      child: Scaffold(
        body: ListView(
          addRepaintBoundaries: true,
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            avatar,
            description,
            logOut,
          ],
        ),
      ),
    );
  }
}
