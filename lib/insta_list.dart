import 'package:flutter/material.dart';
import 'package:ig_clone/insta_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return new ListView.builder(
      itemCount: 5,
            itemBuilder: (context, index)=> index == 0
            ? new SizedBox(
              child: new InstaStories(),
              height: deviceSize.height * 0.2,
        )
            : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0 , 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //1st Row
                      Row(
                        children: [
                          new Container(
                            height: 40.0,
                            width: 40.0,
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
                          new SizedBox(
                            width: 10.0,
                          ),
                          new Text(
                            "Test",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      new IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: null,
                      ),
                    ],
                  ),
                ),

                // 2nd Row
                Flexible(
                  fit: FlexFit.loose,
                  child: new Image.network(
                    "https://wallpapers.moviemania.io/phone/movie/445651/ca9ab1/the-darkest-minds-phone-wallpaper.jpg?w=1536&h=2732%22},{%22w%22:1276,%22url%22:%22//wallpapers.moviemania.io/phone/movie/445651/ca9ab1/the-darkest-minds-phone-wallpaper.jpg",
                    fit: BoxFit.cover,
                  ),
                ),

                //3rd row
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          new Icon(
                            FontAwesomeIcons.heart,
                          ),
                          new SizedBox(
                            width: 16.0,
                          ),
                          new Icon(
                            FontAwesomeIcons.comment,
                          ),
                          new SizedBox(
                            width: 16.0,
                          ),
                          new Icon(
                            FontAwesomeIcons.paperPlane,
                          ),
                        ],
                      ),
                      new Icon(FontAwesomeIcons.bookmark),
                    ],
                  ),
                ),

              ],
            ),
    );
  }
}
