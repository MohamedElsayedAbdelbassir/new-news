import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:new_news/modoules/source_response.dart';

class Api {
  //https://newsapi.org/v2/top-headlines/sources?apiKey=516feb6061714cc8bad7a8a18ddcc790&category=technology
  Future<SourcesResponse> getSources() async {
    Uri url = Uri.https("newsapi.org", "/v2/top-headlines/sources", {
      "apiKey": "516feb6061714cc8bad7a8a18ddcc790",
    });
    var response = await http.get(url);
    String responseBody = response.body;
    Map<String, dynamic> jsonBody = jsonDecode(responseBody);
    return SourcesResponse.fromJson(jsonBody);
  }
}
