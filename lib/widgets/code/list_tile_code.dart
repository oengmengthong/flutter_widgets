const String listTileCode = '''
// Basic ListTile
ListTile(
  title: Text('List item'),
  onTap: () {
    // Handle tap
    print('ListTile tapped');
  },
)

// ListTile with leading and trailing widgets
ListTile(
  leading: Icon(Icons.flight),
  title: Text('JFK to LHR'),
  subtitle: Text('June 5, 2023'),
  trailing: Icon(Icons.arrow_forward_ios),
  onTap: () {},
)

// ListTile with CircleAvatar as leading widget
ListTile(
  leading: CircleAvatar(
    backgroundColor: Colors.blue,
    child: Text('JD'),
  ),
  title: Text('John Doe'),
  subtitle: Text('Software Developer'),
  trailing: Icon(Icons.more_vert),
  onTap: () {},
)

// Dense ListTile for more compact lists
ListTile(
  leading: Icon(Icons.email),
  title: Text('Email'),
  subtitle: Text('john.doe@example.com'),
  dense: true,
  onTap: () {},
)

// Three-line ListTile
ListTile(
  leading: Icon(Icons.message),
  title: Text('Message from Jane'),
  subtitle: Text(
    'Hi John, I wanted to discuss the project details with you. Let me know when you are available to meet.',
    maxLines: 2,
    overflow: TextOverflow.ellipsis,
  ),
  isThreeLine: true,
  trailing: Text('3m ago'),
  onTap: () {},
)

// ListTile with custom styling
ListTile(
  leading: Container(
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Colors.blue.withOpacity(0.1),
      shape: BoxShape.circle,
    ),
    child: Icon(
      Icons.folder,
      color: Colors.blue,
    ),
  ),
  title: Text(
    'Documents',
    style: TextStyle(fontWeight: FontWeight.bold),
  ),
  subtitle: Text('24 files, 2GB'),
  trailing: PopupMenuButton(
    itemBuilder: (context) => [
      PopupMenuItem(
        child: Text('Open'),
        value: 'open',
      ),
      PopupMenuItem(
        child: Text('Share'),
        value: 'share',
      ),
      PopupMenuItem(
        child: Text('Delete'),
        value: 'delete',
      ),
    ],
    onSelected: (value) {
      print('Selected: \$value');
    },
  ),
  tileColor: Colors.white,
  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
  ),
  onTap: () {},
)

// ListTiles in a ListView
ListView.separated(
  itemCount: 20,
  separatorBuilder: (context, index) => Divider(),
  itemBuilder: (context, index) {
    return ListTile(
      leading: CircleAvatar(
        child: Text('\${index + 1}'),
      ),
      title: Text('Item \${index + 1}'),
      subtitle: Text('Description for item \${index + 1}'),
      onTap: () {},
    );
  },
)

// ListTile in a Card
Card(
  child: ListTile(
    leading: Icon(Icons.album, size: 50),
    title: Text('The Enchanted Nightingale'),
    subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
    trailing: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(Icons.favorite_border),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.play_arrow),
          onPressed: () {},
        ),
      ],
    ),
  ),
)

// Selected ListTile
ListTile(
  selected: true,
  selectedTileColor: Colors.blue.withOpacity(0.1),
  selectedColor: Colors.blue,
  leading: Icon(Icons.check_circle),
  title: Text('Selected Item'),
  subtitle: Text('This item is currently selected'),
  onTap: () {},
)
''';
