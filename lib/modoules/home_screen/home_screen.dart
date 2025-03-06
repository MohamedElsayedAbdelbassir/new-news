import 'package:flutter/material.dart';
import 'package:new_news/api/api.dart';
import 'package:new_news/models/source_response.dart';
import 'package:new_news/mywidgets/tapItem.dart';
import 'package:new_news/mywidgets/tap_container.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Sources> sourcesList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202020),
      appBar: AppBar(
        backgroundColor: Color(0xff1877f2),
        centerTitle: true,
        title: Text(
          "New News",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: FutureBuilder(
          future: Api.getSources(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text('Wrong');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      color: Color(0xff1877f2),
                    ),
                    Text(
                      'Loading',
                      style: TextStyle(fontSize: 25, color: Color(0xff1877f2)),
                    )
                  ],
                ),
              );
            }
            var listsource = snapshot.data?.sources ?? [];
            return TapContainer(
              sourcesList: listsource,
            );
          }),
    );
  }
}
