const String cardCode = '''
// Basic Card with content
Card(
  child: Padding(
    padding: EdgeInsets.all(16.0),
    child: Text('Basic Card Content'),
  ),
)

// Card with elevation and rounded corners
Card(
  elevation: 4.0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12.0),
  ),
  child: Container(
    padding: EdgeInsets.all(16.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('Card with elevation and rounded corners'),
        SizedBox(height: 10),
        Text('Secondary text'),
      ],
    ),
  ),
)

// Card with ListTile and buttons
Card(
  clipBehavior: Clip.antiAlias, // Ensures image doesn't bleed outside the border
  child: Column(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.album),
        title: Text('Card Title'),
        subtitle: Text('Secondary Text'),
      ),
      Image.network('https://picsum.photos/300/150'),
      Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
      ),
      ButtonBar(
        alignment: MainAxisAlignment.start,
        children: [
          TextButton(
            onPressed: () {
              // Perform action
            },
            child: Text('ACTION 1'),
          ),
          TextButton(
            onPressed: () {
              // Perform action
            },
            child: Text('ACTION 2'),
          ),
        ],
      ),
    ],
  ),
)

// Card with custom border and shadow
Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
    side: BorderSide(
      color: Colors.blue.withOpacity(0.5),
      width: 2,
    ),
  ),
  elevation: 5.0,
  shadowColor: Colors.blue.withOpacity(0.3),
  child: Container(
    padding: EdgeInsets.all(16.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'Custom Border and Shadow',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.0),
        Text('Cards can be customized with borders and shadows.'),
      ],
    ),
  ),
)

// Card with InkWell for ripple effect
Card(
  child: InkWell(
    splashColor: Colors.blue.withAlpha(30),
    onTap: () {
      print('Card tapped.');
    },
    child: Container(
      width: 300,
      height: 100,
      child: Center(
        child: Text('Tap to see ripple effect'),
      ),
    ),
  ),
)

// Card with custom color
Card(
  color: Colors.amber.shade50,
  child: Padding(
    padding: EdgeInsets.all(16.0),
    child: Text('Card with custom background color'),
  ),
)

// Card in a ListView
ListView(
  padding: EdgeInsets.all(8.0),
  children: List.generate(
    10,
    (index) => Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text('Card \${index + 1}'),
        subtitle: Text('Description for card \${index + 1}'),
        trailing: Icon(Icons.more_vert),
        onTap: () {},
      ),
    ),
  ),
)
''';
