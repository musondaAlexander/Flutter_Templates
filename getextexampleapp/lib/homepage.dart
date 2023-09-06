import 'package:flutter/material.dart';
import 'package:getextexampleapp/controllers/tap_controller.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

import 'nextpage.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Dependency Injection
    TapController controller = Get.put(TapController());
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (tapController) {
              return Container(
                width: 400,
                height: 100,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    controller.counter.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              );
            }),

            const SizedBox(
              height: 20,
            ),

            GestureDetector(
              onTap: () {
                controller.increment();
              },
              child: Container(
                width: 400,
                height: 100,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Tap To Add 1  to the Number',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
            // put some Space
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => NextPage());
              },
              child: Container(
                width: 400,
                height: 100,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Go to Next Page',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
            // put some Space
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 400,
                height: 100,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Hello World',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
            // put some Space
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
