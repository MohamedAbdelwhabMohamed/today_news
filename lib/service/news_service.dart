import 'package:dio/dio.dart';
import 'package:today_news/model/artical_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticalModel>> getTopheadLines({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=cb3d0a444ab942d9a345737ce39e9bdd&category=$category');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticalModel> articalList = [];

      for (var article in articles) {
        ArticalModel articalModel = ArticalModel.fromJson(article);
        articalList.add(articalModel);
      }
      return articalList;
    } catch (e) {
      return [];
    }
  }
}
