import 'dart:async';
import 'dart:developer';
import 'package:get/get.dart';

class TimerController extends GetxController {
  final time = 0.obs;
  late double maxValue;
  void initState(double maxValue) {
    this.maxValue = maxValue;
  }

  Timer? timer;
  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (time.value < maxValue) {
        time.value += 1;
      } else {
        return;
      }
    });
  }

  void stopTimer() {
    if (timer != null) {
      timer!.cancel();
      time.value = 0;
    }
  }
}
