import 'package:flutter/material.dart';
class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(""
                  "Instagram",
              style: TextStyle(
                fontSize: 32
              ),),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.live_tv),
                    iconSize: 30.0,
                    onPressed: (){},
                  ),
                  SizedBox(width: 16.0,),
                  IconButton(
                    icon: Icon(Icons.send),
                    iconSize: 30.0,
                    onPressed: (){},
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
