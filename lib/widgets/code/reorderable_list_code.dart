const String reorderableListCode = '''
// Basic ReorderableListView in a StatefulWidget
class MyReorderableList extends StatefulWidget {
  const MyReorderableList({Key? key}) : super(key: key);

  @override
  State<MyReorderableList> createState() => _MyReorderableListState();
}

class _MyReorderableListState extends State<MyReorderableList> {
  final List<String> _items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
  ];

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      padding: const EdgeInsets.all(8.0),
      children: <Widget>[
        for (int index = 0; index < _items.length; index++)
          ListTile(
            key: Key('\$index'),
            title: Text(_items[index]),
            trailing: const Icon(Icons.drag_handle),
            tileColor: index.isOdd ? Colors.grey.shade200 : null,
          ),
      ],
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            // Removing the item at oldIndex will shorten the list by 1.
            newIndex -= 1;
          }
          final String item = _items.removeAt(oldIndex);
          _items.insert(newIndex, item);
        });
      },
    );
  }
}

// ReorderableListView with custom drag handle and behavior
ReorderableListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) {
    return Card(
      key: Key('\$index'),
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: ReorderableDragStartListener(
          index: index,
          child: const Icon(Icons.drag_indicator),
        ),
        title: Text(items[index]),
        subtitle: Text('Drag to reorder'),
      ),
    );
  },
  onReorder: (int oldIndex, int newIndex) {
    // Handle reordering
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final item = items.removeAt(oldIndex);
    items.insert(newIndex, item);
  },
  proxyDecorator: (Widget child, int index, Animation<double> animation) {
    // Customize the appearance of the item while it's being dragged
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        return Material(
          elevation: 6.0,
          color: Colors.transparent,
          shadowColor: Colors.blue.shade100,
          child: child,
        );
      },
      child: child,
    );
  },
)

// ReorderableListView inside a Card
Card(
  margin: const EdgeInsets.all(8.0),
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: ReorderableListView(
      shrinkWrap: true, // Important when inside a scrollable widget
      physics: const NeverScrollableScrollPhysics(), // Use parent's scrolling
      children: <Widget>[
        for (int index = 0; index < items.length; index++)
          ListTile(
            key: Key('\$index'),
            title: Text(items[index]),
            dense: true,
          ),
      ],
      onReorder: (oldIndex, newIndex) {
        // Handle reordering logic
      },
    ),
  ),
)

// ReorderableListView with ValueKey
class _ReorderableListExampleState extends State<ReorderableListExample> {
  final List<String> _items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      children: _items
          .map((item) => ListTile(
                key: ValueKey(item),
                title: Text(item),
                leading: Icon(Icons.drag_handle),
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
    );
  }
}
''';
