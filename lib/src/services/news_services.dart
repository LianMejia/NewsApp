import 'package:flutter/material.dart';
import 'package:newsapp/src/models/news_models.dart';
import 'package:http/http.dart' as http;

final _URL_NEWS = 'https://newsapi.org/v2';
final _APIKEY = '99726442993e4e8f87cd0c76a62ca005';

class NewsService with ChangeNotifier {
  List<Article> headlines = [];
  NewsService() {
    getTopHeadlines();
  }

  getTopHeadlines() async {
    final url = '$_URL_NEWS/top-headlines?apiKey=$_APIKEY&country=us';
    final resp = await http.get(Uri.parse(url));

    final newsResponse = newsResponseFromJson(resp.body);

    headlines.addAll(newsResponse.articles!);
    notifyListeners();
  }
}
