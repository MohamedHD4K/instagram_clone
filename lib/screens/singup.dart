import 'package:flutter/material.dart';
import '../widgets/custom_input.dart';
import '../widgets/custom_button.dart';

class Singup extends StatelessWidget {
  const Singup({Key? key}) : super(key: key);

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
              text: "Sing up",
              onPressed: () {
                Navigator.pushNamed(context, "/");
              },
            ),
          ],
        ),
      ),
    );
  }
}
