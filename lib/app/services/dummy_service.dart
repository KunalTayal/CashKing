import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:get/get.dart';

class DummyService extends GetxService {
  fetchDummyTasks() async {
    final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.fetch();
    await remoteConfig.activate();
    final parameterValue = remoteConfig.getString('dummy_tasks');
    print(parameterValue);
    return parameterValue;
  }

  fetchDummyTasksDetails() async {
    final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.fetch();
    await remoteConfig.activate();
    final parameterValue = remoteConfig. getString('dummy_details');
    print(parameterValue);
    return parameterValue;
  }
}
