const String dividerCode = '''
// Basic Divider
Divider()

// Divider with custom thickness
Divider(
  thickness: 2.0,
)

// Divider with color
Divider(
  color: Colors.blue,
)

// Divider with custom height, thickness and color
Divider(
  height: 20.0, // Total height of the Divider (including space above and below)
  thickness: 1.0, // Thickness of the dividing line
  color: Colors.grey,
)

// Divider with custom indentation
Divider(
  indent: 20.0, // Left inset
  endIndent: 20.0, // Right inset
  thickness: 1.0,
  color: Colors.grey,
)

// Divider in a ListView.separated
ListView.separated(
  itemCount: items.length,
  separatorBuilder: (BuildContext context, int index) => Divider(
    height: 1.0,
    color: Colors.grey[300],
  ),
  itemBuilder: (BuildContext context, int index) {
    return ListTile(
      title: Text(items[index]),
    );
  },
)

// Vertical Divider
VerticalDivider(
  width: 20.0, // Total width of the Divider (including space on both sides)
  thickness: 1.0, // Thickness of the dividing line
  color: Colors.grey,
)

// Vertical Divider in a Row
Row(
  children: [
    Icon(Icons.phone),
    VerticalDivider(
      width: 20.0,
      thickness: 1.0,
      color: Colors.grey,
    ),
    Icon(Icons.message),
    VerticalDivider(
      width: 20.0,
      thickness: 1.0,
      color: Colors.grey,
    ),
    Icon(Icons.video_call),
  ],
)

// Divider with text in the middle
Row(
  children: [
    Expanded(
      child: Divider(
        thickness: 1.0,
        color: Colors.grey,
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Text('OR', style: TextStyle(color: Colors.grey)),
    ),
    Expanded(
      child: Divider(
        thickness: 1.0,
        color: Colors.grey,
      ),
    ),
  ],
)

// Divider used as section separator with padding
Column(
  children: [
    Text('Section 1'),
    ListTile(title: Text('Item 1')),
    ListTile(title: Text('Item 2')),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Divider(
        thickness: 1.0,
        color: Colors.grey[400],
      ),
    ),
    Text('Section 2'),
    ListTile(title: Text('Item 3')),
    ListTile(title: Text('Item 4')),
  ],
)
''';
