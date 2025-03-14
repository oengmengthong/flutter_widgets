const String segmentedButtonCode = '''
// Basic Single-Select SegmentedButton
SegmentedButton<String>(
  segments: const [
    ButtonSegment<String>(
      value: 'Day',
      icon: Icon(Icons.wb_sunny_outlined),
      label: Text('Day'),
    ),
    ButtonSegment<String>(
      value: 'Week',
      icon: Icon(Icons.calendar_view_week),
      label: Text('Week'),
    ),
    ButtonSegment<String>(
      value: 'Month',
      icon: Icon(Icons.calendar_month),
      label: Text('Month'),
    ),
  ],
  selected: {_selectedValue}, // Set of selected values, should contain only one item for single selection
  onSelectionChanged: (Set<String> newSelection) {
    setState(() {
      _selectedValue = newSelection.first;
    });
  },
)

// Multi-Select SegmentedButton
SegmentedButton<String>(
  segments: const [
    ButtonSegment<String>(
      value: 'Bold',
      icon: Icon(Icons.format_bold),
      label: Text('Bold'),
    ),
    ButtonSegment<String>(
      value: 'Italic',
      icon: Icon(Icons.format_italic),
      label: Text('Italic'),
    ),
    ButtonSegment<String>(
      value: 'Underline',
      icon: Icon(Icons.format_underline),
      label: Text('Underline'),
    ),
  ],
  selected: _selectedFormats, // Set of selected values
  onSelectionChanged: (Set<String> newSelection) {
    setState(() {
      _selectedFormats = newSelection;
    });
  },
  multiSelectionEnabled: true, // Enable multiple selections
)

// Styled SegmentedButton
SegmentedButton<String>(
  segments: const [
    ButtonSegment<String>(value: 'List', icon: Icon(Icons.list)),
    ButtonSegment<String>(value: 'Grid', icon: Icon(Icons.grid_view)),
    ButtonSegment<String>(value: 'Card', icon: Icon(Icons.view_agenda)),
  ],
  selected: {_selectedView},
  onSelectionChanged: (Set<String> newSelection) {
    setState(() {
      _selectedView = newSelection.first;
    });
  },
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.blue;
        }
        return null;
      },
    ),
    foregroundColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.white;
        }
        return Colors.blue;
      },
    ),
  ),
)

// SegmentedButton with custom segment shapes
SegmentedButton<int>(
  segments: const <ButtonSegment<int>>[
    ButtonSegment<int>(
      value: 0,
      label: Text('Small'),
      icon: Icon(Icons.format_size),
    ),
    ButtonSegment<int>(
      value: 1,
      label: Text('Medium'),
    ),
    ButtonSegment<int>(
      value: 2,
      label: Text('Large'),
      icon: Icon(Icons.format_size),
    ),
  ],
  selected: {_selectedSize},
  onSelectionChanged: (Set<int> newSelection) {
    setState(() {
      _selectedSize = newSelection.first;
    });
  },
  showSelectedIcon: false, // Hide the checkmark icon
  emptySelectionAllowed: true, // Allow no selection
  selectedSegmentIndex: _selectedSize, // Index of the selected segment
)
''';
