import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'get/device_platform.dart';

Future<String> currentDevice() async {
  String deviceIdentifier = "unknown";
    try {
      if(kIsWeb){
        WebBrowserInfo webInfo = await DeviceInfoPlugin().webBrowserInfo;
        deviceIdentifier = webInfo.vendor.toString() + webInfo.userAgent.toString() + webInfo.hardwareConcurrency.toString();
        DevicePlatform().writePlatform('web');
        return deviceIdentifier;
      }
      else {
        AndroidDeviceInfo androidInfo = await DeviceInfoPlugin().androidInfo;
        deviceIdentifier = androidInfo.id.toString();
        DevicePlatform().writePlatform('android');
        return deviceIdentifier;
      }
    } on PlatformException {
      deviceIdentifier = 'Failed to get deviceId';
      return deviceIdentifier;
    }
}

