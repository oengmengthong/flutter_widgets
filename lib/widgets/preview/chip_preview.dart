import 'package:flutter/material.dart';

class ChipPreview extends StatefulWidget {
  const ChipPreview({Key? key}) : super(key: key);

  @override
  State<ChipPreview> createState() => _ChipPreviewState();
}

class _ChipPreviewState extends State<ChipPreview> {
  List<String> _chips = ['Flutter', 'Dart', 'Widgets', 'Material'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: _chips.map((chip) {
              return Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade800,
                  child: Text(chip[0]),
                ),
                label: Text(chip),
                onDeleted: () {
                  setState(() {
                    _chips.remove(chip);
                  });
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _chips = ['Flutter', 'Dart', 'Widgets', 'Material'];
              });
            },
            child: const Text('Reset Chips'),
          ),
        ],
      ),
    );
  }
}

class FilterChipPreview extends StatefulWidget {
  const FilterChipPreview({Key? key}) : super(key: key);

  @override
  State<FilterChipPreview> createState() => _FilterChipPreviewState();
}

class _FilterChipPreviewState extends State<FilterChipPreview> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FilterChip(
        label: const Text('Filter Chip'),
        selected: _isSelected,
        onSelected: (bool selected) {
          setState(() {
            _isSelected = selected;
          });
        },
        avatar: const Icon(Icons.filter_list),
        backgroundColor: Colors.grey[300],
        selectedColor: Colors.blue[100],
      ),
    );
  }
}
