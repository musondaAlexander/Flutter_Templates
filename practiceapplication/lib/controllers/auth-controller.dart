import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceapplication/home.dart';
import 'package:practiceapplication/login.dart';

class AuthController extends GetxController {
  //Need to instantiate the controller
  static AuthController instance = Get.find();

  late Rx<User?> _user;
  // create an instance of firebase auth
  FirebaseAuth auth = FirebaseAuth.instance;
  // attach a Stream binder to user
  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  // create the initialScreen Method To check if the user is logged in or not
  _initialScreen(User? user) {
    if (_user.value == null) {
      Get.offAll(() => LoginScreen());
    } else {
      Get.offAll(() => const Home());
    }
  }

//  Sign method
void register(String email, password) async{
    try{
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    }
    catch(e){
      Get.snackbar("About User", "User Message",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.cyanAccent,
        titleText: const Text("Account Creation Failed ",
          style: TextStyle(color: Colors.white),
          
      ),
        messageText: Text(e.toString(),
          style: const TextStyle(color: Colors.white),
        ),
      );
    }
}
//  Login method
  void login(String email, password)async{
    try{
      await auth.signInWithEmailAndPassword(email: email, password: password);
    }
    catch(e){
      Get.snackbar("About Login", "Login Message",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.cyanAccent,
        titleText: const Text("User Does not Exist",
          style: TextStyle(color: Colors.white),

        ),
        messageText: Text(e.toString(),
          style: const TextStyle(color: Colors.white),
        ),
      );
    }
  }
//  Logout Method
  void logout() async{
    await auth.signOut();
  }
}
