import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapp/Views/Models/NewModel.dart';

class NewService {
  Future<List<NewModel>> newservice({required String category}) async {
    String apikey = '5a96afff6c4e49a6a887745159a7b95d';
    http.Response response = await http.get(Uri.parse(
        'https://newsapi.org/v2/everything?q=$category&apiKey=$apikey'));
    var data = jsonDecode(response.body);
    List<dynamic> articles = data['articles'];
    List<NewModel> mylist = [];
    for (var article in articles) {
      NewModel articleModel = NewModel.fromjson(article);
      mylist.add(articleModel);
    }

    return mylist;
  }
}
