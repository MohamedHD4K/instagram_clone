import 'package:flutter/material.dart';
import '../widgets/custom_input.dart';
import '../widgets/custom_button.dart';

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
        body: Container(
          width: double.infinity,
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                text: "Login in",
                onPressed: () {
                  Navigator.pushNamed(context, "/singup");
                },
              ),
            ],
          ),
        ));
  }
}
