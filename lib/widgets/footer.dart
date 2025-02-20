import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        decoration:BoxDecoration(
          border: Border(top: BorderSide(color: const Color.fromARGB(255, 43, 43, 43) , width: 1)),
        color: Colors.black,
        ) ,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
                icon: Icon(size: 28, Icons.home_rounded, color: Colors.white)),
            IconButton(
                onPressed: () {},
                icon: Icon(size: 28, Icons.search, color: Colors.white)),
            IconButton(
                onPressed: () {},
                icon: Icon(size: 28, Icons.video_call, color: Colors.white)),
            IconButton(
                onPressed: () {},
                icon: Icon(
                    size: 28,
                    Icons.video_collection_rounded,
                    color: Colors.white)),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/profile");
                },
                icon: Icon(size: 28, Icons.person, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
