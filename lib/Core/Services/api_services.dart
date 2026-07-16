import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  // دالة عامة لإرسال طلبات جلب البيانات من أي رابط
  Future<Map<String, dynamic>?> get({required String url}) async {
    try {
      var uri = Uri.parse(url);
      var response = await http.get(uri);

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        return data; // نُعيد البيانات في شكل خريطة خام (Map)
      } else {
        debugPrint("API Error Status Code: ${response.statusCode}");
        debugPrint("API Error Body: ${response.body}");
        return null;
      }
    } catch (e) {
      debugPrint("API Catch Error: ${e.toString()}");
      return null;
    }
  }
}
