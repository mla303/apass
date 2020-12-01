import 'package:apass/presentation/resident_home.dart';
import 'package:apass/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


class login_screen extends StatefulWidget {
  @override
  _login_screenState createState() => _login_screenState();
}



class _login_screenState extends State<login_screen> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController controllerEmail;
  TextEditingController controllerPass;
  String _email;
  String _password;
  bool isLoading = false;



  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff3B5753),
          image: DecorationImage(
              image: AssetImage('assets/resident.jpg'),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.dstATop))),

      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Container(
              width: width,
              height: height,
//              color: Colors.blue,
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[



                    Text(
                      "Login ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    SizedBox(
                      height: 22,
                    ),


                    //email Textfield
                    Container(
                      width: width/1.6,
                      child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          validator: validateEmail,
                          controller: controllerEmail,
                          onSaved: (val) =>
                              setState(() => _email=val),


                          textAlign: TextAlign.start,
                          textInputAction: TextInputAction.next,
                          onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),

                          cursorColor: Colors.grey,
                          cursorWidth: 1,
                          style: TextStyle(
                              color: Color(0xffF1F1F1),

                              fontWeight: FontWeight.w300),
                          decoration: new InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffF1F1F1))
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffF1F1F1))
                            ),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffF1F1F1))
                            ),
                            hintText: "Email",
                            hintStyle: TextStyle(
                                color: Color(0xffF1F1F1),
                                fontWeight: FontWeight.w300,
                                fontSize: 14
                            ),
                            contentPadding: EdgeInsets.only(bottom:5.0,left: 6),
                            isDense: true,
                          )
                      ),

                    ),

                    SizedBox(
                      height: height / 60,
                    ),

                    //password textfield
                    Container(
                      width: width/1.6,
                      child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          validator: validatePass,
                          controller: controllerPass,
                          onSaved: (val) =>
                              setState(() => _password=val),


                          textAlign: TextAlign.start,
                          textInputAction: TextInputAction.done,
                          onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),

                          cursorColor: Colors.grey,
                          cursorWidth: 1,
                          obscureText: _obscureText,
                          style: TextStyle(
                              color: Color(0xffF1F1F1),

                              fontWeight: FontWeight.w300),
                          decoration: new InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffF1F1F1))
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffF1F1F1))
                            ),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffF1F1F1))
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(
                                color: Color(0xffF1F1F1),
                                fontWeight: FontWeight.w300,
                                fontSize: 14
                            ),
                            contentPadding: EdgeInsets.only(bottom:5.0,left: 6),
                            isDense: true,
                          )
                      ),

                    ),


                    SizedBox(
                      height: height / 60,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            PageTransition(
                              curve: Curves.bounceOut,
                              type: PageTransitionType.rotate,
                              alignment: Alignment.topCenter,
                              // child: forgetPassword(),
                            ));
                      },
                      child: Container(
                        alignment: Alignment.centerRight,
                        width: width/1.6,
                        child: Text(
                          "Forget Password",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13
                          ),

                        ),
                      ),
                    ),


                    SizedBox(
                      height: height / 50,
                    ),

                    //lohin button
                    //button
                    ButtonTheme(
                      minWidth: width/1.4,
                      child: RaisedButton(

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color:residentbuttonColor,)
                        ),
                        color: residentbuttonColor,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        onPressed: () {
                          final form = _formKey.currentState;
// BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.MyPanicPageClickedEvent);

                          Navigator.pushReplacement(
    context,
    PageTransition(
    curve: Curves.bounceOut,
    type: PageTransitionType.rotate,
    alignment: Alignment.topCenter,
    child: resident_home(),
    ));

                          // if(form.validate())
                          // {
                          //   isLoading = true;
                          //   form.save();
                          //   // FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password)
                          //   //     .then((AuthResult auth)
                          //   // {
                          //     isLoading = false;
                          //     clearControllers();
                          //     Navigator.pushReplacement(
                          //         context,
                          //         PageTransition(
                          //           curve: Curves.bounceOut,
                          //           type: PageTransitionType.rotate,
                          //           alignment: Alignment.topCenter,
                          //           child: navigation_bar(),
                          //         ));
                          //   }

                          // ).catchError((e){
                          //     isLoading=false;
                          //     // Fluttertoast.showToast(msg: "Sign In Failed");
                          //     this.setState((){
                          //       isLoading = false;
                          //     });
                          //     print(e);
                          //   });

                          },



                        child: Text(
                          "Let\'s Go",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ),







                  ],
                ),
              ),
            ),
          )),

    );
  }

  clearControllers()
  {
    controllerEmail = new TextEditingController(text: "");
    controllerPass = new TextEditingController(text: "");
  }

}


String validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value))
    return 'Enter Valid Email';
  else
    return null;
}


String validatePass(String value) {
  if (value.length < 5)
    return 'Password must be more than 5 charater';
  else
    return null;
}

