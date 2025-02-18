import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class CustomProfileImg extends StatelessWidget {
  const CustomProfileImg({
    Key? key,
    required this.width,
    required this.height,
    required this.profileImage,
    this.hasStore = false,
    this.label = "no",
  }) : super(key: key);

  final double width;
  final double height;
  final String profileImage;
  final String label;
  final bool hasStore;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width,
          height: height,
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: hasStore ? const GradientBoxBorder(
              width: 2 ,
              gradient: const SweepGradient(
                colors: [
                  Color(0xFF833AB4),
                  Color(0xFFFF4B2B),
                  Color(0xFFFFC107),
                  Color(0xFF833AB4),
                ],
              ),
            ) : Border.all(width: 2 , color: Colors.transparent),
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(profileImage),
          ),
        ),
        if (label != "no") Text(label),
      ],
    );
  }
}
