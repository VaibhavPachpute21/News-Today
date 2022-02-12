import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return  Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[Colors.red, Colors.red])),
              child: Column(
                children: const <Widget>[
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    elevation: 10,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FlutterLogo(
                        size: 70,
                      ),
                    ),
                  ),
                  Text(
                    'News Today',
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
            child: Container(
              decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey.shade400))),
              child: InkWell(
                  splashColor: Colors.orangeAccent,
                  //onTap: onTap,
                  child: Container(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.person),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                              ),
                              Text(
                                "Profile",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_right)
                        ],
                      ))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
            child: Container(
              decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey.shade400))),
              child: InkWell(
                  splashColor: Colors.orangeAccent,
                  //onTap: onTap,
                  child: Container(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.notifications),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                              ),
                              Text(
                                "Notifications",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_right)
                        ],
                      ))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
            child: Container(
              decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey.shade400))),
              child: InkWell(
                  splashColor: Colors.orangeAccent,
                  //onTap: onTap,
                  child: Container(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.settings),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                              ),
                              Text(
                                "Settings",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_right)
                        ],
                      ))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
            child: Container(
              decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey.shade400))),
              child: InkWell(
                  splashColor: Colors.orangeAccent,
                  //onTap: onTap,
                  child: Container(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.lock),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                              ),
                              Text(
                                "Logout",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_right)
                        ],
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}
