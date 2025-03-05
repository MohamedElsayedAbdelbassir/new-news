import 'package:flutter/material.dart';
import 'package:new_news/modoules/source_response.dart';
import 'package:new_news/mywidgets/tapItem.dart';

class TapContainer extends StatefulWidget {
  TapContainer({super.key, required this.sourcesList});
  List<Sources> sourcesList = [];

  @override
  State<TapContainer> createState() => _TapContainerState();
}

class _TapContainerState extends State<TapContainer> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.sourcesList.length,
      child: TabBar(
        onTap: (index) {
          setState(() {
            selectedindex = index;
          });
        },
        isScrollable: true,
        tabs: widget.sourcesList
            .map(
              (source) => Tapitem(
                source: source,
                isSelected: selectedindex == widget.sourcesList.indexOf(source),
              ),
            )
            .toList(),
      ),
    );
  }
}
