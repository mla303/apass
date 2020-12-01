import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () => Navigator.pushNamed(context, "/welcome"));
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: new Container(

    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,

      children: <Widget>[


        Image.asset('assets/logo.jpeg',
          height: height/6,),
        SizedBox(height: height/20,),

        Padding(
            padding: EdgeInsets.all(15.0),
            child: new SpinKitPouringHourglass(
              color: Color(0xff3F924E),
              size: 42,
            )
        ),

      ],
    ),
    ),
    );
  }
}
