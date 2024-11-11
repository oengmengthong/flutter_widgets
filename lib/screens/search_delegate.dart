import 'package:flutter/material.dart';
import '../data/widget_data.dart';
import 'detail_screen.dart';

class WidgetSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) => [/* Clear query action */];

  @override
  Widget buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        },
      );

  @override
  Widget buildResults(BuildContext context) {
    final results = widgets.where(
        (widget) => widget.title.toLowerCase().contains(query.toLowerCase()));

    return ListView(
      children: results.map((widget) {
        return ListTile(
          title: Text(widget.title),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DetailScreen(widgetModel: widget),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) => buildResults(context);
}
