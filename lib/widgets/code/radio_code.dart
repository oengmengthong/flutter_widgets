const String radioCode = '''
// Basic Radio button
Radio<String>(
  value: 'option1',
  groupValue: _selectedOption,
  onChanged: (String? value) {
    setState(() {
      _selectedOption = value;
    });
  },
)

// Radio with label (wrapped in a Row)
Row(
  children: [
    Radio<String>(
      value: 'option1',
      groupValue: _selectedOption,
      onChanged: (String? value) {
        setState(() {
          _selectedOption = value;
        });
      },
    ),
    Text('Option 1'),
  ],
)

// RadioListTile - Radio with integrated label and optional subtitle
RadioListTile<String>(
  title: Text('Option 1'),
  subtitle: Text('Description for option 1'),
  value: 'option1',
  groupValue: _selectedOption,
  onChanged: (String? value) {
    setState(() {
      _selectedOption = value;
    });
  },
)

// Custom styled Radio
Radio<String>(
  value: 'option1',
  groupValue: _selectedOption,
  onChanged: (String? value) {
    setState(() {
      _selectedOption = value;
    });
  },
  activeColor: Colors.green, // Color when selected
  fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return Colors.grey.withOpacity(0.5); // Color when disabled
    }
    if (states.contains(MaterialState.selected)) {
      return Colors.green; // Color when selected
    }
    return Colors.grey; // Default color
  }),
)

// Using Radio with enum values
enum Options { option1, option2, option3 }

Options? _selectedEnum = Options.option1;

Radio<Options>(
  value: Options.option1,
  groupValue: _selectedEnum,
  onChanged: (Options? value) {
    setState(() {
      _selectedEnum = value;
    });
  },
)

// Radio in a group
Column(
  children: Options.values.map((option) {
    return RadioListTile<Options>(
      title: Text(option.toString().split('.').last),
      value: option,
      groupValue: _selectedEnum,
      onChanged: (Options? value) {
        setState(() {
          _selectedEnum = value;
        });
      },
    );
  }).toList(),
)

// Custom styled RadioListTile
RadioListTile<String>(
  title: Text('Custom Style'),
  value: 'custom',
  groupValue: _selectedOption,
  onChanged: (String? value) {
    setState(() {
      _selectedOption = value;
    });
  },
  activeColor: Colors.purple,
  selected: _selectedOption == 'custom', // Highlight the whole tile when selected
  selectedTileColor: Colors.purple.withOpacity(0.1), // Background when selected
  secondary: Icon(Icons.star), // Add an icon to the right side
  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
    side: BorderSide(color: Colors.purple.withOpacity(0.5)),
  ),
)

// Using Radio buttons for a simple quiz
Row(
  children: [
    Text('What is 2 + 2?'),
    Radio(value: '3', groupValue: _answer, onChanged: (value) => setState(() => _answer = value)),
    Text('3'),
    Radio(value: '4', groupValue: _answer, onChanged: (value) => setState(() => _answer = value)),
    Text('4'),
    Radio(value: '5', groupValue: _answer, onChanged: (value) => setState(() => _answer = value)),
    Text('5'),
  ],
)
''';
