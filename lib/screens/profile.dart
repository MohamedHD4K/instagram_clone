import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/custom_button.dart';
import 'package:instagram_clone/widgets/custom_profile_img.dart';
import 'package:instagram_clone/widgets/footer.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  final bool isMyProflie = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Profile",
          style: TextStyle(fontSize: 30),
        )),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    spacing: 20,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomProfileImg(
                              width: 100,
                              height: 100,
                              profileImage: "assets/images/avatar.png"),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            width: 230,
                            child: Column(
                              spacing: 20,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "username",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "10",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        Text(
                                          "Posts",
                                          style: TextStyle(fontSize: 13),
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "10",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        Text(
                                          "Followers",
                                          style: TextStyle(fontSize: 13),
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "10",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        Text(
                                          "Following",
                                          style: TextStyle(fontSize: 13),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Text(
                            "In Flutter, you can create a button without "),
                      ),
                      Row(
                        spacing: 10,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: CustomButton(
                                child: Text(
                                  isMyProflie ? "Edit profile" : "Follow",
                                  style: TextStyle(color: Colors.white),
                                ),
                                outline: isMyProflie,
                                borderRadios: 18,
                                horizotalPadding: 0,
                                onPressed: () {}),
                          ),
                          Expanded(
                            child: CustomButton(
                                child: Text(
                                  isMyProflie ? "Share profile" : "Message",
                                  style: TextStyle(color: Colors.white),
                                ),
                                outline: true,
                                borderRadios: 18,
                                horizotalPadding: 0,
                                onPressed: () {}),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            spacing: 10,
                            children: [
                              CustomButton(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                  outline: true,
                                  borderRadios: 50,
                                  horizotalPadding: 30,
                                  verticalPadding: 30,
                                  onPressed: () {}),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: const Color.fromARGB(255, 43, 43, 43),
                              width: 1))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.crop_square_outlined,
                            color: Colors.white,
                            size: 28,
                          )),
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.video_call,
                            color: Colors.white,
                            size: 28,
                          )),
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.person_2_rounded,
                            color: Colors.white,
                            size: 28,
                          )),
                    ],
                  ),
                ),
                Container(
                    height: 300,
                    width: double.infinity,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Share your moments with friends",
                              style: TextStyle(fontSize: 18)),
                          TextButton(
                              onPressed: null,
                              child: Text(
                                "Creat your firs post",
                                style: TextStyle(
                                    color: Colors.blue[600], fontSize: 15),
                              ))
                        ]))
              ],
            )),
          ),
          Footer()
        ],
      ),
    );
  }
}
