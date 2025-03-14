import 'package:flutter/material.dart';

class DismissiblePreview extends StatefulWidget {
  const DismissiblePreview({super.key});

  @override
  State<DismissiblePreview> createState() => _DismissiblePreviewState();
}

class _DismissiblePreviewState extends State<DismissiblePreview> {
  final List<String> _items = List.generate(5, (index) => 'Item ${index + 1}');
  final List<Color> _colors = [
    Colors.blue.shade100,
    Colors.green.shade100,
    Colors.amber.shade100,
    Colors.red.shade100,
    Colors.purple.shade100,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Swipe items left or right to dismiss them',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: _items.isEmpty
              ? const Center(
                  child: Text(
                    'All items dismissed',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              : ListView.builder(
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
                    final item = _items[index];
                    final color = _colors[index % _colors.length];

                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 8.0),
                      child: Dismissible(
                        key: Key(item),
                        background: Container(
                          padding: const EdgeInsets.only(left: 20.0),
                          alignment: Alignment.centerLeft,
                          color: Colors.green,
                          child: const Icon(Icons.check, color: Colors.white),
                        ),
                        secondaryBackground: Container(
                          padding: const EdgeInsets.only(right: 20.0),
                          alignment: Alignment.centerRight,
                          color: Colors.red,
                          child: const Icon(Icons.delete, color: Colors.white),
                        ),
                        onDismissed: (direction) {
                          setState(() {
                            _items.removeAt(index);
                          });

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  direction == DismissDirection.startToEnd
                                      ? '$item completed'
                                      : '$item deleted'),
                              action: SnackBarAction(
                                label: 'UNDO',
                                onPressed: () {
                                  setState(() {
                                    _items.insert(index, item);
                                  });
                                },
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: 60,
                          color: color,
                          child: ListTile(
                            leading: const Icon(Icons.drag_indicator),
                            title: Text(item),
                            trailing: const Icon(Icons.swipe),
                          ),
                        ),
                      ),
                    );
                  },
                ),
        ),
        if (_items.isEmpty)
          ElevatedButton(
            onPressed: () {
              setState(() {
                _items.addAll(List.generate(5, (index) => 'Item ${index + 1}'));
              });
            },
            child: const Text('Reset Items'),
          ),
      ],
    );
  }
}
