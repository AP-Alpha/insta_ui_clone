import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/component/story.dart';

class BodyMain extends StatefulWidget {
  final index;
  const BodyMain({
    this.index,
    Key key,
  }) : super(key: key);

  @override
  _BodyMainState createState() => _BodyMainState();
}

class _BodyMainState extends State<BodyMain> {
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          // crossAxisAlignment: CrossAxisAlignment.baseline,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // if (index == 0) SizedBox(height: 45, child: Story_ui()),
            Column(
              children: [
                // SizedBox(
                //   width: 30,
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 29,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://randomuser.me/portraits/men/${88 + widget.index}.jpg"),
                      radius: 26,
                    ),
                    backgroundColor: Colors.pinkAccent,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("User_name",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 25,
                        )),
                    IconButton(onPressed: null, icon: Icon(Icons.more_vert))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Location - City ",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        Container(
          child: Image.network((widget.index == 0 || widget.index == 2)
              ? "https://source.unsplash.com/660x460/?nature,cofee"
              : "https://source.unsplash.com/660x530/?cloth,birds"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        like = !like;
                      });
                    },
                    icon: Icon(
                      FontAwesomeIcons.heart,
                      color: (like) ? Colors.red : Colors.grey,
                    )),
                SizedBox(
                  width: 7,
                ),
                IconButton(
                    onPressed: null, icon: Icon(FontAwesomeIcons.comment)),
                SizedBox(
                  width: 7,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: Icon(FontAwesomeIcons.paperPlane)),
                  ],
                )
              ],
            ),
            IconButton(onPressed: null, icon: Icon(FontAwesomeIcons.bookmark))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 8,
            ),
            Text(
              "Liked by Kenzoaere and 4,523 others ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Container(
                height: 40.0,
                width: 40.0,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new NetworkImage(
                          "https://randomuser.me/portraits/men/${88 + widget.index}.jpg")),
                ),
              ),
              new SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: new TextField(
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    hintText: "Add a comment...",
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          endIndent: 30,
          indent: 30,
          color: Colors.grey,
          thickness: 1,
        ),
      ],
    );
  }
}
