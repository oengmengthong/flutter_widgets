import 'package:flutter/material.dart';

class RadioPreview extends StatefulWidget {
  const RadioPreview({Key? key}) : super(key: key);

  @override
  State<RadioPreview> createState() => _RadioPreviewState();
}

class _RadioPreviewState extends State<RadioPreview> {
  String? _selectedOption = 'Option 1';
  int _selectedSize = 0;
  Color _selectedColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Basic Radio buttons
        const Text('Basic Radio Buttons:',
            style: TextStyle(fontWeight: FontWeight.bold)),
        Row(
          children: [
            Radio<String>(
              value: 'Option 1',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value;
                });
              },
            ),
            const Text('Option 1'),
            const SizedBox(width: 16),
            Radio<String>(
              value: 'Option 2',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value;
                });
              },
            ),
            const Text('Option 2'),
          ],
        ),

        const SizedBox(height: 16),
        Text('Selected option: $_selectedOption'),

        const SizedBox(height: 24),

        // Radio buttons with ListTile
        const Text('Radio with ListTile:',
            style: TextStyle(fontWeight: FontWeight.bold)),

        RadioListTile<int>(
          title: const Text('Small'),
          value: 0,
          groupValue: _selectedSize,
          onChanged: (value) {
            setState(() {
              _selectedSize = value!;
            });
          },
        ),
        RadioListTile<int>(
          title: const Text('Medium'),
          subtitle: const Text('Recommended'),
          value: 1,
          groupValue: _selectedSize,
          onChanged: (value) {
            setState(() {
              _selectedSize = value!;
            });
          },
        ),
        RadioListTile<int>(
          title: const Text('Large'),
          value: 2,
          groupValue: _selectedSize,
          onChanged: (value) {
            setState(() {
              _selectedSize = value!;
            });
          },
        ),

        const SizedBox(height: 24),

        // Styled Radio buttons
        const Text('Styled Radio Buttons:',
            style: TextStyle(fontWeight: FontWeight.bold)),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Radio<Color>(
                  value: Colors.blue,
                  groupValue: _selectedColor,
                  onChanged: (value) {
                    setState(() {
                      _selectedColor = value!;
                    });
                  },
                  activeColor: Colors.blue,
                ),
                const Text('Blue'),
              ],
            ),
            Column(
              children: [
                Radio<Color>(
                  value: Colors.green,
                  groupValue: _selectedColor,
                  onChanged: (value) {
                    setState(() {
                      _selectedColor = value!;
                    });
                  },
                  activeColor: Colors.green,
                ),
                const Text('Green'),
              ],
            ),
            Column(
              children: [
                Radio<Color>(
                  value: Colors.red,
                  groupValue: _selectedColor,
                  onChanged: (value) {
                    setState(() {
                      _selectedColor = value!;
                    });
                  },
                  activeColor: Colors.red,
                ),
                const Text('Red'),
              ],
            ),
          ],
        ),

        const SizedBox(height: 16),

        Center(
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: _selectedColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
