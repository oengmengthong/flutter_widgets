import 'package:flutter/material.dart';

class SnackBarPreview extends StatelessWidget {
  const SnackBarPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Show SnackBar'),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('This is a SnackBar'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  // Code to undo the action
                },
              ),
              duration: const Duration(seconds: 3),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              margin: const EdgeInsets.all(10.0),
            ),
          );
        },
      ),
    );
  }
}
