import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:newstoday/Screens/Drawer.dart';
import 'package:newstoday/Screens/screens/ArticlesScreen.dart';
import 'package:newstoday/Screens/screens/HomeScreen.dart';
import 'package:newstoday/Services/Apis/Apis.dart';


class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<LandingPage> {
  int _selectedIndex = 0;
  bool isLoading=true;
  final List<Widget> _widgetOption = [
    const NewsHomeScreen(),
    const NewsArticlesScreen(),
    const Center(child:  Text("Working on My City Screen")),
    const Center(child:  Text("Working on Live Screen"))
  ];

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    await NewsServices().getEverything();
    await NewsServices().getLocalData();
    setState(() {
      isLoading=false;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        titleSpacing: 5,
        title:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
           const Text("Welcome,"),
           const Text("Carol Collins",style: TextStyle(fontSize: 14),)
        ],
      ),
      actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Notification',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            tooltip: 'More',
            onPressed: () {},
          ), //IconButton
        ],
      ),
      drawer: MyDrawer(),
      body:isLoading?const Center(child:  CircularProgressIndicator()) : _widgetOption.elementAt(_selectedIndex),
      bottomNavigationBar:bottomNav(),
     // bottomNavigationBar: bottomNav(),
    );
  }

  Widget bottomNav() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined), label: "Articles"),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_city_outlined),
          label: "My City",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.live_tv_outlined),
          label: "Live",
        ),
      ],
      
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.red.shade200,
      type: BottomNavigationBarType.shifting,
      currentIndex: _selectedIndex,
      iconSize: 30,
      onTap: _onItemTapped,
      elevation: 5,
    );
  }


}
