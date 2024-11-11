import 'package:flutter/material.dart';
import '../data/widget_data.dart';
import '../models/widget_model.dart';
import 'detail_screen.dart';
import 'search_delegate.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, List<WidgetModel>> groupedWidgets = {};
    for (var widget in widgets) {
      groupedWidgets.putIfAbsent(widget.group, () => []).add(widget);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Catalog'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: WidgetSearchDelegate());
            },
          ),
        ],
      ),
      body: ListView(
        children: groupedWidgets.entries.map((entry) {
          return ExpansionTile(
            title: Text(entry.key),
            children: entry.value.map((widget) {
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
        }).toList(),
      ),
    );
  }
}
