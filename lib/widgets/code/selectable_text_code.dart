const String selectableTextCode = '''
// Basic SelectableText
SelectableText(
  'This text can be selected and copied.',
  style: TextStyle(fontSize: 16),
  cursorColor: Colors.blue,
)

// SelectableText with custom selection controls
SelectableText(
  'This text can be selected with custom style.',
  style: TextStyle(fontSize: 16, color: Colors.blue),
  cursorColor: Colors.red,
  showCursor: true,
  toolbarOptions: ToolbarOptions(
    copy: true,
    selectAll: true,
    cut: false,
    paste: false,
  ),
)

// SelectableText with selection change callback
class SelectionTrackerWidget extends StatefulWidget {
  @override
  _SelectionTrackerWidgetState createState() => _SelectionTrackerWidgetState();
}

class _SelectionTrackerWidgetState extends State<SelectionTrackerWidget> {
  String _selectedText = '';
  final String _fullText = 'Select some text to see it highlighted below.';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText(
          _fullText,
          style: TextStyle(fontSize: 18),
          onSelectionChanged: (TextSelection selection, SelectionChangedCause? cause) {
            if (selection.baseOffset >= 0 && selection.extentOffset >= 0) {
              setState(() {
                _selectedText = _fullText.substring(
                  selection.baseOffset,
                  selection.extentOffset,
                );
              });
            }
          },
        ),
        SizedBox(height: 20),
        Text('Selected: "\$_selectedText"'),
      ],
    );
  }
}

// SelectableText.rich for rich text styling
SelectableText.rich(
  TextSpan(
    children: <TextSpan>[
      TextSpan(
        text: 'Hello ',
        style: TextStyle(fontSize: 18, color: Colors.black),
      ),
      TextSpan(
        text: 'bold world',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
      TextSpan(
        text: '! This is ',
        style: TextStyle(fontSize: 18, color: Colors.black),
      ),
      TextSpan(
        text: 'selectable rich text',
        style: TextStyle(
          fontSize: 18,
          fontStyle: FontStyle.italic,
          color: Colors.red,
        ),
      ),
    ],
  ),
  textAlign: TextAlign.center,
)

// SelectableText with focus and tap callbacks
FocusScope(
  child: SelectableText(
    'Tap me and start selecting!',
    focusNode: FocusNode(),
    onTap: () {
      print('Text tapped');
    },
    scrollPhysics: ClampingScrollPhysics(),
    textScaleFactor: 1.2,
  ),
)
''';
