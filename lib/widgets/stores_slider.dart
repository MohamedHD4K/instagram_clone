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
          CustomProfileImg( width: 80, height: 80, profileImage: "assets/images/boy1.png" , label: "name", hasStore: true,),
          CustomProfileImg( width: 80, height: 80, profileImage: "assets/images/boy3.png" , label: "ndwada", hasStore: true,),
          CustomProfileImg( width: 80, height: 80, profileImage: "assets/images/girl1.png" , label: "ndwada", hasStore: true,),
          CustomProfileImg( width: 80, height: 80, profileImage: "assets/images/avatar.png" , label: "dasas", hasStore: true,),
          CustomProfileImg( width: 80, height: 80, profileImage: "assets/images/girl2.png" , label: "dadaw", hasStore: true,),
          CustomProfileImg( width: 80, height: 80, profileImage: "assets/images/girl3.png" , label: "dawdadw",),
          CustomProfileImg( width: 80, height: 80, profileImage: "assets/images/boy2.png" , label: "dwada",),
        ],
      ),
    );
  }
}
