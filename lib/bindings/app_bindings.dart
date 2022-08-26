import 'package:get/get.dart';
import 'package:recurring_timer/features/timer/timer_controller.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.create<TimerController>(() => TimerController());
  }
}
