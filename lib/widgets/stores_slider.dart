import 'package:flutter/material.dart';
import './custom_profile_img.dart';

class StoresSlider extends StatelessWidget {
  const StoresSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 10,
        children: <Widget>[
          CustomProfileImg( width: 80, height: 80, profileImage: "assets/images/1.webp" , border: 2, margin: 5 , borderColor:Colors.amber),
          CustomProfileImg( width: 80, height: 80, profileImage: "assets/images/2.webp" , border: 2, margin: 5 , borderColor:Colors.red),
          CustomProfileImg( width: 80, height: 80, profileImage: "assets/images/3.webp" , border: 2, margin: 5 , borderColor:Colors.blue),
          CustomProfileImg( width: 80, height: 80, profileImage: "assets/images/4.jpg" , border: 2, margin: 5 , borderColor:Colors.green),
          CustomProfileImg( width: 80, height: 80, profileImage: "assets/images/5.jpg" , border: 2, margin: 5 , borderColor:Colors.white),
          CustomProfileImg( width: 80, height: 80, profileImage: "assets/images/6.png" , border: 2, margin: 5 , borderColor:Colors.yellow),
          CustomProfileImg( width: 80, height: 80, profileImage: "assets/images/7.png" , border: 2, margin: 5 , borderColor:Colors.purple),
        ],
      ),
    );
  }
}
