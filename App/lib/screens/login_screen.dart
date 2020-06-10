import 'package:fooduko/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var _formKey = GlobalKey<FormState>();
  static const String id = "login_screen";
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/top-background.png'),
                  alignment: Alignment.topCenter)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Text(
                  'Log In',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 45.0,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Flexible(
                child: Image(
                  height: 200,
                  width: 200.0,
                  image: AssetImage("images/login.png"),
                ),
              ),

              SizedBox(
                height: 30.0,
              ),

// UserName/Email TextField
              Padding(
                padding: EdgeInsets.only(
                  left: 25.0,
                  right: 25.0,
                ),
                child: TextFormField(
                  controller: userNameController,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Please enter your username or email";
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                  decoration: InputDecoration(
                    labelText: 'UserName/Email',
                    hintText: 'FoodWithFooduko@gmail.com',
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
                height: 20.0,
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
                    labelText: 'Password',
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

// Login Button
              ButtonTheme(
                minWidth: 150.0,
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.pushNamed(context, HomeScreen.id);
                    }
                  },
                  elevation: 10.0,
                  child: Text(
                    "Login",
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
