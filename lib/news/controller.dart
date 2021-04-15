import 'package:dio/dio.dart';
import 'package:qabella/news/model.dart';
import 'package:qabella/widgets/network.dart';

class NewsController {
  NetWork _netWork = NetWork();
  NewsModel _newsModel = NewsModel();
  Future<NewsModel> userNews(
    String title,
    String description,
    String publisherName,
    String image,
    String date,
  ) async {
    FormData _formData = FormData.fromMap({
      'title': title,
      'description': description,
      'publisherName': publisherName,
      'image': image,
      'date': date,
    });
    try {
      var response =
          await _netWork.postData(url: '/ListOfNews', formData: _formData);
      if (response != null) {
        _newsModel = NewsModel.fromJson(response);
      }
    } catch (e) {
      _newsModel = NewsModel(key: 1);
    }
    return _newsModel;
  }
}
