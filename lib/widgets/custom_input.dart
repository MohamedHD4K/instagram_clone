import 'package:flutter/material.dart';

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
          color: Colors.grey[800],
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(5)),
      child: TextField(
        keyboardType: isPassword ? null : TextInputType.emailAddress,
        obscureText: isPassword,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: label,
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
