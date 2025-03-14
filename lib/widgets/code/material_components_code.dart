const String scaffoldCode = '''
Scaffold(
  appBar: AppBar(
    title: Text('My App'),
    backgroundColor: Colors.blue,
  ),
  body: Center(
    child: Text('Hello, World!'),
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {
      // Add your action here
      print('FAB pressed');
    },
    child: Icon(Icons.add),
  ),
  bottomNavigationBar: BottomNavigationBar(
    currentIndex: 0,
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.business),
        label: 'Business',
      ),
    ],
    onTap: (int index) {
      // Handle navigation bar item tap
    },
  ),
  drawer: Drawer(
    // Drawer content
  ),
)
''';

const String appBarCode = '''
AppBar(
  leading: IconButton(
    icon: Icon(Icons.menu),
    onPressed: () {
      // Open drawer or perform action
    },
  ),
  title: Text('App Title'),
  actions: <Widget>[
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {
        // Search action
      },
    ),
    IconButton(
      icon: Icon(Icons.more_vert),
      onPressed: () {
        // More options
      },
    ),
  ],
  flexibleSpace: Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.blue, Colors.purple],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
  ),
  bottom: TabBar(
    tabs: [
      Tab(icon: Icon(Icons.directions_car)),
      Tab(icon: Icon(Icons.directions_transit)),
    ],
  ),
  elevation: 8,
  backgroundColor: Colors.blue,
)
''';

const String bottomNavigationBarCode = '''
// Typically used in a StatefulWidget to track the selected index
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  
  static const List<Widget> _pages = <Widget>[
    Text('Home Page'),
    Text('Business Page'),
    Text('School Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Demo'),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
''';

const String tabBarCode = '''
// TabBar needs to be used with a TabController
// Either manually create one or use DefaultTabController
DefaultTabController(
  length: 3,
  child: Scaffold(
    appBar: AppBar(
      title: Text('TabBar Example'),
      bottom: TabBar(
        tabs: [
          Tab(icon: Icon(Icons.directions_car)),
          Tab(icon: Icon(Icons.directions_transit)),
          Tab(icon: Icon(Icons.directions_bike)),
        ],
        indicatorColor: Colors.white,
        indicatorWeight: 5,
      ),
    ),
    body: TabBarView(
      children: [
        // First tab content
        Center(child: Text('Car Tab')),
        // Second tab content
        Center(child: Text('Transit Tab')),
        // Third tab content
        Center(child: Text('Bike Tab')),
      ],
    ),
  ),
)

// For more customization, you can use your own TabController:
class MyTabbedPage extends StatefulWidget {
  const MyTabbedPage({Key? key}) : super(key: key);

  @override
  _MyTabbedPageState createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom TabController'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'TAB 1'),
            Tab(text: 'TAB 2'),
            Tab(text: 'TAB 3'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text('Content of Tab 1')),
          Center(child: Text('Content of Tab 2')),
          Center(child: Text('Content of Tab 3')),
        ],
      ),
    );
  }
}
''';

const String drawerCode = '''
Scaffold(
  appBar: AppBar(
    title: Text('Drawer Example'),
  ),
  drawer: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'Drawer Header',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            // Navigate to home screen
            Navigator.pop(context); // Close the drawer
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
          onTap: () {
            // Navigate to settings screen
            Navigator.pop(context); // Close the drawer
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Logout'),
          onTap: () {
            // Logout logic
            Navigator.pop(context); // Close the drawer
          },
        ),
      ],
    ),
  ),
  body: Center(
    child: Text('Swipe from left edge or tap menu icon to open drawer'),
  ),
)

// For a drawer on the right side:
Scaffold(
  appBar: AppBar(
    title: Text('End Drawer Example'),
  ),
  endDrawer: Drawer(
    // Same content as before
  ),
  body: Center(
    child: Text('Swipe from right edge to open end drawer'),
  ),
)
''';
