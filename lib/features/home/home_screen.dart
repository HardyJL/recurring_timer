import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recurring_timer/features/home/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Obx(
        () => Center(
          child: Text(
            controller.counter.value.toString(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.counterIncrease,
      ),
    );
  }
}
