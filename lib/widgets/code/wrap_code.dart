const String wrapCode = '''
// Basic Wrap widget with colored containers
Wrap(
  spacing: 8.0, // gap between adjacent widgets
  runSpacing: 4.0, // gap between lines
  children: <Widget>[
    Container(width: 80, height: 80, color: Colors.red),
    Container(width: 80, height: 80, color: Colors.blue),
    Container(width: 80, height: 80, color: Colors.green),
    Container(width: 80, height: 80, color: Colors.yellow),
    Container(width: 80, height: 80, color: Colors.orange),
    Container(width: 80, height: 80, color: Colors.purple),
  ],
)

// Wrap with alignment options
Wrap(
  spacing: 8.0,
  runSpacing: 8.0,
  alignment: WrapAlignment.center, // How the widgets are aligned horizontally
  runAlignment: WrapAlignment.spaceBetween, // How each line is aligned vertically
  crossAxisAlignment: WrapCrossAlignment.center, // How the widgets are aligned within a line
  direction: Axis.horizontal, // Direction in which the widgets are laid out
  children: <Widget>[
    Chip(label: Text('Chip 1')),
    Chip(label: Text('Chip 2')),
    Chip(label: Text('Chip 3')),
    Chip(label: Text('Chip 4')),
    Chip(label: Text('Chip 5')),
    Chip(label: Text('Chip 6')),
  ],
)

// Real-world example: Tag list with Wrap and Chips
class TagsList extends StatelessWidget {
  final List<String> tags = [
    'Flutter',
    'Dart',
    'Firebase',
    'UI',
    'Material Design',
    'iOS',
    'Android',
    'Web',
    'Desktop',
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: tags.map((tag) {
        return Chip(
          label: Text(tag),
          backgroundColor: Colors.blue.shade100,
          labelStyle: TextStyle(color: Colors.blue.shade800),
          deleteIcon: Icon(Icons.close, size: 16),
          onDeleted: () {
            // Handle tag deletion
            print('Delete tag: \$tag');
          },
        );
      }).toList(),
    );
  }
}

// Wrap with vertical direction
Wrap(
  direction: Axis.vertical,
  spacing: 8.0,
  runSpacing: 8.0,
  children: <Widget>[
    Chip(label: Text('Item 1')),
    Chip(label: Text('Item 2')),
    Chip(label: Text('Item 3')),
    Chip(label: Text('Item 4')),
    Chip(label: Text('Item 5')),
  ],
)

// Wrap inside a responsive UI
LayoutBuilder(
  builder: (BuildContext context, BoxConstraints constraints) {
    return Container(
      width: constraints.maxWidth,
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: List.generate(
          10,
          (index) => Container(
            width: constraints.maxWidth > 600 
                ? constraints.maxWidth / 6 - 10 
                : constraints.maxWidth / 3 - 10,
            height: 100,
            color: Colors.primaries[index % Colors.primaries.length],
            child: Center(child: Text('\$index')),
          ),
        ),
      ),
    );
  },
)

// New Wrap with Chips and avatars
Wrap(
  spacing: 8.0,
  runSpacing: 8.0,
  children: <Widget>[
    Chip(
      label: Text('Flutter'),
      backgroundColor: Colors.blue.shade100,
      labelStyle: TextStyle(color: Colors.blue),
      avatar: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text('F'),
      ),
    ),
    Chip(
      label: Text('Dart'),
      backgroundColor: Colors.blue.shade100,
      labelStyle: TextStyle(color: Colors.blue),
      avatar: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text('D'),
      ),
    ),
    Chip(
      label: Text('Android'),
      backgroundColor: Colors.blue.shade100,
      labelStyle: TextStyle(color: Colors.blue),
      avatar: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text('A'),
      ),
    ),
    // Add more Chips as needed
  ],
)
''';
