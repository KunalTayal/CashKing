import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/task_model.dart';
import '../../../services/dummy_service.dart';

class HomeController extends GetxController {
  final PageController pageController = PageController();
  final Rx<int> currentIndex = 0.obs;
  List<TaskModel> taskModel = [];

  @override
  Future<void> onInit() async {
    taskModel = taskModelFromJson(await DummyService().fetchDummyTasks());
    super.onInit();
  }

  @override
  void onReady() {
    update();
    super.onReady();
  }
}
