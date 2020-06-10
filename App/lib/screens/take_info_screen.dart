import 'package:flutter/material.dart';
import 'package:fooduko/screens/home_screen.dart';

class TakeInfoScreen extends StatelessWidget {
  static const String id = "take_info_screen";
  var _formKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          key: _formKey,
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(100, 50),
                      bottomRight: Radius.elliptical(300, 110),
                    )),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.indigo[400],
                      borderRadius: BorderRadius.only(
                        // topLeft: Radius.elliptical(25, 50),
                        topRight: Radius.elliptical(400, 300),
                      )),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
// First Name
                  Padding(
                    padding: EdgeInsets.only(
                      left: 25.0,
                      right: 25.0,
                    ),
                    child: TextFormField(
                      controller: firstNameController,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return "Please enter your first name";
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
                        labelText: 'First Name*',
                        hintText: 'Abhay',
                        hintStyle: TextStyle(fontSize: 15),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 1.5),
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 2.0),
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.0)),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20.0,
                  ),

// Last Name
                  Padding(
                    padding: EdgeInsets.only(
                      left: 25.0,
                      right: 25.0,
                    ),
                    child: TextFormField(
                      controller: lastNameController,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return "Please enter your last name";
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
                        labelText: 'Last Name*',
                        hintText: 'Anjarlekar',
                        hintStyle: TextStyle(fontSize: 15),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 1.5),
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 2.0),
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.0)),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20.0,
                  ),

// Enter Username
                  Padding(
                    padding: EdgeInsets.only(
                      left: 25.0,
                      right: 25.0,
                    ),
                    child: TextFormField(
                      controller: userNameController,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return "Please enter your username";
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
                        labelText: 'Username*',
                        hintText: 'Eg.fooduko_foodie',
                        hintStyle: TextStyle(fontSize: 15),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 1.5),
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 2.0),
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.0)),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "This username will be visible to all your friends as your profile name",
                      textAlign: TextAlign.center,
                      style: TextStyle(),
                    ),
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

// Confirm Button
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
            ],
          ),
        ),
      ),
    );
  }
}
