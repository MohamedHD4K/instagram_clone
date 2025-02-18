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
          CustomProfileImg( width: 80, height: 80, profileImage: "assets/images/1.webp" , label: "name", hasStore: true,),
          CustomProfileImg( width: 80, height: 80, profileImage: "assets/images/3.webp" , label: "ndwada", hasStore: true,),
          CustomProfileImg( width: 80, height: 80, profileImage: "assets/images/4.jpg" , label: "ndwada", hasStore: true,),
          CustomProfileImg( width: 80, height: 80, profileImage: "assets/images/5.jpg" , label: "dasas", hasStore: true,),
          CustomProfileImg( width: 80, height: 80, profileImage: "assets/images/6.png" , label: "dadaw", hasStore: true,),
          CustomProfileImg( width: 80, height: 80, profileImage: "assets/images/7.png" , label: "dawdadw",),
          CustomProfileImg( width: 80, height: 80, profileImage: "assets/images/2.webp" , label: "dwada",),
        ],
      ),
    );
  }
}
