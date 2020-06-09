import 'package:flutter/material.dart';
import 'package:fooduko/screens/signup_screen.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = "home_page";

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/home_bg4.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
// Text "FOODUKO "
              Text(
                "FOODUKO",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 55,
                  fontFamily: "ArchitectsDaughter",
                  letterSpacing: 3.0,
                ),
              ),

              SizedBox(
                height: 200.0,
              ),

              Text(
                "Food",
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "That Awaits You !",
                style: TextStyle(
                  color: Colors.lightGreenAccent,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),

              SizedBox(
                height: 30.0,
              ),
// Card Widgets

              ButtonTheme(
                minWidth: 150.0,
                height: 50.0,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    elevation: 10.0,
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
              ),

              SizedBox(
                height: 30.0,
              ),

              ButtonTheme(
                minWidth: 150.0,
                height: 50.0,
                child: RaisedButton(
                    onPressed: () {
                       Navigator.pushNamed(context, SignupScreen.id);
                    },
                    elevation: 10.0,
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
