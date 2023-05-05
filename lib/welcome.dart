import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show
        Align,
        Alignment,
        BorderRadius,
        BuildContext,
        Colors,
        Column,
        ElevatedButton,
        FontWeight,
        Image,
        Key,
        MainAxisAlignment,
        MaterialPageRoute,
        RoundedRectangleBorder,
        SafeArea,
        Scaffold,
        Size,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        TextStyle,
        Widget;
import 'package:login/login.dart';
import 'package:login/signup.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hello There!",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
          ),
          SizedBox(
            height: 35,
          ),
          Image.asset(
            "images/welc.jpg",
            width: 600,
            height: 350,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(29)),
                  primary: Colors.yellow,
                  fixedSize: Size(350, 57)),
              child: Text(
                "Login",
                style: TextStyle(fontSize: 18, color: Colors.white),
              )),
          SizedBox(
            height: 35,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(29)),
                  primary: Colors.blueAccent,
                  fixedSize: Size(350, 57)),
              child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 18, color: Colors.white),
              )),
        ],
      ),
    ));
  }
}
