import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/post.dart';
import 'package:instagram_clone/widgets/stores_slider.dart';
import 'package:instagram_clone/widgets/footer.dart';

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
        title: Center(
          child: Text(
            'Instagram',
            style: TextStyle(fontSize: 30),
          ),
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
      body: Stack(children: [
        Positioned(
          bottom: 20,
          right: 0,
          left: 0,
          top: 0,
          child: SingleChildScrollView(
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
                      postImage: "assets/images/4.jpg",
                      profileImage: "assets/images/boy1.png",
                      bio: "dwadwadawddadasdwacaaddadwad",
                    ),
                    Post(
                      username: "another username",
                      sound: "the sound use",
                      postImage: "assets/images/3.webp",
                      profileImage: "assets/images/girl3.png",
                      bio: "dawjdiwoapdjwdwaissdwdadasaaopadwj",
                    ),
                    Post(
                      username: "hamude el_dude wd",
                      sound: "diowadawdawjdowiae",
                      postImage: "assets/images/7.png",
                      profileImage: "assets/images/boy2.png",
                      bio: "This will give you a button that has no background and only the text, but it still maintains the click interaction.",
                    ),
                  ],
                )),
          ),
        ),
        Footer()
      ]),
    );
  }
}
