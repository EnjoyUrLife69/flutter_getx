import 'package:get/get.dart';

class CounterController extends GetxController {
  final bilangan = 0.obs;

  void tambahsatu() {
    bilangan.value++;
  }

  void kurangsatu() {
    bilangan.value--;
  }

  void resetAngka() {
    bilangan.value = 0;
  }
}
