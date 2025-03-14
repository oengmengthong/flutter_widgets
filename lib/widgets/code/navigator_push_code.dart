// Basic Navigation with MaterialPageRoute
ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailScreen()),
    );
  },
  child: Text('Navigate to Detail Screen'),
)

// Detail Screen Implementation
class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is the detail screen'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}

// Named Routes Navigation
// First, define routes in MaterialApp
MaterialApp(
  // Define your app title, theme etc
  initialRoute: '/',
  routes: {
    '/': (context) => HomeScreen(),
    '/details': (context) => DetailScreen(),
    '/settings': (context) => SettingsScreen(),
  },
)

// Then navigate using named routes
ElevatedButton(
  onPressed: () {
    Navigator.pushNamed(context, '/details');
  },
  child: Text('Go to Details'),
)

// Passing Data Between Routes
// Option 1: Pass data in the constructor
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => DetailScreen(
      id: 123,
      title: 'Product Detail',
    ),
  ),
)

// DetailScreen class with parameters
class DetailScreen extends StatelessWidget {
  final int id;
  final String title;

  const DetailScreen({
    Key? key, 
    required this.id, 
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Showing details for item \$id'),
      ),
    );
  }
}

// Navigation with animations
Navigator.push(
  context,
  PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => DetailScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;
      
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);
      
      return SlideTransition(position: offsetAnimation, child: child);
    },
    transitionDuration: Duration(milliseconds: 500),
  ),
)

// Navigation and waiting for result
void _navigateAndDisplaySelection(BuildContext context) async {
  final result = await Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SelectionScreen()),
  );

  // After the Selection Screen returns
  if (result != null) {
    ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text('Selected: \$result')));
  }
}

// Selection screen that returns data
class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select an option'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Option 1'),
            onTap: () {
              Navigator.pop(context, 'Option 1');
            },
          ),
          ListTile(
            title: Text('Option 2'),
            onTap: () {
              Navigator.pop(context, 'Option 2');
            },
          ),
        ],
      ),
    );
  }
}

// Basic Navigation to a new screen
ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondScreen()),
    );
  },
  child: Text('Go to Second Screen'),
),

// The second screen widget
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is the second screen'),
            ElevatedButton(
              onPressed: () {
                // Go back to previous screen
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

// Navigation with named routes (requires routes set up in MaterialApp)
ElevatedButton(
  onPressed: () {
    Navigator.pushNamed(
      context,
      '/second',
      arguments: {'message': 'Hello from first screen!'},
    );
  },
  child: Text('Go to Named Route'),
),

// Navigation with data
ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailScreen(item: myItem),
      ),
    );
  },
  child: Text('View Details'),
),

// Use pushReplacement to replace the current screen
ElevatedButton(
  onPressed: () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => NewScreen()),
    );
  },
  child: Text('Replace This Screen'),
),