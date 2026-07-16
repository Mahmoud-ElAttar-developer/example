// ignore_for_file: strict_top_level_inference

import 'dart:convert';

import 'package:example/Core/news_model/news_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class ApiServices {
  Future<NewsModel?> getNewsByCategory(category) async {
    try {
      var url = Uri.parse(
        'https://gnews.io/api/v4/top-headlines?category=$category&lang=en&apikey=d6dcad420b6b6e241a2936a1163f16bb',
      );
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        NewsModel newsModel = NewsModel.fromJson(data);
        return newsModel;
      } else {
        // السطور التالية ستطبع لنا المشكلة بالتفصيل في الـ Console
        debugPrint("API Error Status Code: ${response.statusCode}");
        debugPrint("API Error Body: ${response.body}");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  Future<NewsModel?> getNewsBySlider(category) async {
    try {
      var url = Uri.parse(
        'https://gnews.io/api/v4/top-headlines?category=$category&lang=en&apikey=d6dcad420b6b6e241a2936a1163f16bb',
      );
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        NewsModel newsModel = NewsModel.fromJson(data);
        return newsModel;
      } else {
        // السطور التالية ستطبع لنا المشكلة بالتفصيل في الـ Console
        debugPrint("API Error Status Code: ${response.statusCode}");
        debugPrint("API Error Body: ${response.body}");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  // --------------------------Search News--------------------------
  Future<NewsModel?> getNewsBySearch(searchKey) async {
    try {
      var url = Uri.parse(
        'https://gnews.io/api/v4/search?q=$searchKey&example&apikey=d6dcad420b6b6e241a2936a1163f16bb',
      );
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        NewsModel newsModel = NewsModel.fromJson(data);
        return newsModel;
      } else {
        // السطور التالية ستطبع لنا المشكلة بالتفصيل في الـ Console
        debugPrint("API Error Status Code: ${response.statusCode}");
        debugPrint("API Error Body: ${response.body}");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
