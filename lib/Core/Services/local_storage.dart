

import 'package:shared_preferences/shared_preferences.dart';

class AppLocal {
  static const imageKey = 'image_key';
  static const nameKey = 'name_key';
  static const isUploadKey = 'isUploadKey';

  static Future<void> cachData(String key, dynamic value) async {
    var pref = await SharedPreferences.getInstance();
    if (value is bool) {
      pref.setBool(key, value);
    } else {
      pref.setString(key, value);
    }
  }

  static Future<dynamic> getCashedData(String key) async {
    var pref = await SharedPreferences.getInstance();
    return pref.get(key);
  }
}
