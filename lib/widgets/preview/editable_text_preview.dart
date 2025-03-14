import 'package:flutter/material.dart';

class EditableTextPreview extends StatefulWidget {
  const EditableTextPreview({Key? key}) : super(key: key);

  @override
  State<EditableTextPreview> createState() => _EditableTextPreviewState();
}

class _EditableTextPreviewState extends State<EditableTextPreview> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final GlobalKey<EditableTextState> _editableTextKey = GlobalKey();
  TextStyle _style = const TextStyle(
    color: Colors.black,
    fontSize: 16,
  );

  @override
  void initState() {
    super.initState();
    _controller.text = 'This is an EditableText widget, tap to edit';
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // The EditableText widget
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: EditableText(
            key: _editableTextKey,
            controller: _controller,
            focusNode: _focusNode,
            style: _style,
            cursorColor: Colors.blue,
            backgroundCursorColor: Colors.grey,
            selectionColor: Colors.blue.withOpacity(0.3),
            maxLines: null,
            minLines: 3,
            strutStyle: const StrutStyle(),
            textAlign: TextAlign.start,
            onChanged: (value) {
              // You can handle text changes here
            },
          ),
        ),
        const SizedBox(height: 16),
        // Controls to modify text style
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _style = const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  );
                });
              },
              child: const Text('Bold'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _style = const TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                  );
                });
              },
              child: const Text('Italic'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _style = const TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  );
                });
              },
              child: const Text('Blue'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _style = const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  );
                });
              },
              child: const Text('Reset'),
            ),
          ],
        ),
        const SizedBox(height: 16),
        // Action buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                _focusNode.requestFocus();
              },
              child: const Text('Focus'),
            ),
            const SizedBox(width: 16),
            OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Text: ${_controller.text}')),
                );
              },
              child: const Text('Get Text'),
            ),
          ],
        ),
      ],
    );
  }
}
