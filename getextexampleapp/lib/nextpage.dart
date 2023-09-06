// cReate a stateless widget
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getextexampleapp/controllers/tap_controller.dart';

class NextPage extends StatelessWidget {
  // Create a variable to store the data

  // Create a constructor
  NextPage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    // dependency injection
    TapController controller = Get.find();
    // Return a Scaffold widget
    return Scaffold(
      // Add Appbar to the Scaffold
      appBar: AppBar(
        // Add title text to the Appbar
        title: const Text("Second Page"),
        backgroundColor: const Color.fromARGB(255, 106, 208, 210),
      ),
      // Add body to the Scaffold
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add Text widget to display the data
            GetBuilder<TapController>(
              builder: (controller) {
                return Container(
                  height: 100,
                  width: 400,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 106, 208, 210),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      controller.counter.toString(),
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),

            // Add GestureDetector widget to the body
            GestureDetector(
              // Add onTap property to the GestureDetector
              onTap: () {
                // Call the increment function
                controller.decrement();
              },
              child: Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 106, 208, 210),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "Tap to reduce the number",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 106, 208, 210),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "Welcome to the Second Page",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
