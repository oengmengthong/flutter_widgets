const String tabBarCode = '''
// First, create a TabController in a stateful widget
// with SingleTickerProviderStateMixin
class MyTabsWidget extends StatefulWidget {
  @override
  _MyTabsWidgetState createState() => _MyTabsWidgetState();
}

class _MyTabsWidgetState extends State<MyTabsWidget> 
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  @override
  void initState() {
    super.initState();
    // Create a controller with 3 tabs
    _tabController = TabController(length: 3, vsync: this);
    
    // Optional: Listen to tab changes
    _tabController.addListener(() {
      print('Current tab: \${_tabController.index}');
    });
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
        title: Text('TabBar Example'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.home), text: 'Home'),
            Tab(icon: Icon(Icons.search), text: 'Search'),
            Tab(icon: Icon(Icons.settings), text: 'Settings'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // First tab content
          Center(
            child: Text('Home Tab', 
                style: TextStyle(fontSize: 24)),
          ),
          // Second tab content
          Center(
            child: Text('Search Tab', 
                style: TextStyle(fontSize: 24)),
          ),
          // Third tab content
          Center(
            child: Text('Settings Tab', 
                style: TextStyle(fontSize: 24)),
          ),
        ],
      ),
    );
  }
}

// If you want to use DefaultTabController instead:
DefaultTabController(
  length: 3,
  child: Scaffold(
    appBar: AppBar(
      bottom: TabBar(
        tabs: const [
          Tab(icon: Icon(Icons.directions_car)),
          Tab(icon: Icon(Icons.directions_transit)),
          Tab(icon: Icon(Icons.directions_bike)),
        ],
      ),
    ),
    body: TabBarView(
      children: [
        // Tab contents go here
        Center(child: Text('Car')),
        Center(child: Text('Transit')),
        Center(child: Text('Bike')),
      ],
    ),
  ),
),
''';
