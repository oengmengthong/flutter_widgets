import 'package:flutter/material.dart';

class ToggleButtonsPreview extends StatefulWidget {
  const ToggleButtonsPreview({Key? key}) : super(key: key);

  @override
  State<ToggleButtonsPreview> createState() => _ToggleButtonsPreviewState();
}

class _ToggleButtonsPreviewState extends State<ToggleButtonsPreview> {
  // Initial state of the toggle buttons
  final List<bool> _selections1 = [true, false, false];
  final List<bool> _selections2 = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Basic ToggleButtons example
        ToggleButtons(
          isSelected: _selections1,
          onPressed: (int index) {
            setState(() {
              // Single selection mode
              for (int buttonIndex = 0;
                  buttonIndex < _selections1.length;
                  buttonIndex++) {
                _selections1[buttonIndex] = buttonIndex == index;
              }
            });
          },
          children: const [
            Icon(Icons.format_bold),
            Icon(Icons.format_italic),
            Icon(Icons.format_underline),
          ],
        ),
        const SizedBox(height: 24),
        // Styled ToggleButtons with multi-selection
        ToggleButtons(
          isSelected: _selections2,
          onPressed: (int index) {
            setState(() {
              // Toggle the selection
              _selections2[index] = !_selections2[index];
            });
          },
          borderRadius: BorderRadius.circular(12),
          selectedBorderColor: Colors.green,
          selectedColor: Colors.white,
          fillColor: Colors.green,
          splashColor: Colors.green.withOpacity(0.12),
          borderWidth: 2,
          constraints: const BoxConstraints(minHeight: 40, minWidth: 60),
          children: const [
            Icon(Icons.home),
            Icon(Icons.star),
            Icon(Icons.person),
            Icon(Icons.settings),
          ],
        ),
      ],
    );
  }
}
