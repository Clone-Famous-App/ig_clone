import 'package:flutter/material.dart';

import 'package:ig_clone/insta_list.dart';

class InstaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(child: InstaList())
      ],
    );
  }
}
