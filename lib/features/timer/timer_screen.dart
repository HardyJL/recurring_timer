import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recurring_timer/features/timer/timer_controller.dart';
import 'package:recurring_timer/features/timer/widgets/timer_card.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TimerCard(
                maxValue: 100,
              ),
              TimerCard(
                maxValue: 20,
              ),
              // const SizedBox(
              //   height: 24,
              // ),
              // ElevatedButton(
              //   onPressed: () {
              //     timerController.startTimer();
              //   },
              //   child: const Text('START'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
