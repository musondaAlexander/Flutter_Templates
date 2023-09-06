// cReate a stateless widget
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NextPage extends StatelessWidget {
  // Create a variable to store the data

  // Create a constructor
  NextPage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    // Return a Scaffold widget
    return Scaffold(
      // Add Appbar to the Scaffold
      appBar: AppBar(
        // Add title text to the Appbar
        title: Text("Second Page"),
      ),
      // Add body to the Scaffold
      body: Center(
        // Add Text widget to display the data
        child: Text("Welcome to the Second Page"),
      ),
    );
  }
}
