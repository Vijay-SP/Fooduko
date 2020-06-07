import 'package:flutter/material.dart';

Color gradientStartColor = Color(0xff11998e);
Color gradientEndColor = Color(0xff0575E6);

class HomeScreen extends StatelessWidget {
  static const String id = "home_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.elliptical(170.0, 30.0),
                bottomLeft: Radius.elliptical(170, 30)),
            // boxShadow: <BoxShadow>[
            //   BoxShadow(
            //     color: gradientStartColor,
            //     offset: Offset(1.0, 6.0),
            //     blurRadius: 5.0,
            //   ),
            //   BoxShadow(
            //     color: gradientEndColor,
            //     offset: Offset(1.0, 6.0),
            //     blurRadius: 5.0,
            //   ),
            // ],
            gradient: LinearGradient(
                colors: [gradientStartColor, gradientEndColor],
                begin: const FractionalOffset(0.2, 0.2),
                end: const FractionalOffset(1.0, 1.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: Center(
            child: Text(
              "Appbar With Gradient",
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          // Container(
          //   height: MediaQuery.of(context).size.height / 7.5,
          //   decoration: BoxDecoration(
          //     color: Colors.red,
          //     borderRadius: BorderRadius.only(
          //         bottomLeft: Radius.circular(70.0),
          //         bottomRight: Radius.circular(70.0)),
          //   ),
          // ),
        ],
      ),
    );
  }
}
