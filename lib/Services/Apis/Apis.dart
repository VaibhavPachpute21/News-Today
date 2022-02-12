import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:newstoday/Services/Models/NewsModel.dart';
import 'package:newstoday/globalData.dart' as global;
import 'dart:convert' as convert; 

class NewsServices{
  final baseUrl="newsapi.org";
  final _apiKey="022048e8ef234980a069fa73c04d1c15";
  


  getEverything() async {

    final url = Uri.https(baseUrl, 'v2/top-headlines', {
      'apiKey': _apiKey,
      'country': 'us',
    });
    final resp = await http.get(url);
    final newsResponse = NewsResponse.fromJson(resp.body);
    global.headLines.addAll(newsResponse.articles);
    print(global.headLines);
  
  }

    getLocalData() async {

    final url = Uri.https(baseUrl, 'v2/top-headlines', {
      'apiKey': _apiKey,
      'country': 'in',
    });
    final resp = await http.get(url);
    final newsResponse = NewsResponse.fromJson(resp.body);
    global.localLeadLines.addAll(newsResponse.articles);
    print(global.localLeadLines);
  
  }

}