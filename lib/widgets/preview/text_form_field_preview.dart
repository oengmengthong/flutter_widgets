import 'package:flutter/material.dart';

class TextFormFieldPreview extends StatefulWidget {
  const TextFormFieldPreview({Key? key}) : super(key: key);

  @override
  State<TextFormFieldPreview> createState() => _TextFormFieldPreviewState();
}

class _TextFormFieldPreviewState extends State<TextFormFieldPreview> {
  final _formKey = GlobalKey<FormState>();
  String? _input;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email',
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              if (!value.contains('@')) {
                return 'Please enter a valid email';
              }
              return null;
            },
            onSaved: (value) {
              _input = value;
            },
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Email saved: $_input')),
                );
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
