import 'dart:async';

import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
import 'package:user_g/Withdraw_Successful.dart';
class Loader extends StatefulWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Withdraw_Successful()
            )
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Appcolor.PrimaryColor ,
      body: Center(
        child: CircularProgressIndicator(color: Colors.red,strokeWidth: 5),
      )
    );
  }
}
