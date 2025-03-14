const String expansionPanelCode = '''
// Basic ExpansionPanelList
class Item {
  Item({
    required this.headerText,
    required this.expandedText,
    this.isExpanded = false,
  });

  String headerText;
  String expandedText;
  bool isExpanded;
}

// In your stateful widget
final List<Item> _items = [
  Item(
    headerText: 'Panel 1',
    expandedText: 'This is the expanded content for Panel 1.',
  ),
  Item(
    headerText: 'Panel 2',
    expandedText: 'This is the expanded content for Panel 2.',
  ),
];

// In your build method
ExpansionPanelList(
  elevation: 3,
  expandedHeaderPadding: EdgeInsets.all(8),
  expansionCallback: (int index, bool isExpanded) {
    setState(() {
      _items[index].isExpanded = !isExpanded;
    });
  },
  children: _items.map<ExpansionPanel>((Item item) {
    return ExpansionPanel(
      headerBuilder: (BuildContext context, bool isExpanded) {
        return ListTile(
          title: Text(item.headerText),
        );
      },
      body: ListTile(
        title: Text(item.expandedText),
      ),
      isExpanded: item.isExpanded,
    );
  }).toList(),
)

// ExpansionPanelList with custom styling
ExpansionPanelList(
  dividerColor: Colors.grey.shade300,
  elevation: 2,
  expandedHeaderPadding: EdgeInsets.all(12),
  expansionCallback: (int index, bool isExpanded) {
    setState(() {
      _items[index].isExpanded = !isExpanded;
    });
  },
  children: _items.map<ExpansionPanel>((Item item) {
    return ExpansionPanel(
      backgroundColor: Colors.blue.shade50,
      canTapOnHeader: true, // Allow tapping on header to expand/collapse
      headerBuilder: (BuildContext context, bool isExpanded) {
        return ListTile(
          leading: Icon(
            isExpanded ? Icons.arrow_drop_down : Icons.arrow_right,
            color: Colors.blue,
          ),
          title: Text(
            item.headerText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade800,
            ),
          ),
        );
      },
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text(item.expandedText),
      ),
      isExpanded: item.isExpanded,
    );
  }).toList(),
)

// ExpansionPanelList.radio for single expansion
ExpansionPanelList.radio(
  initialOpenPanelValue: 1, // Initially opened panel (optional)
  expansionCallback: (int index, bool isExpanded) {
    // No setState needed as radio manages state internally
  },
  children: _items.map<ExpansionPanelRadio>((Item item) {
    return ExpansionPanelRadio(
      value: _items.indexOf(item), // Unique value for each panel
      headerBuilder: (BuildContext context, bool isExpanded) {
        return ListTile(
          title: Text(item.headerText),
        );
      },
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text(item.expandedText),
      ),
    );
  }).toList(),
)
''';

const String expansionTileCode = '''
// ExpansionTile is a simpler alternative to ExpansionPanel
ExpansionTile(
  title: Text('ExpansionTile'),
  subtitle: Text('Tap to expand'),
  leading: Icon(Icons.info),
  backgroundColor: Colors.grey[200],
  children: <Widget>[
    ListTile(
      title: Text('Item 1'),
      onTap: () {
        // Handle tap
      },
    ),
    ListTile(
      title: Text('Item 2'),
      onTap: () {
        // Handle tap
      },
    ),
    Padding(
      padding: EdgeInsets.all(16.0),
      child: Text('Additional information can be placed here'),
    ),
  ],
  onExpansionChanged: (bool expanded) {
    print('Expansion changed: \$expanded');
  },
)

// You can also nest ExpansionTiles
ExpansionTile(
  title: Text('Parent'),
  children: <Widget>[
    ListTile(title: Text('Child 1')),
    ExpansionTile(
      title: Text('Nested ExpansionTile'),
      children: <Widget>[
        ListTile(title: Text('Nested Child 1')),
        ListTile(title: Text('Nested Child 2')),
      ],
    ),
    ListTile(title: Text('Child 3')),
  ],
)
''';
