import 'package:apass/widgets/appBar.dart';
import 'package:apass/widgets/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';



class resident_home extends StatefulWidget {
  @override
  user_reviewState createState() => user_reviewState();
}





class user_reviewState extends State<resident_home> {

  var usertype = "1";

  final controller = PageController();
  String time;




  TabBar tabBarlabel() => TabBar(

      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.home),
          text: "DASHBOARD",
        ),
        Tab(
          icon: Icon(Icons.history),
          text: "HISTORY",
        ),
        Tab(
          icon: Icon(Icons.notification_important),
          text: "NOTIFICATION",
        ),

      ],

      labelColor: Colors.white,
//    labelPadding: EdgeInsets.symmetric(vertical: 6),
      labelStyle: TextStyle(fontSize: 12),
      indicatorColor: Colors.white,
      unselectedLabelColor: Colors.white,
      unselectedLabelStyle: TextStyle(fontSize: 12),
      onTap: (index)
      {
        var content = "";
        switch(index){
          case 0:
            content = "Home";
            break;
          case 1:
            content = "Home";
            break;
            case 2:
            content = "Home";
            break;
        }
        print("$content");
      }
  );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: myAppBAr(),
        backgroundColor: Color(0xffe3e1e1),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[





              Container(
                color: residentbasicColor,
                height: height,
                width: width,
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: <Widget>[

                      SizedBox(
                        height: height / 60,
                      ),


                      Container(
                        child: tabBarlabel(),
                      ),
                      Expanded(
                        child: Container(
                          child: TabBarView(
                            children: <Widget>[
                              Container(
//                              color: Colors.red,
                                child: worker_conatiner(),
                              ),
                              Container(
                                child: user_container(),
                              ),
                              Container(
                                child: user_container(),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
















  Widget worker_conatiner()
  {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
//      height: height/1.1,

        body: Center(child: Text("DashBoard")),
      floatingActionButton: SpeedDial( //https://pub.dev/packages/flutter_speed_dial
        // both default to 16
        marginRight: 18,
        marginBottom: 20,
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22.0),
        // this is ignored if animatedIcon is non null
        //child: Icon(Icons.add),
        //visible: _dialVisible, //I greyed it out, was giving errors
        // If true user is forced to close dial manually
        // by tapping main button and overlay is not rendered.
        closeManually: false,
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print('OPENING DIAL'),
        onClose: () => print('DIAL CLOSED'),
        tooltip: 'Speed Dial',
        heroTag: 'speed-dial-hero-tag',
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 8.0,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
              child: Icon(Icons.person_add),
              backgroundColor: Colors.blue,
              label: 'Individual',
              labelStyle: TextStyle(fontSize: 15.0),
              //onTap: () => print('FIRST CHILD')
              // onTap: (
              //     // _incrementCounter
              // )

            //tooltip: 'Increment',
          ),
          SpeedDialChild(
              child: Icon(Icons.group_add_rounded),
              backgroundColor: Colors.blue,
              label: 'Group',
              labelStyle: TextStyle(fontSize: 15.0),
              //onTap: () => print('SECOND CHILD'),
              // onTap: (
              //     // _incrementCounter
              // )
            //onTap:() {_incrementCounter} //=> print('SECOND CHILD')
          ),
          SpeedDialChild(
            child: Icon(Icons.shield),
            backgroundColor: Colors.red,
            label: 'Panic',
            labelStyle: TextStyle(fontSize: 18.0),
            //onTap: () => print('THIRD CHILD'),
            onTap: (){
              // BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.MyPanicPageClickedEvent);
            },
          ),

        ],
      ),

    );
  }







  Widget user_container()
  {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      child: Center(child: Text("history"))
    );
  }

}






