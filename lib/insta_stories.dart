import 'package:flutter/material.dart';

  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("Stories",style: TextStyle(fontWeight: FontWeight.bold),
      ),
      new Row(
        children: [
          new Icon(Icons.play_arrow),
          new Text ("Watch All", style: TextStyle(fontWeight: FontWeight.bold))
        ],
      ),
    ],
  );

class InstaStories extends StatelessWidget {

  final stories = Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: new ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index)=> new Stack(
            alignment: Alignment.bottomRight,
            children: [
              new Container(
                width: 60.0,
                height: 60.0,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(
                      "https://st.depositphotos.com/1779253/5140/v/950/depositphotos_51405259-stock-illustration-male-avatar-profile-picture-use.jpg"
                   ),
                  ),
                ),
              ),
              index ==0 ? Positioned(
                  child: CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    radius: 10.0,
                    child: new Icon(
                        Icons.add,
                        size: 14.0,
                        color: Colors.white,
                    ),
                  ),
              ) : new Container()
            ],
          ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          topText,
          stories
        ],
      ),
    );
  }
}
