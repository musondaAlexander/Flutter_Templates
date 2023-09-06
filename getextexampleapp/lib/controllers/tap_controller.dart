// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class TapController extends GetxController {
  int _counter = 0;
  int get counter => _counter;

  // function to increment the counter
  void increment() {
    _counter++;
    update();
    print(_counter);
  }
}
