import 'package:flutter/material.dart';
import 'package:new_news/modoules/source_response.dart';

class Tapitem extends StatelessWidget {
  Tapitem({super.key, required this.source, required this.isSelected});
  Sources source;
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xff1877f2)),
        color: isSelected ? Color(0xff1877f2) : Colors.transparent,
      ),
      child: Text(
        source.name ?? '',
        style: TextStyle(
          fontSize: 20,
          color: isSelected ? Color(0xff202020) : Colors.white,
        ),
      ),
    );
  }
}
