import 'package:flutter/material.dart';

class TextFieldPreview extends StatefulWidget {
  const TextFieldPreview({Key? key}) : super(key: key);

  @override
  State<TextFieldPreview> createState() => _TextFieldPreviewState();
}

class _TextFieldPreviewState extends State<TextFieldPreview> {
  final TextEditingController _controller = TextEditingController();
  String _inputText = '';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              labelText: 'Enter your text',
              hintText: 'Type something...',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.edit),
              suffixIcon: Icon(Icons.clear),
            ),
            onChanged: (value) {
              setState(() {
                _inputText = value;
              });
            },
          ),
          const SizedBox(height: 16),
          Text(
            _inputText.isEmpty
                ? 'No text entered yet'
                : 'You entered: $_inputText',
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _controller.clear();
                _inputText = '';
              });
            },
            child: const Text('Clear'),
          ),
        ],
      ),
    );
  }
}
