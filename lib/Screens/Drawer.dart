// ignore_for_file: prefer_const_constructors

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
            padding: const EdgeInsets.only(left:5 ),
            child: Text("Personalization",style: TextStyle(fontSize:18,   ) ),
          ),

          Padding(padding: const EdgeInsets.only(left: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              children: [
                Icon(Icons.notifications),
                Text("Notifications"),
                
              ],
            ),
            Icon(Icons.toggle_on,color: Colors.red,)
          ],),
          ),

           Padding(padding: const EdgeInsets.only(left: 6,top: 4),
          child: Row(children: [
            Icon(Icons.list_alt_outlined),
            Text("Home screen setup")
           
          ],),
          ),

          Padding(padding: const EdgeInsets.only(left: 6,top: 4),
          child: Row(children: [
            Icon(Icons.text_fields),
            Text("Text Size")
           
          ],),
          ),

          Padding(
            padding: const EdgeInsets.only(left:5,top: 5 ),
            child: Text("Support",style: TextStyle(fontSize:18,   ) ),
          ),

          Padding(padding: const EdgeInsets.only(left: 6,top: 4),
          child: Row(children: [
            Icon(Icons.rate_review),
            Text("Rate us")
           
          ],),
          ),
          Padding(padding: const EdgeInsets.only(left: 6,top: 4),
          child: Row(children: [
            Icon(Icons.share),
            Text("Share")
           
          ],),
          ),
          Padding(padding: const EdgeInsets.only(left: 6,top: 4),
          child: Row(children: [
            Icon(Icons.feedback),
            Text("Feedback")
           
          ],),
          ),

          
          Padding(
            padding: const EdgeInsets.only(left:5,top: 5 ),
            child: Text("Privacy",style: TextStyle(fontSize:18,   ) ),
          ),

          Padding(padding: const EdgeInsets.only(left: 6,top: 4),
          child: Row(children: [
            Icon(Icons.info),
            Text("About us")
           
          ],),
          ),
          Padding(padding: const EdgeInsets.only(left: 6,top: 4),
          child: Row(children: [
            Icon(Icons.security_update_warning_rounded),
            Text("Vesrion (1.0.1)")
           
          ],),
          ),
          Padding(padding: const EdgeInsets.only(left: 6,top: 4),
          child: Row(children: [
            Icon(Icons.privacy_tip_outlined),
            Text("Privacy Policy")
           
          ],),
          ),
           Padding(padding: const EdgeInsets.only(left: 6,top: 4),
          child: Row(children: [
            Icon(Icons.list_alt_sharp),
            Text("Terms and Conditions")
           
          ],),
          ),
          Padding(padding: const EdgeInsets.only(left: 6,top: 50),
          child: Row(children: [
            Icon(Icons.logout),
            Text("Log out")
           
          ],),
          ),


          // Padding(
          //   padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
          //   child: Container(
          //     decoration: BoxDecoration(
          //         border:
          //             Border(bottom: BorderSide(color: Colors.grey.shade400))),
          //     child: InkWell(
          //         splashColor: Colors.orangeAccent,
          //         //onTap: onTap,
          //         child: Container(
          //             height: 40,
          //             child: Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: <Widget>[
          //                 Row(
          //                   children: <Widget>[
          //                     Icon(Icons.person),
          //                     Padding(
          //                       padding: const EdgeInsets.all(8.0),
          //                     ),
          //                     Text(
          //                       "Profile",
          //                       style: TextStyle(fontSize: 16),
          //                     ),
          //                   ],
          //                 ),
          //                 Icon(Icons.arrow_right)
          //               ],
          //             ))),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
          //   child: Container(
          //     decoration: BoxDecoration(
          //         border:
          //             Border(bottom: BorderSide(color: Colors.grey.shade400))),
          //     child: InkWell(
          //         splashColor: Colors.orangeAccent,
          //         //onTap: onTap,
          //         child: Container(
          //             height: 40,
          //             child: Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: <Widget>[
          //                 Row(
          //                   children: <Widget>[
          //                     Icon(Icons.notifications),
          //                     Padding(
          //                       padding: const EdgeInsets.all(8.0),
          //                     ),
          //                     Text(
          //                       "Notifications",
          //                       style: TextStyle(fontSize: 16),
          //                     ),
          //                   ],
          //                 ),
          //                 Icon(Icons.arrow_right)
          //               ],
          //             ))),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
          //   child: Container(
          //     decoration: BoxDecoration(
          //         border:
          //             Border(bottom: BorderSide(color: Colors.grey.shade400))),
          //     child: InkWell(
          //         splashColor: Colors.orangeAccent,
          //         //onTap: onTap,
          //         child: Container(
          //             height: 40,
          //             child: Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: <Widget>[
          //                 Row(
          //                   children: <Widget>[
          //                     Icon(Icons.settings),
          //                     Padding(
          //                       padding: const EdgeInsets.all(8.0),
          //                     ),
          //                     Text(
          //                       "Settings",
          //                       style: TextStyle(fontSize: 16),
          //                     ),
          //                   ],
          //                 ),
          //                 Icon(Icons.arrow_right)
          //               ],
          //             ))),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
          //   child: Container(
          //     decoration: BoxDecoration(
          //         border:
          //             Border(bottom: BorderSide(color: Colors.grey.shade400))),
          //     child: InkWell(
          //         splashColor: Colors.orangeAccent,
          //         //onTap: onTap,
          //         child: Container(
          //             height: 40,
          //             child: Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: <Widget>[
          //                 Row(
          //                   children: <Widget>[
          //                     Icon(Icons.lock),
          //                     Padding(
          //                       padding: const EdgeInsets.all(8.0),
          //                     ),
          //                     Text(
          //                       "Logout",
          //                       style: TextStyle(fontSize: 16),
          //                     ),
          //                   ],
          //                 ),
          //                 Icon(Icons.arrow_right)
          //               ],
          //             ))),
          //   ),
          // ),
        
        
        ],
      ),
    );
  }
}
