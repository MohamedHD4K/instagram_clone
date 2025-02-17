import 'package:flutter/material.dart';
import 'custom_profile_img.dart';

class Post extends StatelessWidget {
  final String username;
  final String postImage;

  const Post({Key? key, required this.username, required this.postImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.symmetric(vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(children: [
            CustomProfileImg(
              profileImage: "assets/images/1.webp",
              width: 40,
              height: 40,
              border: 1,
              margin: 10,
              borderColor: Colors.white,
            ),
            Text(
              username,
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ]),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.blue,
            child: Image.network(postImage , fit: BoxFit.cover,),
          ),
        ],
      ),
    );
  }
}
