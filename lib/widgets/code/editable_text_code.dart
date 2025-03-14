const String editableTextCode = '''
// Basic EditableText
final TextEditingController _controller = TextEditingController();
final FocusNode _focusNode = FocusNode();

@override
void dispose() {
  _controller.dispose();
  _focusNode.dispose();
  super.dispose();
}

// In your build method:
EditableText(
  controller: _controller,
  focusNode: _focusNode,
  style: TextStyle(color: Colors.black, fontSize: 16),
  cursorColor: Colors.blue,
  backgroundCursorColor: Colors.grey,
)

// EditableText with more customization
EditableText(
  controller: _controller,
  focusNode: _focusNode,
  style: TextStyle(color: Colors.black, fontSize: 16),
  cursorColor: Colors.blue,
  backgroundCursorColor: Colors.grey,
  selectionColor: Colors.blue.withOpacity(0.3),
  selectionControls: materialTextSelectionControls,
  onChanged: (String value) {
    print('Text changed to: \$value');
  },
  onSubmitted: (String value) {
    print('Submitted: \$value');
  },
  strutStyle: StrutStyle(),
)

// Multi-line EditableText with custom cursor properties
EditableText(
  controller: _controller,
  focusNode: _focusNode,
  style: TextStyle(color: Colors.black, fontSize: 16),
  cursorColor: Colors.blue,
  backgroundCursorColor: Colors.grey,
  maxLines: null, // Allows unlimited lines
  minLines: 3, // At least 3 lines tall
  cursorWidth: 3, // Wider cursor
  cursorRadius: Radius.circular(2), // Rounded cursor
  textAlign: TextAlign.start,
  textDirection: TextDirection.ltr,
  textCapitalization: TextCapitalization.sentences, // Capitalize sentences
  keyboardType: TextInputType.multiline, // Multiline keyboard
)

// EditableText with input validation
EditableText(
  controller: _controller,
  focusNode: _focusNode,
  style: TextStyle(color: Colors.black, fontSize: 16),
  cursorColor: Colors.blue,
  backgroundCursorColor: Colors.grey,
  keyboardType: TextInputType.number, // Only number keyboard
  inputFormatters: [FilteringTextInputFormatter.digitsOnly], // Only allow digits
  onChanged: (value) {
    // Validate as the user types
    if (value.length > 5) {
      _controller.text = value.substring(0, 5);
      _controller.selection = TextSelection.fromPosition(
        TextPosition(offset: 5),
      );
    }
  },
)

// EditableText with password masking and toggle button
EditableText(
  controller: _controller,
  focusNode: _focusNode,
  style: TextStyle(color: Colors.black, fontSize: 16),
  cursorColor: Colors.blue,
  backgroundCursorColor: Colors.grey,
  obscureText: _obscureText, // Boolean to toggle visibility
  obscuringCharacter: '●', // Custom character for password masking
)

// You would typically need to wrap EditableText in a container for better appearance:
Container(
  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
  decoration: BoxDecoration(
    border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.circular(8),
  ),
  child: EditableText(
    controller: _controller,
    focusNode: _focusNode,
    style: TextStyle(color: Colors.black, fontSize: 16),
    cursorColor: Colors.blue,
    backgroundCursorColor: Colors.grey,
  ),
)
''';
