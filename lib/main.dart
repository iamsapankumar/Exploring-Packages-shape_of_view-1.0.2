import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shape_of_view/shape_of_view.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle());
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF3F8),
      body: ListView(
        children: [
          ShapeOfView(
            shape: ArcShape(height: 60, position: ArcPosition.Bottom),
            child: Image.asset(
              'assets/images/beach.jpg',
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text("Hotel ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Color(0xFFF22547E))),
          ),
          SizedBox(height: 60),
          Padding(
            padding: EdgeInsets.only(right: 40, left: 40),
            child: RoundedButton(
              hinText: 'Email',
              prefixIcon: Icon(Icons.email),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.only(right: 40, left: 40),
            child: RoundedButton(
              hinText: 'password',
              prefixIcon: Icon(Icons.lock),
            ),
          ),
          SizedBox(height: 30),
          FlatButton(
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.fromLTRB(60.0, 16.0, 60.0, 16.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue[900], Colors.blue[200]]),
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Text(
                'Sign In',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
          ),
          SizedBox(height: 30),
          FlatButton(
            onPressed: () {},
            child: Container(
                padding: EdgeInsets.fromLTRB(60.0, 16.0, 60.0, 16.0),
                child: Text("Don't you have an account ? Sign up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF54B0F3)))),
          ),
        ],
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String hinText;
  final  prefixIcon;
  RoundedButton({Key key, @required this.hinText,  this.prefixIcon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(12.0),
            hintText: hinText,
            prefixIcon: prefixIcon,
            hintStyle: TextStyle(color: Color(0xFF54B0F3)),
            border: InputBorder.none),
      ),
    );
  }
}
