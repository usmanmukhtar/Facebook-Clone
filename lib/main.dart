import 'package:flutter/material.dart';
import 'presentation/custom_icons_icons.dart';
import 'pages/home.dart';
import 'pages/bell.dart';
import 'pages/chat.dart';
import 'pages/more.dart';
import 'pages/search.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FacebookMain(),
    );
  }
}

class FacebookMain extends StatefulWidget {
  @override
  _FacebookMainState createState() => _FacebookMainState();
}

class _FacebookMainState extends State<FacebookMain> {
  List<Widget> pages = [
    Home(),
    Search(),
    Chat(),
    Bell(),
    More()
  ];
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        body: TabBarView(
          children: pages,
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(bottom: 20),
          child: new TabBar(
            tabs: [
              Tab(
                icon: Icon(CustomIcons.newsPaper),
              ),
              Tab(
                icon: Icon(CustomIcons.magnifyingGlass),
              ),
              Tab(
                icon: Icon(CustomIcons.chat),
              ),
              Tab(
                icon: Icon(CustomIcons.bell),
              ),
              Tab(
                icon: Icon(CustomIcons.chat),
              ),
          ],
          unselectedLabelColor: Colors.black,
          labelColor: Colors.blue,
          indicatorColor: Colors.transparent,
          ),
          ),
      ),
    );
  }
}