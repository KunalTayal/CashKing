import 'package:cashkingdemo/app/model/task_detail_model.dart';
import 'package:get/get.dart';

import '../../../services/dummy_service.dart';

class OfferPageController extends GetxController {
  List<TaskDetails> taskDetail = [];
  @override
  Future<void> onInit() async {
    super.onInit();
    taskDetail =
        taskDetailsFromJson(await DummyService().fetchDummyTasksDetails());
  }
}
