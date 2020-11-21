import 'package:flutter/material.dart';
import 'dashboard.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final logo = Padding(
      padding: EdgeInsets.all(20),
      child: Hero(
        tag: "logo",
        child: SizedBox(
          child: Image.asset("assets/images/2.png"),
          height: 200,
        ),
      ),
    );
    final inputEmail = Padding(
      padding: EdgeInsets.all(10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.amber, width: 20),
              borderRadius: BorderRadius.circular(10)),
          hintText: "Email",
          contentPadding: EdgeInsets.all(3),
        ),
      ),
    );
    final inputPassword = Padding(
      padding: EdgeInsets.all(10),
      child: TextField(
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.amber, width: 2),
              borderRadius: BorderRadius.circular(5)),
          hintText: "Password",
          contentPadding: EdgeInsets.all(3),
        ),
      ),
    );
    final button = Padding(
        padding: EdgeInsets.all(20),
        child: ButtonTheme(
          height: 56,
          child: RaisedButton(
            color: Colors.amber[100],
            child: Text(
              "Login",
              style: TextStyle(color: Colors.black),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
            },
          ),
        ));
    final forgetPassword = FlatButton(
      child: Text(
        "Forget Password",
        style: TextStyle(color: Colors.blueAccent[100], letterSpacing: 3),
      ),
      onPressed: () {},
    );
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ListView(
            shrinkWrap: false,
            padding: EdgeInsets.all(20),
            children: [
              logo,
              inputEmail,
              inputPassword,
              button,
              forgetPassword,
            ],
          ),
        ),
      ),
    );
  }
}
