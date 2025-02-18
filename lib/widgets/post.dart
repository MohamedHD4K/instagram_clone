import 'package:flutter/material.dart';
import 'custom_profile_img.dart';

class Post extends StatelessWidget {
  const Post(
      {Key? key,
      required this.username,
      required this.postImage,
      this.sound = ""})
      : super(key: key);

  final String username;
  final String postImage;
  final String sound;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 40),
      child: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Image.network(
                    postImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color.fromARGB(111, 31, 30, 30), Color.fromARGB(0, 255, 255, 255)],
                    ),
                  ),
                  child: Positioned(
                    top: 10,
                    left: 10,
                    right: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 10,
                            children: [
                              CustomProfileImg(
                                profileImage: "assets/images/1.webp",
                                width: 40,
                                height: 40,
                                hasStore: true,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    username,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                  Text(
                                    sound,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                ],
                              )
                            ]),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert_outlined,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border_outlined)),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.message_outlined)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.send_outlined))
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.save_alt_rounded))
            ],
          )
        ],
      ),
    );
  }
}
