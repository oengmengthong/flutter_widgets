import 'package:flutter/material.dart';

class SelectableTextPreview extends StatefulWidget {
  const SelectableTextPreview({Key? key}) : super(key: key);

  @override
  State<SelectableTextPreview> createState() => _SelectableTextPreviewState();
}

class _SelectableTextPreviewState extends State<SelectableTextPreview> {
  String _selectedText = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SelectableText(
          'This text can be selected. Try selecting part of this text!',
          style: const TextStyle(fontSize: 16),
          onSelectionChanged:
              (TextSelection selection, SelectionChangedCause? cause) {
            if (selection.baseOffset >= 0 && selection.extentOffset >= 0) {
              final selectedText =
                  'This text can be selected. Try selecting part of this text!'
                      .substring(selection.baseOffset, selection.extentOffset);
              setState(() {
                _selectedText = selectedText;
              });
            }
          },
          cursorColor: Colors.blue,
          showCursor: true,
        ),
        const SizedBox(height: 20),
        if (_selectedText.isNotEmpty) ...[
          const Text('You selected:'),
          Text(
            _selectedText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ],
      ],
    );
  }
}
