import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:get/get.dart';

class DummyService extends GetxService {
  final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
  fetchDummyTasks() async {
    await remoteConfig.fetch();
    await remoteConfig.activate();
    final parameterValue = remoteConfig.getString('dummy_tasks');
    return parameterValue;
  }

  fetchDummyTasksDetails() async {
    final parameterValue = remoteConfig.getString('dummy_details');
    return parameterValue;
  }
}
