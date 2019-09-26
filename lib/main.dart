import 'package:flutter/material.dart';
import 'screens/first_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Clock',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new AppClock(),
    );
  }
}

class AppClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(55),
              child: Container(
                color: Colors.transparent,
                child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      TabBar(
                        indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                              color: Color(0xffff0863),
                              width: 4.0,
                            ),
                            insets: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0)),
                        indicatorWeight: 15,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: Color(0xFF2D386B),
                        labelStyle: TextStyle(
                            fontSize: 12,
                            letterSpacing: 1.3,
                            fontWeight: FontWeight.w500),
                        unselectedLabelColor: Colors.black26,
                        tabs: <Widget>[
                          Tab(
                            text: "ALARMS",
                            icon: Icon(
                              Icons.watch_later,
                              size: 40,
                            ),
                          ),
                          Tab(
                            text: "RECORDS",
                            icon: Icon(
                              Icons.menu,
                              size: 40,
                            ),
                          ),
                          Tab(
                            text: "PROFILE",
                            icon: Icon(
                              Icons.supervised_user_circle,
                              size: 40,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: FirstTab(),
              ),
              Text("Second Screen"),
              Text("Thirst Screen"),
            ],
          ),
        ),
      ),
    );
  }
}
