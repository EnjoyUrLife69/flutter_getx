import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final bilangan = 0.obs;

  void tambahSatu() {
    bilangan.value >= 10
        ? Get.snackbar('Notice', 'Counter has reached 10!',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.amber)
        : bilangan.value++;
  }

  void kurangSatu() {
    bilangan.value <= 0
        ? Get.snackbar('Notice', 'Counter has reached 0!',
           snackPosition: SnackPosition.BOTTOM,
           backgroundColor: Colors.amber)
        : bilangan.value--;
  }

  void resetAngka() {
    bilangan.value = 0;
    Get.snackbar('Reset', 'Counter has been reset to 0',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.amber);
  }
}
