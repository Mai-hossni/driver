import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/from_to.dart';
import 'package:flutter_application_1/screens/logout.dart';
import 'package:flutter_application_1/station.dart';
import 'package:flutter_application_1/widgets/custom_text_feild.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);
  static const String routName = 'loginscreen';
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 8,
          title: Center(
            child: Text("تسجيل دخول السائق", style: TextStyle(fontSize: 24)),
          )),
      body: Container(
        // color: Colors.red, 
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Spacer(),

              CustomTextFeild(
                  controller: nameController, hintText: 'ادخل اسم المستخدم'),
              // Spacer(),

              CustomTextFeild(
                  controller: passswordController,
                  hintText: 'ادخل اسم المستخدم'),
              // Spacer(),
              // const SizedBox(height: 20),
              TextButton(onPressed: () {}, child: Text("نسيت كلمة المرور")),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => station()));
                },
                child: Text("دخول", style: TextStyle(fontSize: 24)),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => logout()));
                  },
                  child:
                      Text("تسجيل سائق جديد", style: TextStyle(fontSize: 24)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
