import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    Key? key,
    required this.controller,
    required this.hintText,
    //  this.fun,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  // final Function? fun;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
          controller: controller,
          style: const TextStyle(fontSize: 20, color: Colors.black),
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: hintText,
          )),
    );
  }
}
