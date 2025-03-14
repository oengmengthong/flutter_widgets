const String dialogCode = '''
// Basic Dialog
showDialog<void>(
  context: context,
  builder: (BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        padding: EdgeInsets.all(16.0),
        width: 300.0,
        child: Column(
          mainAxisSize: MainAxisSize.min, // Make dialog as small as possible
          children: [
            Text(
              'Dialog Title',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text('This is the dialog content that can span multiple lines.'),
            SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                    // Perform action
                  },
                  child: Text('Confirm'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  },
);

// Dialog with custom content like an image
showDialog<void>(
  context: context,
  builder: (BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            'https://picsum.photos/300/200',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Dialog with image',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          ButtonBar(
            children: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Close'),
              ),
            ],
          ),
        ],
      ),
    );
  },
);

// Dialog with barrierDismissible: false (must use buttons to close)
showDialog<void>(
  context: context,
  barrierDismissible: false, // Dialog can't be dismissed by tapping outside
  builder: (BuildContext context) {
    return Dialog(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('You must use a button to close this dialog.'),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Close'),
            ),
          ],
        ),
      ),
    );
  },
);

// Dialog with return value
showDialog<bool>(
  context: context,
  builder: (BuildContext context) {
    return Dialog(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Would you like to proceed?'),
            ButtonBar(
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: Text('No'),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text('Yes'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  },
).then((bool? value) {
  if (value == true) {
    // User confirmed
    print('User confirmed');
  } else {
    // User cancelled or dismissed
    print('User cancelled');
  }
});
''';

const String alertDialogCode = '''
// Basic AlertDialog
showDialog<void>(
  context: context,
  builder: (BuildContext context) {
    return AlertDialog(
      title: Text('Alert Title'),
      content: Text('This is the alert dialog content.'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            // Perform some action
            Navigator.of(context).pop();
          },
          child: Text('OK'),
        ),
      ],
    );
  },
);

// AlertDialog with single child content
showDialog<void>(
  context: context,
  builder: (BuildContext context) {
    return AlertDialog(
      title: Text('Error'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text('An error occurred during the operation.'),
            Text('Please try again later.'),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text('Dismiss'),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
  },
);

// AlertDialog with text input
showDialog<void>(
  context: context,
  builder: (BuildContext context) {
    String inputText = '';
    return AlertDialog(
      title: Text('Enter Your Name'),
      content: TextField(
        onChanged: (value) {
          inputText = value;
        },
        decoration: InputDecoration(hintText: 'Name'),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            print('Input: \$inputText');
            Navigator.of(context).pop();
          },
          child: Text('Submit'),
        ),
      ],
    );
  },
);

// AlertDialog with radio buttons
showDialog<void>(
  context: context,
  builder: (BuildContext context) {
    int? selectedOption = 0;
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return AlertDialog(
          title: Text('Select an option'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              RadioListTile<int>(
                title: Text('Option 1'),
                value: 0,
                groupValue: selectedOption,
                onChanged: (int? value) {
                  setState(() => selectedOption = value);
                },
              ),
              RadioListTile<int>(
                title: Text('Option 2'),
                value: 1,
                groupValue: selectedOption,
                onChanged: (int? value) {
                  setState(() => selectedOption = value);
                },
              ),
              RadioListTile<int>(
                title: Text('Option 3'),
                value: 2,
                groupValue: selectedOption,
                onChanged: (int? value) {
                  setState(() => selectedOption = value);
                },
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                print('Selected option: \$selectedOption');
                Navigator.of(context).pop();
              },
              child: Text('Confirm'),
            ),
          ],
        );
      },
    );
  },
);
''';
