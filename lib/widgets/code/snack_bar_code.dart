const String snackBarCode = '''
// Basic SnackBar with ScaffoldMessenger
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Text('This is a SnackBar'),
    duration: Duration(seconds: 3),
  ),
);

// SnackBar with action
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Text('Item deleted'),
    action: SnackBarAction(
      label: 'Undo',
      onPressed: () {
        // Restore the deleted item
        print('Undo delete');
      },
    ),
  ),
);

// SnackBar with custom appearance
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Text('Custom SnackBar'),
    backgroundColor: Colors.teal,
    duration: Duration(seconds: 5),
    behavior: SnackBarBehavior.floating, // Makes SnackBar float above the UI
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    margin: EdgeInsets.all(10.0), // Margin around the SnackBar (with floating)
    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
  ),
);

// SnackBar with custom content layout
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Row(
      children: [
        Icon(Icons.error_outline, color: Colors.white),
        SizedBox(width: 10),
        Expanded(
          child: Text('An error occurred. Please try again.'),
        ),
      ],
    ),
    backgroundColor: Colors.red,
    duration: Duration(seconds: 5),
    action: SnackBarAction(
      label: 'RETRY',
      textColor: Colors.white,
      onPressed: () {
        // Retry the operation
      },
    ),
  ),
);

// SnackBar with callback when dismissed
final snackBar = SnackBar(
  content: Text('This will disappear in 3 seconds'),
  duration: Duration(seconds: 3),
);

ScaffoldMessenger.of(context)
  .showSnackBar(snackBar)
  .closed
  .then((SnackBarClosedReason reason) {
    // Called when the SnackBar is dismissed
    print('SnackBar closed. Reason: \$reason');
  });

// Dismissing the current SnackBar
ScaffoldMessenger.of(context).hideCurrentSnackBar();

// Dismissing all SnackBars
ScaffoldMessenger.of(context).removeCurrentSnackBar();
ScaffoldMessenger.of(context).clearSnackBars();

// Using SnackBar with persistentBottomSheet or bottomSheet
// requires extra handling to avoid overlap issues
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Text('SnackBar with bottom sheet'),
    margin: EdgeInsets.only(
      bottom: 80.0, // Adjust this value to avoid overlapping with bottom sheets
      left: 10.0,
      right: 10.0,
    ),
    behavior: SnackBarBehavior.floating,
  ),
);
''';
