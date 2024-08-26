import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            Obx(
              () => Text(
                controller.bilangan.toString(),
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (controller.bilangan.value < 50) {
                      controller.bilangan.value++;
                      if (controller.bilangan.value == 50) {
                        Get.snackbar(
                          "Notice",
                          "Counter has reached 50!",
                          snackPosition: SnackPosition.BOTTOM,
                        );
                      }
                    } else {
                      Get.snackbar(
                        "Warning",
                        "Counter cannot exceed 50",
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    }
                  },
                  child: const Icon(Icons.add),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    if (controller.bilangan.value > 0) {
                      controller.bilangan.value--;
                      if (controller.bilangan.value == 0) {
                        Get.snackbar(
                          "Notice",
                          "Counter has reached 0!",
                          snackPosition: SnackPosition.BOTTOM,
                        );
                      }
                    } else {
                      Get.snackbar(
                        "Warning",
                        "Counter cannot be negative",
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    }
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.bilangan.value = 0;
                Get.snackbar(
                  "Reset",
                  "Counter has been reset to 0",
                  snackPosition: SnackPosition.BOTTOM,
                );
              },
              child: const Text('Reset Button'),
            ),
          ],
        ),
      ),
    );
  }
}
