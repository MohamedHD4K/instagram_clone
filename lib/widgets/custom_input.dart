import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInput extends StatelessWidget {
  const CustomInput(
      {Key? key, this.label = "", this.isPassword = false, required this.icon})
      : super(key: key);

  final String label;
  final bool isPassword;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1, horizontal: 8),
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.green,
      ),
      child: TextField(
        keyboardType: isPassword ? null : TextInputType.emailAddress,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: label,
          hintStyle: TextStyle(color: Colors.green[100]),
          border: InputBorder.none,
          prefixIcon: icon,
          suffixIcon: isPassword
              ? IconButton(
                  icon: Icon(Icons.visibility),
                  onPressed: () {},
                )
              : null,
          suffixIconColor: Colors.green[100],
          prefixIconColor: Colors.green[100],
        ),
      ),
    );
  }
}
