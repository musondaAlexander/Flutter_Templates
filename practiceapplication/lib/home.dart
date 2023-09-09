import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practiceapplication/controllers/auth-controller.dart';

class Home extends StatelessWidget {
  String email;
   Home({Key?key,required this.email}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Container(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("welcome: $email",
               style:  TextStyle(
                 fontSize: 20,
                 color: Colors.cyanAccent,
               ),
             ),
             SizedBox(height: 20,),

             ElevatedButton(onPressed:(){
               AuthController.instance.logout();
             },
                 child:
             Text("Sign Out"),
             ),
           ],
         ),
       ),
     ),
    );
  }
}
