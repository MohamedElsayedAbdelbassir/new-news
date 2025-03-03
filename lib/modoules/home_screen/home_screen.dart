import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                width: 20,
              ),
              itemBuilder: (BuildContext context, int index) {
                return MaterialButton(
                  color: Colors.white,
                  onPressed: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
