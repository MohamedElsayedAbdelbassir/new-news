import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:new_news/models/news_response.dart';
import 'package:new_news/models/source_response.dart';

class Api {
  //https://newsapi.org/v2/top-headlines/sources?apiKey=516feb6061714cc8bad7a8a18ddcc790&category=technology
  static Future<SourcesResponse> getSources() async {
    Uri url = Uri.https("newsapi.org", "/v2/top-headlines/sources", {
      "apiKey": "516feb6061714cc8bad7a8a18ddcc790",
      // "category":"technology"
    });
    var response = await http.get(url);
    String responseBody = response.body;
    Map<String, dynamic> jsonBody = jsonDecode(responseBody);

    return SourcesResponse.fromJson(jsonBody);
  }

  //GET https://newsapi.org/v2/everything?q=bitcoin&apiKey=516feb6061714cc8bad7a8a18ddcc790
 Future<newsResponse> getNews() async {
    Uri url = Uri.https("newsapi.org", "/v2/everything", {
      "apiKey": "516feb6061714cc8bad7a8a18ddcc790",
    });
    var response = await http.get(url);
    String resposeBody = response.body;
    Map<String, dynamic> jsonBody = jsonDecode(resposeBody);
    return newsResponse.fromJson(jsonBody);
  }
}
