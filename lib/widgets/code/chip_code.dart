const String chipCode = '''
// Basic Chip
Chip(
  label: Text('Basic Chip'),
)

// Chip with avatar and delete button
Chip(
  avatar: CircleAvatar(
    backgroundColor: Colors.blue.shade800,
    child: const Text('F'),
  ),
  label: const Text('Flutter'),
  deleteIcon: const Icon(Icons.close),
  onDeleted: () {
    // Handle delete action
  },
)

// Input Chip (for user input)
InputChip(
  label: const Text('Input Chip'),
  selected: isSelected,
  onSelected: (bool selected) {
    setState(() {
      isSelected = selected;
    });
  },
)

// Filter Chip (for filtering options)
FilterChip(
  label: const Text('Filter Chip'),
  selected: isSelected,
  onSelected: (bool selected) {
    setState(() {
      isSelected = selected;
    });
  },
)

// Choice Chip (for selecting from options)
ChoiceChip(
  label: const Text('Choice Chip'),
  selected: isSelected,
  onSelected: (bool selected) {
    setState(() {
      isSelected = selected;
    });
  },
)
''';

const String filterChipCode = '''
// Filter Chips are used for filtering content
class FilterChipExample extends StatefulWidget {
  @override
  _FilterChipExampleState createState() => _FilterChipExampleState();
}

class _FilterChipExampleState extends State<FilterChipExample> {
  List<String> _filters = ['Low Price', 'Medium Price', 'High Price', 'On Sale'];
  List<bool> _filterSelected = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      children: List<Widget>.generate(
        _filters.length,
        (int index) {
          return FilterChip(
            label: Text(_filters[index]),
            selected: _filterSelected[index],
            onSelected: (bool selected) {
              setState(() {
                _filterSelected[index] = selected;
              });
            },
            selectedColor: Colors.blue[100],
            checkmarkColor: Colors.blue,
          );
        },
      ),
    );
  }
}
