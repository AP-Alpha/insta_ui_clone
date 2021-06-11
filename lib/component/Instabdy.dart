import 'package:flutter/material.dart';
import 'story.dart';
import 'bodyMain.dart';

class Insta_Body extends StatefulWidget {
  @override
  _Insta_BodyState createState() => _Insta_BodyState();
}

class _Insta_BodyState extends State<Insta_Body> {
  double size1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (i, index) {
          return Flexible(
            child: index == 0
                ? SizedBox(
                    height: 120,
                    child: Story_ui(),
                  )
                : BodyMain(
                    index: index,
                  ),
          );
        },
        itemCount: 8,
        padding: EdgeInsets.only(top: 5),
      ),
    );
  }
}
