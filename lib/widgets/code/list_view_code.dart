const String listViewCode = '''
// Basic ListView.builder
ListView.builder(
  itemCount: 50,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text('Item \${index + 1}'),
      subtitle: Text('Tap for more information'),
      leading: CircleAvatar(
        child: Text('\${index + 1}'),
        backgroundColor: Colors.primaries[index % Colors.primaries.length],
      ),
      onTap: () {
        print('Item \${index + 1} tapped');
      },
    );
  },
)

// ListView with separators
ListView.separated(
  itemCount: items.length,
  separatorBuilder: (BuildContext context, int index) => const Divider(),
  itemBuilder: (BuildContext context, int index) {
    return ListTile(
      title: Text(items[index]),
      onTap: () {
        // Handle tap
      },
    );
  },
)

// ListView with custom items
ListView(
  padding: EdgeInsets.all(16.0),
  children: <Widget>[
    Container(
      height: 50,
      color: Colors.amber[600],
      child: Center(child: Text('Entry A')),
    ),
    Container(
      height: 50,
      color: Colors.amber[500],
      child: Center(child: Text('Entry B')),
    ),
    Container(
      height: 50,
      color: Colors.amber[400],
      child: Center(child: Text('Entry C')),
    ),
    Container(
      height: 50,
      color: Colors.amber[300],
      child: Center(child: Text('Entry D')),
    ),
  ],
)

// Horizontal ListView
Container(
  height: 100,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 10,
    itemBuilder: (context, index) {
      return Container(
        width: 120,
        margin: EdgeInsets.all(8.0),
        color: Colors.blue[100 * ((index % 8) + 1)],
        child: Center(
          child: Text('Horizontal Item \${index + 1}'),
        ),
      );
    },
  ),
)

// ListView with sticky header using ListView.custom
ListView.custom(
  childrenDelegate: SliverChildListDelegate(
    [
      Container(
        color: Colors.grey[300],
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Header 1',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      ListTile(title: Text('Item 1')),
      ListTile(title: Text('Item 2')),
      Container(
        color: Colors.grey[300],
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Header 2',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      ListTile(title: Text('Item 3')),
      ListTile(title: Text('Item 4')),
    ],
  ),
)

// ListView with physics control
ListView.builder(
  physics: BouncingScrollPhysics(),
  itemCount: 50,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text('Item \${index + 1}'),
    );
  },
)
''';
