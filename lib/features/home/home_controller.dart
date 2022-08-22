import 'dart:async';

import 'package:get/get.dart';

class HomeController extends GetxController {
  var counter = 0.obs;

  void counterIncrease() {
    counter(counter.value + 1);
  }
}
