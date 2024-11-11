import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/widget_model.dart';
import '../utils/code_highlighter.dart';

class DetailScreen extends StatelessWidget {
  final WidgetModel widgetModel;

  const DetailScreen({super.key, required this.widgetModel});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Preview and Code tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text(widgetModel.title),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Preview'),
              Tab(text: 'Code'),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.copy),
              onPressed: () {
                Clipboard.setData(ClipboardData(text: widgetModel.code));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Copied to clipboard')),
                );
              },
            ),
          ],
        ),
        body: TabBarView(
          children: [
            // Preview Tab
            widgetModel.preview,
            // Code Tab
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: CodeHighlighter(code: widgetModel.code),
            ),
          ],
        ),
      ),
    );
  }
}
