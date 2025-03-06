import 'package:flutter/material.dart';
import 'package:new_news/api/api.dart';
import 'package:new_news/modoules/home_screen/home_screen.dart';
import 'package:new_news/models/source_response.dart';

void main() async {
  // Api api = Api();

  // SourcesResponse sp = await api.getSources();
  // print(sp.sources!.length);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
