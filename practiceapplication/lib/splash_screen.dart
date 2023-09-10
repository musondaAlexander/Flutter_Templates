
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Colors.white,
      child: CircularProgressIndicator(

        strokeWidth: 20,
        color: Colors.lightBlue,
      ),
    );
  }
}
