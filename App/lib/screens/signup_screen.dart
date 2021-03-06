import 'package:flutter/material.dart';
import 'package:fooduko/screens/take_info_screen.dart';
import 'login_screen.dart';

class SignupScreen extends StatelessWidget {
  static const id = "signup_screen";
  var _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              'images/top-background.png',
            ),
            alignment: Alignment.topCenter,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Text(
                  'Sign Up',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 45.0,
                  ),
                ),
              ),

              SizedBox(
                height: 10.0,
              ),

//Sign Up with Google

              SizedBox(
                height: 15.0,
              ),

//Password TextField
              Padding(
                padding: EdgeInsets.only(
                  left: 25.0,
                  right: 25.0,
                ),
                child: TextFormField(
                  controller: emailController,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Please enter your email";
                    }
                  },
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Foodukowebsite@gmail.com',
                    hintStyle: TextStyle(fontSize: 15),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 15.0,
              ),

//Password TextField
              Padding(
                padding: EdgeInsets.only(
                  left: 25.0,
                  right: 25.0,
                ),
                child: TextFormField(
                  controller: passwordController,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Please enter password";
                    }
                  },
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Create Password',
                    hintText: 'Type your Password here',
                    hintStyle: TextStyle(fontSize: 15),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 15.0,
              ),

// Confirm Password
              Padding(
                padding: EdgeInsets.only(
                  left: 25.0,
                  right: 25.0,
                ),
                child: TextFormField(
                  controller: rePasswordController,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Please re-enter password";
                    }
                    if (value != passwordController.text) {
                      return "Password does not match!";
                    }
                  },
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    hintText: 'Re-enter Password',
                    hintStyle: TextStyle(fontSize: 15),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("OR"),
              ),

              GestureDetector(
                onTap: () {
                  //Code for sign in with google
                },
                child: Container(
                  width: 250.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: Colors.blue[800],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "images/google.png",
                        height: 30.0,
                        width: 30.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        " SIGNUP WITH GOOGLE",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 15.0,
              ),

// Already have a account

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have a account?  "),
                  GestureDetector(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.blue),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                  ),
                ],
              ),

              SizedBox(
                height: 10.0,
              ),
// Login Button
              ButtonTheme(
                minWidth: 150.0,
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.pushNamed(context, TakeInfoScreen.id);
                    }
                  },
                  elevation: 10.0,
                  child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  color: Colors.blue[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
