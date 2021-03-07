import 'package:flutter/material.dart';

import 'insta_body.dart';


class InstaHome extends StatelessWidget {

  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: new Icon(Icons.camera_alt),
    title: SizedBox(
      height: 35.0, child: Image.asset("assets/images/instagram_logo.png")),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topBar,
      body: new InstaBody(),
      bottomNavigationBar: new Container(
        color:Colors.white,
        height: 50.0,
        // alignment: Alignment.center,
        child: new BottomAppBar(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            new IconButton(
              icon: Icon(
                Icons.home,
              ),
              onPressed: (){},
            ),
            new IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: (){},
            ),
            new IconButton(
              icon: Icon(
                Icons.add_box,
              ),
              onPressed: (){},
            ),
            new IconButton(
              icon: Icon(
                Icons.favorite,
              ),
              onPressed: (){},
            ),
            new IconButton(
              icon: Icon(
                Icons.account_box,
              ),
              onPressed: (){},
            ),
          ],
        ),
        ),
      ),
    );
  }
}
