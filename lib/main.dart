import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/custom_input.dart';
import 'widgets/custom_button.dart';
import 'widgets/post.dart';
import 'widgets/stores_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(useMaterial3: true),
      home: const Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram',
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          iconSize: 30,
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
            icon: Icon(Icons.send),
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
                  height: 90,
                  child: StoresSlider(),
                ),
                Post(
                  username: "username",
                  postImage:
                      "https://images.pexels.com/photos/30627050/pexels-photo-30627050/free-photo-of-scenic-landscape-with-cumulonimbus-cloud.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                ),
                Post(
                  username: "another username",
                  postImage:
                      "https://images.pexels.com/photos/30415441/pexels-photo-30415441/free-photo-of-saguaro-cacti-panorama-in-tucson-desert.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                ),
                Column(
                  spacing: 10,
                  children: [
                    CustomInput(label: "Username" , icon: Icon(Icons.person),),
                    CustomInput(label: "Email" , icon: Icon(Icons.email),),
                    CustomInput(label: "Password" , isPassword: true, icon: Icon(Icons.lock),),
                    CustomButton(
                      text: "Click Me",
                      onPressed: () {
                        print("Button Clicked!");
                      },
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
