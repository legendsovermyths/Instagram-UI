import 'package:flutter/material.dart';
class FeedScreen extends StatelessWidget {
  List stories=["assets/images/user0.png","assets/images/user1.png","assets/images/user2.png","assets/images/user3.png","assets/images/user4.jpg"];
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
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: "Billabong"
                ),),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.live_tv),
                      iconSize: 30.0,
                      onPressed: (){},
                    ),
                    SizedBox(width: 16.0,),
                    Container(
                      width: 35.0,
                      child: IconButton(
                        icon: Icon(Icons.send),
                        iconSize: 30.0,
                        onPressed: (){},
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
              itemCount: stories.length+1,
              itemBuilder: (BuildContext context,int index){
                if(index==0){
                  return SizedBox(width: 10,);
                }
                return Container(
                  margin: EdgeInsets.all(10),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(

                        offset: Offset(0,2),
                        blurRadius: 6.0,
                        color: Colors.black54
                      )
                    ]
                  ),
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image(
                        height: 60,
                        width: 60,
                        image: AssetImage(stories[index-1]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
