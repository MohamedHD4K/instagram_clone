import 'package:flutter/material.dart';
import '../widgets/custom_input.dart';
import '../widgets/custom_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text(
          "Sinup",
          style: TextStyle(fontSize: 30),
        ),
      )),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 20,
          children: [
            SvgPicture.asset(
              "assets/images/Instagram_logo.SVG",
              color: Colors.white,
              width: 230,
            ),
            Column(
              children: [
                Column(
                  spacing: 10,
                  children: [
                    CustomInput(
                      label: "Username",
                      icon: Icon(Icons.person),
                    ),
                    CustomInput(
                      label: "Email",
                      icon: Icon(Icons.email),
                    ),
                    CustomInput(
                      label: "Password",
                      isPassword: true,
                      icon: Icon(Icons.lock),
                    ),
                    CustomButton(
                      child: Text("Sing up" , style: TextStyle(color: Colors.white),),
                      onPressed: () {
                        Navigator.pushNamed(context, "/");
                      },
                    ),
                  ],
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account? " , style: TextStyle(
                              fontWeight: FontWeight.w300, color: Colors.white)) ,
                        Text(
                          " Log in",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.lightBlue),
                        ),
                      ],
                    )),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 70 , vertical: 20),
                  child: Row(spacing: 10, children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        height: 15,
                      ),
                    ),
                    Text("or"),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        height: 9,
                      ),
                    ),
                  ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 10,
                  children: [
                    OutlinedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100))),
                        child: SvgPicture.asset(
                          "assets/images/x.svg",
                          width: 30,
                          color: Colors.white,
                        )),
                    OutlinedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100))),
                        child: SvgPicture.asset(
                          "assets/images/google.svg",
                          width: 30,
                          color: Colors.white,
                        )),
                    OutlinedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100))),
                        child: SvgPicture.asset(
                          "assets/images/facebook.svg",
                          width: 30,
                          color: Colors.white,
                        )),
                  ],
                ),
                TextButton(
                    onPressed: () {
                      print("i forget me password");
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent),
                    child: Text(
                      "Did you forgot your password?",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.white),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
