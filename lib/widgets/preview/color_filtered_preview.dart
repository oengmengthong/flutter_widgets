import 'package:flutter/material.dart';

class ColorFilteredPreview extends StatefulWidget {
  const ColorFilteredPreview({Key? key}) : super(key: key);

  @override
  State<ColorFilteredPreview> createState() => _ColorFilteredPreviewState();
}

class _ColorFilteredPreviewState extends State<ColorFilteredPreview> {
  int _selectedFilterIndex = 0;
  final List<ColorFilter> _filters = [
    const ColorFilter.mode(Colors.blue, BlendMode.modulate),
    const ColorFilter.mode(Colors.red, BlendMode.modulate),
    const ColorFilter.mode(Colors.green, BlendMode.modulate),
    ColorFilter.matrix(<double>[
      0.2126,
      0.7152,
      0.0722,
      0,
      0,
      0.2126,
      0.7152,
      0.0722,
      0,
      0,
      0.2126,
      0.7152,
      0.0722,
      0,
      0,
      0,
      0,
      0,
      1,
      0,
    ]), // Grayscale filter
    const ColorFilter.mode(Colors.purple, BlendMode.overlay),
    const ColorFilter.mode(Colors.yellow, BlendMode.color),
  ];

  final List<String> _filterNames = [
    'Blue Tint',
    'Red Tint',
    'Green Tint',
    'Grayscale',
    'Purple Overlay',
    'Yellow Color',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Filter selection chips
        Wrap(
          spacing: 8.0,
          children: List.generate(_filters.length, (index) {
            return ChoiceChip(
              label: Text(_filterNames[index]),
              selected: _selectedFilterIndex == index,
              onSelected: (bool selected) {
                setState(() {
                  if (selected) {
                    _selectedFilterIndex = index;
                  }
                });
              },
            );
          }),
        ),
        const SizedBox(height: 16),
        // Display the filtered image
        ColorFiltered(
          colorFilter: _filters[_selectedFilterIndex],
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1568454537842-d933259bb258'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Opacity(
                opacity: 0.8,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    _filterNames[_selectedFilterIndex],
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
