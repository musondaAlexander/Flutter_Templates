import 'package:flutter/material.dart';
import 'package:practiceapplication/login.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 58, 127, 183)),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}
