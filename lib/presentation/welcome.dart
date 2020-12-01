import 'file:///E:/Flutter/apass/lib/pages/resident/resident_login.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class welcome extends StatefulWidget {
  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          // verticalDirection: VerticalDirection.down,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            GestureDetector(
              onTap: ()
              {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                      curve: Curves.bounceOut,
                      type: PageTransitionType.rotate,
                      alignment: Alignment.topCenter,
                      child: login_screen(),
                    ));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 0.0),
                // height: MediaQuery.of(context).size.height /6,
                width: MediaQuery.of(context).size.width /2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Column(
                    children: [
                      Card(
                        elevation: 5,
                        shadowColor: Colors.green,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          // side: BorderSide(width: 1,color: Colors.grey[200])
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                              child: Center(
                                child: Image.asset(
                                  "assets/logo.jpeg",
                                  height: height/10,
                                  // height: MediaQuery.of(context).size.height *
                                  //     0.14,
                                  // width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical:2),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    style: TextStyle(fontWeight: FontWeight.w500,color: Color(0xff8492A7),fontSize: 16),
                                    children: <TextSpan>[
                                      TextSpan(text: "aPass Resident",),

                                    ]
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),


            Container(
              padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 0.0),
              // height: MediaQuery.of(context).size.height /6,
              width: MediaQuery.of(context).size.width /2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Column(
                  children: [
                    Card(
                      elevation: 5,
                      shadowColor: Colors.green,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        // side: BorderSide(width: 1,color: Colors.grey[200])
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            child: Center(
                              child: Image.asset(
                                "assets/logo.jpeg",
                                height: height/10,
                                // height: MediaQuery.of(context).size.height *
                                //     0.14,
                                // width: MediaQuery.of(context).size.width,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical:2),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  style: TextStyle(fontWeight: FontWeight.w500,color: Color(0xff8492A7),fontSize: 16),
                                  children: <TextSpan>[
                                    TextSpan(text: "aPass Security",),

                                  ]
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
