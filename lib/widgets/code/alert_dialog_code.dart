const String alertDialogCode = '''
// Show an AlertDialog when a button is pressed
ElevatedButton(
  onPressed: () {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        // The dialog title
        title: Text('AlertDialog Title'),
        
        // The dialog content can contain any widget
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('This is a simple alert dialog.'),
            SizedBox(height: 8),
            Text('Do you want to approve this action?'),
          ],
        ),
        
        // Action buttons at the bottom
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: Text('OK'),
          ),
        ],
      ),
    );
  },
  child: Text('Show Alert Dialog'),
),

// Getting a result from AlertDialog
Future<void> _showAlertDialog() async {
  // Show the dialog and await for the result
  final String? result = await showDialog<String>(
    context: context,
    // If false, the dialog cannot be dismissed by tapping outside
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Confirmation'),
        content: Text('Please make a selection'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'No'),
            child: Text('No'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'Yes'),
            child: Text('Yes'),
          ),
        ],
      );
    },
  );

  // Handle the result
  if (result == 'Yes') {
    // User pressed Yes
    print('User confirmed');
  } else if (result == 'No') {
    // User pressed No
    print('User denied');
  } else {
    // Dialog was dismissed by tapping outside
    print('Dialog dismissed');
  }
}

// AlertDialog with a ScrollView for long content
AlertDialog(
  title: Text('Terms and Conditions'),
  content: SingleChildScrollView(
    child: ListBody(
      children: <Widget>[
        Text('This is a very long terms and conditions text.'),
        Text('It needs to be scrollable so the user can read all of it.'),
        // ... more text
      ],
    ),
  ),
  actions: <Widget>[
    TextButton(
      onPressed: () => Navigator.pop(context, 'Decline'),
      child: Text('Decline'),
    ),
    TextButton(
      onPressed: () => Navigator.pop(context, 'Accept'),
      child: Text('Accept'),
    ),
  ],
)

// AlertDialog with a custom widget like a form
AlertDialog(
  title: Text('Enter Details'),
  content: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      TextField(
        decoration: InputDecoration(
          labelText: 'Name',
        ),
      ),
      TextField(
        decoration: InputDecoration(
          labelText: 'Email',
        ),
      ),
    ],
  ),
  actions: [
    TextButton(
      onPressed: () => Navigator.pop(context),
      child: Text('Cancel'),
    ),
    TextButton(
      onPressed: () {
        // Handle form submission
        Navigator.pop(context);
      },
      child: Text('Submit'),
    ),
  ],
)
''';
