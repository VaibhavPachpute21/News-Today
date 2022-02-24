import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:newstoday/Services/Models/NewsModel.dart';
import 'package:newstoday/globalData.dart' as global;
import 'dart:convert' as convert; 

class NewsServices{
  final baseUrl="newsapi.org";
  final _apiKey="022048e8ef234980a069fa73c04d1c15";
  
  getSearchNews(String query) async {

    final url = Uri.https(baseUrl, 'v2/everything', {
      'apiKey': _apiKey,
      'q': query,
    });
    final resp = await http.get(url);

    print(resp.statusCode);
    final newsResponse = NewsResponse.fromJson(resp.body);
    global.searchNews.addAll(newsResponse.articles);
    print(global.searchNews);
    return newsResponse.articles;
  
  }

  getEverything() async {

    final url = Uri.https(baseUrl, 'v2/top-headlines', {
      'apiKey': _apiKey,
      'country': 'us',
    });
    final resp = await http.get(url);
    if(resp.statusCode==200){
      final newsResponse = NewsResponse.fromJson(resp.body);
      global.headLines.addAll(newsResponse.articles);
      print(global.headLines);
      return newsResponse.articles;
    }
    
  
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