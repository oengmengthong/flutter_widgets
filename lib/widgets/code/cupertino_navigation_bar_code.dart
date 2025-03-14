const String cupertinoNavigationBarCode = '''
// Basic CupertinoNavigationBar
CupertinoPageScaffold(
  navigationBar: CupertinoNavigationBar(
    middle: Text('Page Title'),
  ),
  child: Center(
    child: Text('Page Content'),
  ),
)

// CupertinoNavigationBar with leading and trailing widgets
CupertinoNavigationBar(
  leading: CupertinoButton(
    padding: EdgeInsets.zero,
    onPressed: () {
      Navigator.of(context).pop();
    },
    child: Icon(CupertinoIcons.back),
  ),
  middle: Text('Title'),
  trailing: CupertinoButton(
    padding: EdgeInsets.zero,
    onPressed: () {
      print('Action button pressed');
    },
    child: Icon(CupertinoIcons.add),
  ),
)

// CupertinoNavigationBar with custom styling
CupertinoNavigationBar(
  middle: Text(
    'Custom Style',
    style: TextStyle(
      color: CupertinoColors.white,
      fontWeight: FontWeight.bold,
    ),
  ),
  backgroundColor: CupertinoColors.activeBlue,
  brightness: Brightness.dark, // Affects status bar icons color
  border: Border(
    bottom: BorderSide(
      color: CupertinoColors.systemBlue,
      width: 1.0,
    ),
  ),
)

// CupertinoNavigationBar with large title
CupertinoSliverNavigationBar(
  largeTitle: Text('Large Title'),
  trailing: CupertinoButton(
    padding: EdgeInsets.zero,
    onPressed: () {
      print('Action pressed');
    },
    child: Icon(CupertinoIcons.add),
  ),
)

// CupertinoNavigationBar with transparent background
CupertinoNavigationBar(
  middle: Text('Transparent'),
  backgroundColor: CupertinoColors.systemBackground.withOpacity(0.7),
  border: null, // Remove the bottom border
  transitionBetweenRoutes: false, // Disable transition animation
)

// Full example of CupertinoNavigationBar in a CupertinoPageScaffold
class CupertinoPageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino App'),
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            print('Menu button pressed');
          },
          child: Icon(CupertinoIcons.bars),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                print('Search button pressed');
              },
              child: Icon(CupertinoIcons.search),
            ),
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                print('Profile button pressed');
              },
              child: Icon(CupertinoIcons.profile_circled),
            ),
          ],
        ),
      ),
      child: SafeArea(
        child: Center(
          child: Text(
            'iOS-style Navigation',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

// CupertinoNavigationBar with previouisPageTitle
CupertinoNavigationBar(
  middle: Text('Current Page'),
  leading: CupertinoNavigationBarBackButton(
    previousPageTitle: 'Previous',
    onPressed: () {
      Navigator.of(context).pop();
    },
  ),
)
''';
