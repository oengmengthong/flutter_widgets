import 'package:flutter/material.dart';

class FloatingActionButtonPreview extends StatelessWidget {
  const FloatingActionButtonPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Press the floating action button'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        tooltip: 'Add Item',
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
