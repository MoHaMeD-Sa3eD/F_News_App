import 'package:dio/dio.dart';

import '../Models/ArticleModel.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});

  Future<List<ArticleModel>> getNews({required String category}) async {
    Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=64128536c1b84367a7f0d162bdebfe9b&category=$category',
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articlesObjects = [];

    for (var article in articles) {
      ArticleModel articles = ArticleModel.fromApi(article);
      articlesObjects.add(articles);
    }
    return articlesObjects;
  }
}
