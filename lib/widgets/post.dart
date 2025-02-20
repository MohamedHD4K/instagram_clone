import 'package:flutter/material.dart';
import 'custom_profile_img.dart';

class Post extends StatelessWidget {
  const Post(
      {Key? key,
      required this.username,
      required this.postImage,
      required this.bio,
      required this.profileImage,
      this.sound = ""})
      : super(key: key);

  final String username;
  final String postImage;
  final String sound;
  final String bio;
  final String profileImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: Image.asset(
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
                      colors: [
                        Color.fromARGB(158, 27, 27, 27),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
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
                                profileImage: profileImage,
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
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "$username ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: bio,
                  )
                ],
              ),
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "10h ago . ",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ))
        ],
      ),
    );
  }
}
