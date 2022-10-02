import 'package:flutter/material.dart';
import 'package:flutter_application_1/from_to.dart';
import 'package:flutter_application_1/widgets/custom_text_feild.dart';

class logout extends StatefulWidget {
  logout({Key? key}) : super(key: key);

  @override
  State<logout> createState() => _logoutState();
}

class _logoutState extends State<logout> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 8,
          centerTitle: true,
          title:  Text(" حساب جديد", style: TextStyle(fontSize: 24))),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          CustomTextFeild(controller: emailController,hintText: 'enter mail'),
          CustomTextFeild(controller: phoneController,hintText: 'enter phone'),
          CustomTextFeild(controller: nameController,hintText: 'enter name'),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => trip()));
            },
            child: Text("دخول", style: TextStyle(fontSize: 24)),
          ),
        ]),
      ),
    );
  }
}
