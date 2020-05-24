import 'package:flutter/material.dart';
import 'package:facebook_clone/main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<String> _stories = [
     "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
    "https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
    "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
    "https://images.unsplash.com/photo-1527082395-e939b847da0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
    "https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Divider(),
            Container(
              margin: EdgeInsets.only(top: 30, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Stories", 
                    style: TextStyle(
                      fontFamily: "SF Pro Display",
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.arrow_right, color: Color(0xff3578e5),),

                      Text("PLAY ALL", 
                        style: TextStyle(
                          fontFamily: "SF Pro Display",
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Color(0xff3578e5)
                        ),
                      ),
                    ],
                  )
                  
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 75,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: _stories.map((image) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        width: 2,
                        color: Color(0xff3578e5)
                      )
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      padding: EdgeInsets.all(2),
                      child: ClipOval(
                        child: Image(
                          image: NetworkImage(image),
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}