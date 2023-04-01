import 'package:get/get.dart';

class FirstPageController extends GetxController {
  RxInt count = 0.obs;
  RxInt number = 0.obs;

  void remove() {
    number = number--;
  }

  void add() {
    number = number++;
  }
}
