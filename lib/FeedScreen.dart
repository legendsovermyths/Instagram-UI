import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  List stories = [
    "assets/images/user0.png",
    "assets/images/user1.png",
    "assets/images/user2.png",
    "assets/images/user3.png",
    "assets/images/user4.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Instagram",
                  style: TextStyle(fontSize: 32, fontFamily: "Billabong"),
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.live_tv),
                      iconSize: 30.0,
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Container(
                      width: 35.0,
                      child: IconButton(
                        icon: Icon(Icons.send),
                        iconSize: 30.0,
                        onPressed: () {},
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stories.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return SizedBox(
                    width: 10,
                  );
                }
                return Container(
                  margin: EdgeInsets.all(10),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 6.0,
                        color: Colors.black54)
                  ]),
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image(
                        height: 60,
                        width: 60,
                        image: AssetImage(stories[index - 1]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Container(
              width: double.infinity,
              height: 530,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Container(
                            margin: EdgeInsets.all(1),
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0, 2),
                                      blurRadius: 6.0,
                                      color: Colors.black54)
                                ]),
                            child: CircleAvatar(
                              child: ClipOval(
                                child: Image(
                                  height: 50,
                                  width: 50,
                                  image: AssetImage("assets/images/user2.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          title: Text(
                            "Julie",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("5 mins"),
                          trailing: IconButton(
                            icon: Icon(Icons.more_horiz),
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10.0),
                          width: double.infinity,
                          height: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black45,
                                offset: Offset(0,5),
                                blurRadius: 8.0,
                              )
                            ],
                            image: DecorationImage(
                              image: AssetImage("assets/images/post0.jpg"),
                              fit: BoxFit.fitWidth,

                            )
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
