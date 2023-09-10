import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:practiceapplication/controllers/auth-controller.dart';
import 'package:practiceapplication/login.dart';
import 'package:get/get.dart';
import 'package:practiceapplication/splash_screen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
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
      home: SplashScreen(),
    );
  }
}
