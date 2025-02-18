import 'package:flutter/material.dart';
import '../widgets/post.dart';
import '../widgets/stores_slider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "/login");
          },
          icon: Icon(Icons.keyboard_arrow_down_outlined),
          iconSize: 30,
        ),
        title: Text(
          'Instagram',
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("heloowJJ");
            },
            icon: Icon(Icons.favorite_outline),
            iconSize: 25,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message_outlined),
            iconSize: 25,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              spacing: 10,
              children: [
                Container(
                  height: 110,
                  child: StoresSlider(),
                ),
                Post(
                  username: "username",
                  sound: "the sound use",
                  postImage:
                      "https://images.pexels.com/photos/30627050/pexels-photo-30627050/free-photo-of-scenic-landscape-with-cumulonimbus-cloud.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                ),
                Post(
                  username: "another username",
                  sound: "the sound use",
                  postImage:
                      "https://images.pexels.com/photos/30415441/pexels-photo-30415441/free-photo-of-saguaro-cacti-panorama-in-tucson-desert.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                ),
              ],
            )),
      ),
    );
  }
}
