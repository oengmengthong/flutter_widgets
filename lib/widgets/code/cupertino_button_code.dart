const String cupertinoButtonCode = '''
// Basic CupertinoButton
CupertinoButton(
  onPressed: () {
    print('CupertinoButton pressed');
  },
  child: Text('CupertinoButton'),
)

// Filled CupertinoButton
CupertinoButton.filled(
  onPressed: () {
    print('Filled CupertinoButton pressed');
  },
  child: Text('CupertinoButton.filled'),
)

// CupertinoButton with custom properties
CupertinoButton(
  onPressed: () {
    print('Custom CupertinoButton pressed');
  },
  color: CupertinoColors.activeBlue,
  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
  borderRadius: BorderRadius.circular(8.0),
  child: Text(
    'Custom Button',
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  ),
)

// Disabled CupertinoButton
CupertinoButton(
  onPressed: null, // Setting to null disables the button
  child: Text('Disabled Button'),
)

// CupertinoButton with custom pressedOpacity
CupertinoButton(
  onPressed: () {
    print('Button pressed');
  },
  pressedOpacity: 0.4, // Default is 0.4, lower for more opacity when pressed
  child: Text('Custom pressed opacity'),
)

// CupertinoButton with icon
CupertinoButton(
  onPressed: () {
    print('Button with icon pressed');
  },
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(CupertinoIcons.add),
      SizedBox(width: 8),
      Text('Add Item'),
    ],
  ),
)

// CupertinoButton inside a CupertinoNavigationBar
CupertinoNavigationBar(
  middle: Text('App Title'),
  trailing: CupertinoButton(
    padding: EdgeInsets.zero,
    child: Icon(CupertinoIcons.add),
    onPressed: () {
      print('Add button pressed');
    },
  ),
)

// CupertinoButton with loading state
class LoadingButton extends StatefulWidget {
  @override
  _LoadingButtonState createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> {
  bool _isLoading = false;

  void _handlePress() async {
    setState(() {
      _isLoading = true;
    });
    
    // Simulate async operation
    await Future.delayed(Duration(seconds: 2));
    
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
      onPressed: _isLoading ? null : _handlePress,
      child: _isLoading
          ? CupertinoActivityIndicator(color: CupertinoColors.white)
          : Text('Submit'),
    );
  }
}
''';
