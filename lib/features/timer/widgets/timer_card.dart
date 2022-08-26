import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recurring_timer/features/timer/timer_controller.dart';

class TimerCard extends StatelessWidget {
  TimerCard({
    Key? key,
    required this.maxValue,
  }) : super(key: key);

  final double maxValue;

  final timerController = Get.find<TimerController>();
  bool isStarted = false;
  @override
  Widget build(BuildContext context) {
    timerController.initState(maxValue);
    return InkWell(
      onTap: _toggleTimer,
      child: Card(
        elevation: 5,
        child: Container(
          height: 300,
          width: 300,
          padding: const EdgeInsets.all(20),
          child: Obx(() {
            return Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  strokeWidth: 5,
                  valueColor: const AlwaysStoppedAnimation(Colors.green),
                  backgroundColor: Colors.white,
                  value: timerController.time.value.toDouble() / maxValue,
                ),
                Center(
                  child: Text(
                    (timerController.time.value).toString().padLeft(2, '0'),
                    style: Theme.of(context).textTheme.headline3,
                  ),
                )
              ],
            );
          }),
        ),
      ),
    );
  }

  void _toggleTimer() {
    if (!isStarted) {
      timerController.startTimer();
    } else {
      timerController.stopTimer();
    }
    isStarted = !isStarted;
  }
}
