import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceapplication/login.dart';

// create a stataeless widget for login screen
class SignApp extends StatelessWidget {
  SignApp({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     // title: const Text('Login Screen'),
      //     ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
          child: Center(
            child: Column(children: [
              const SizedBox(height: 50),
              Image.asset('assets/images/logoicon.ico', height: 60, width: 60),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            offset: Offset(0, 10))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text('Welcome',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                              )),
                          const Text("Enter your credentials to create account",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontFamily: AutofillHints.addressState)),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: 300,
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                icon: Icon(Icons.email),
                                hintText: 'Email',
                              ),
                            ),
                          ),
                          // INPUT FIELD FOR PASSWORD
                          const SizedBox(height: 20),
                          SizedBox(
                            width: 300,
                            child: TextField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock),
                                hintText: 'Password',
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: 300,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 85, 176, 250)),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.white),
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Text(emailController.text),
                                    );
                                  },
                                );
                              },
                              child: Text('Sign Up'),
                            ),
                          ),
                          const SizedBox(height: 20),
                          // SizedBox(
                          //   width: 300,
                          //   child: ElevatedButton(
                          //     onPressed: () {
                          //       Get.to(LoginScreen());
                          //     },
                          //     child: Text('login'),
                          //   ),
                          // ),
                        ]),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => LoginScreen());
                },
                child: const Text('Already have an account? Login'),
              ),
            ]),
          )),
    );
  }
}
