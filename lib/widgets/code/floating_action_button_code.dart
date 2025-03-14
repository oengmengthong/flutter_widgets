const String floatingActionButtonCode = '''
// Basic FloatingActionButton
FloatingActionButton(
  onPressed: () {
    // Add your action here
    print('FloatingActionButton pressed');
  },
  child: Icon(Icons.add),
)

// FloatingActionButton with customizations
FloatingActionButton(
  onPressed: () {
    // Add your action here
  },
  child: Icon(Icons.edit),
  backgroundColor: Colors.green,
  foregroundColor: Colors.white,
  tooltip: 'Edit Item',
  elevation: 5.0,
  highlightElevation: 10.0,
  mini: false, // Set to true for smaller size
  shape: CircleBorder(),
)

// FloatingActionButton.extended for buttons with labels
FloatingActionButton.extended(
  onPressed: () {
    // Add your action here
  },
  icon: Icon(Icons.add),
  label: Text('Add Item'),
  backgroundColor: Colors.blue,
)

// FloatingActionButton placement in Scaffold
Scaffold(
  appBar: AppBar(
    title: Text('FloatingActionButton Example'),
  ),
  body: Center(
    child: Text('Content here'),
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {
      // Add your action here
    },
    child: Icon(Icons.add),
  ),
  floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
  // Other locations:
  // FloatingActionButtonLocation.centerFloat
  // FloatingActionButtonLocation.endDocked
  // FloatingActionButtonLocation.centerDocked
  // FloatingActionButtonLocation.endTop
  // FloatingActionButtonLocation.startFloat
  // FloatingActionButtonLocation.startTop
)

// FloatingActionButton with BottomAppBar notch
Scaffold(
  body: Center(
    child: Text('Content here'),
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {
      // Add your action here
    },
    child: Icon(Icons.add),
  ),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  bottomNavigationBar: BottomAppBar(
    shape: CircularNotchedRectangle(),
    notchMargin: 8.0,
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    ),
  ),
)
''';
