import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardController extends GetxController{
  FlipCardController flipCardController = FlipCardController();
  @override
  void onInit() {
    flipCardController = FlipCardController();
    super.onInit();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}