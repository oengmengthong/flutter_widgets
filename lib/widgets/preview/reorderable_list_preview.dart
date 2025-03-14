import 'package:flutter/material.dart';

class ReorderableListPreview extends StatefulWidget {
  const ReorderableListPreview({Key? key}) : super(key: key);

  @override
  State<ReorderableListPreview> createState() => _ReorderableListPreviewState();
}

class _ReorderableListPreviewState extends State<ReorderableListPreview> {
  final List<String> _items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ReorderableListView(
        shrinkWrap: true,
        children: _items
            .map((item) => ListTile(
                  key: ValueKey(item),
                  title: Text(item),
                  leading: const Icon(Icons.drag_handle),
                  tileColor: Colors.white,
                ))
            .toList(),
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
            final String item = _items.removeAt(oldIndex);
            _items.insert(newIndex, item);
          });
        },
      ),
    );
  }
}
