const String showDialogCode = '''
// Basic AlertDialog
ElevatedButton(
  onPressed: () {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('AlertDialog Title'),
        content: const Text('This is the content of the alert dialog'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  },
  child: const Text('Show Alert Dialog'),
),

// SimpleDialog with options
void _showOptionsDialog() async {
  final String? result = await showDialog<String>(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        title: const Text('Select an option'),
        children: <Widget>[
          SimpleDialogOption(
            onPressed: () => Navigator.pop(context, 'Option 1'),
            child: const Text('Option 1'),
          ),
          SimpleDialogOption(
            onPressed: () => Navigator.pop(context, 'Option 2'),
            child: const Text('Option 2'),
          ),
          SimpleDialogOption(
            onPressed: () => Navigator.pop(context, 'Option 3'),
            child: const Text('Option 3'),
          ),
        ],
      );
    },
  );
  
  // Handle the returned result
  if (result != null) {
    print('Selected option: \$result');
  }
}

// Custom Dialog
void _showCustomDialog() {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.check_circle, color: Colors.green, size: 60),
              SizedBox(height: 16),
              Text(
                'Success!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'Your operation completed successfully.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 36),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

// Dialog with barrier properties
showDialog(
  context: context,
  barrierDismissible: false, // User must tap a button to dismiss
  barrierColor: Colors.black.withOpacity(0.7), // Custom overlay color
  builder: (BuildContext context) {
    return AlertDialog(
      // Dialog content
      title: Text('Cannot Dismiss'),
      content: Text('You must tap a button to close this dialog.'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Close'),
        ),
      ],
    );
  },
),

// Using showDialog as an async function to get a result
Future<void> _askUserForConfirmation() async {
  final bool? result = await showDialog<bool>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text('Confirm Action'),
      content: const Text('Are you sure you want to proceed?'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, true),
          child: const Text('Yes'),
        ),
      ],
    ),
  );
  
  if (result == true) {
    // User confirmed the action
    _proceedWithAction();
  }
}
''';
