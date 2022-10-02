import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

class spl_sc extends StatefulWidget {
  spl_sc({Key? key}) : super(key: key);

  @override
  State<spl_sc> createState() => _spl_scState();
}

class _spl_scState extends State<spl_sc> {
  // @override
  // void initState() async {
  //   // TODO: implement initState
  //   super.initState();
  //   navigate();
  // }

  // void navigate() async {
  //   await Future.delayed(const Duration(milliseconds: 1500), () {});
    
  //   // ignore: use_build_context_synchronously
  //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login()));
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Image.asset(
            "assets/bus_splash.jpg",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
