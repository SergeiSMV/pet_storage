


import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DevicePlatform extends GetxController {
  String get currentPlatform => GetStorage().read('currentPlatform') ?? 'Empty';
  void writePlatform(String? platform) => GetStorage().write('currentPlatform', platform);
  void clearDeviceId() => GetStorage().remove('deviceId');
}