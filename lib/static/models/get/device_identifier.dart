
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DeviceIdIdentifier extends GetxController {
  String get deviceId => GetStorage().read('deviceId') ?? 'Empty';
  void writeDeviceId(String? id) => GetStorage().write('deviceId', id);
  void clearDeviceId() => GetStorage().remove('deviceId');
}