import 'package:flutter/material.dart';
import '../widgets/custom_input.dart';
import '../widgets/custom_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Login",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 40,
          children: [
            SvgPicture.asset(
              "assets/images/Instagram_logo.SVG",
              color: Colors.white,
              width: 230,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  spacing: 10,
                  children: [
                    CustomInput(
                      label: "Username",
                      icon: Icon(Icons.person),
                    ),
                    CustomInput(
                      label: "Password",
                      isPassword: true,
                      icon: Icon(Icons.lock),
                    ),
                    CustomButton(
                      child:Text("Log In" , style: TextStyle(color: Colors.white),),
                      onPressed: () {
                        Navigator.pushNamed(context, "/singup");
                      },
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                  child: Row(spacing: 10, children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    Text("or"),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
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
            ),
          ],
        ));
  }
}
