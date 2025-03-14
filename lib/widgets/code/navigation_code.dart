const String navigationRailCode = '''
// This needs to be in a StatefulWidget
class NavigationRailExample extends StatefulWidget {
  const NavigationRailExample({Key? key}) : super(key: key);

  @override
  State<NavigationRailExample> createState() => _NavigationRailExampleState();
}

class _NavigationRailExampleState extends State<NavigationRailExample> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        NavigationRail(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          labelType: NavigationRailLabelType.selected,
          destinations: const <NavigationRailDestination>[
            NavigationRailDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: Text('Home'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.settings_outlined),
              selectedIcon: Icon(Icons.settings),
              label: Text('Settings'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person),
              label: Text('Profile'),
            ),
          ],
        ),
        const VerticalDivider(thickness: 1, width: 1),
        // This is the main content.
        Expanded(
          child: Center(
            child: Text('Selected index: \$_selectedIndex'),
          ),
        ),
      ],
    );
  }
}
''';

const String bottomSheetCode = '''
// Show a modal bottom sheet
void _showModalBottomSheet(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 200,
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text('Modal Bottom Sheet'),
              ElevatedButton(
                child: const Text('Close'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      );
    },
  );
}

// Create a persistent bottom sheet
void _showBottomSheet(BuildContext context) {
  final ScaffoldState scaffoldState = Scaffold.of(context);
  
  scaffoldState.showBottomSheet<void>(
    (BuildContext context) {
      return Container(
        height: 200,
        color: Colors.amber,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text('Persistent Bottom Sheet'),
              ElevatedButton(
                child: const Text('Close'),
                onPressed: () => Navigator.pop(context),
              )
            ],
          ),
        ),
      );
    },
  );
}
''';
