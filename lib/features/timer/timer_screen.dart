import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recurring_timer/features/timer/timer_controller.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final timerController = Get.put(TimerController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: timerController.startTimer),
      body: GetBuilder<TimerController>(
        init: TimerController(),
        builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: CircularProgressIndicator(
                        strokeWidth: 12,
                        valueColor: AlwaysStoppedAnimation(
                            timerController.seconds == 60
                                ? Colors.green
                                : Colors.red),
                        backgroundColor: Colors.white,
                        value: timerController.seconds /
                            TimerController.maxSeconds,
                      ),
                    ),
                    Center(
                      child: Text(
                        timerController.seconds.toString(),
                        style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          color: timerController.isCompleted()
                              ? const Color.fromARGB(255, 8, 123, 12)
                              : const Color.fromARGB(255, 178, 14, 2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
