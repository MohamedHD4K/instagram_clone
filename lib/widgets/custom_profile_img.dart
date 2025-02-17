import 'package:flutter/material.dart';

class CustomProfileImg extends StatelessWidget {
  const CustomProfileImg(
      {Key? key,
      required this.width,
      required this.height,
      required this.margin,
      required this.profileImage,
      this.border = 1,
      this.borderColor = Colors.white})
      : super(key: key);

  final double width;
  final double height;
  final double margin;
  final double border;
  final Color borderColor;
  final String profileImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset( profileImage,
          fit: BoxFit.cover,
          width: width,
          height: height,
        ),
      ),
    );
  }
}
