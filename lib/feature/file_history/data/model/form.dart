import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Form extends GetxController {
  RxString name = "بلا مورعة".obs;
  RxInt countofrooms = 0.obs;

  void setname() {
    name.value = "Happy Form";
    // update();
  }

  int x = 0;
  void setroom() {
    x++;

    countofrooms.value = x;
    // update();
  }
}
