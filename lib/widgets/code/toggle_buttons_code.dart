const String toggleButtonsCode = '''
// Basic ToggleButtons with single selection
ToggleButtons(
  isSelected: _selections,
  onPressed: (int index) {
    setState(() {
      // Single selection mode
      for (int buttonIndex = 0; buttonIndex < _selections.length; buttonIndex++) {
        _selections[buttonIndex] = buttonIndex == index;
      }
    });
  },
  children: const [
    Icon(Icons.format_bold),
    Icon(Icons.format_italic),
    Icon(Icons.format_underline),
  ],
)

// ToggleButtons with multi-selection
ToggleButtons(
  isSelected: _selections,
  onPressed: (int index) {
    setState(() {
      // Multi-selection mode - toggle the selection
      _selections[index] = !_selections[index];
    });
  },
  children: const [
    Icon(Icons.format_bold),
    Icon(Icons.format_italic),
    Icon(Icons.format_underline),
  ],
)

// Styled ToggleButtons
ToggleButtons(
  isSelected: _selections,
  onPressed: (int index) {
    setState(() {
      _selections[index] = !_selections[index];
    });
  },
  color: Colors.black.withOpacity(0.6),
  selectedColor: Colors.white,
  fillColor: Colors.blue,
  borderColor: Colors.blue.shade100,
  selectedBorderColor: Colors.blue.shade700,
  borderRadius: BorderRadius.circular(10),
  borderWidth: 2,
  children: const [
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text('Morning'),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text('Afternoon'),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text('Evening'),
    ),
  ],
)

// ToggleButtons with custom constraints and direction
ToggleButtons(
  direction: Axis.vertical,
  constraints: const BoxConstraints(
    minHeight: 60.0,
    minWidth: 120.0,
  ),
  isSelected: _selections,
  onPressed: (int index) {
    setState(() {
      _selections[index] = !_selections[index];
    });
  },
  children: const [
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.calendar_today),
        SizedBox(width: 8),
        Text('Calendar'),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.list),
        SizedBox(width: 8),
        Text('List'),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.bar_chart),
        SizedBox(width: 8),
        Text('Chart'),
      ],
    ),
  ],
)
''';
