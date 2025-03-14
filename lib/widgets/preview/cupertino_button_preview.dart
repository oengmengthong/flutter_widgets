import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonPreview extends StatelessWidget {
  const CupertinoButtonPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CupertinoButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Regular CupertinoButton pressed'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
            child: const Text('CupertinoButton'),
          ),
          const SizedBox(height: 20),
          CupertinoButton.filled(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Filled CupertinoButton pressed'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
            child: const Text('CupertinoButton.filled'),
          ),
          const SizedBox(height: 20),
          CupertinoButton(
            onPressed: null, // Disabled button
            child: const Text('Disabled Button'),
          ),
        ],
      ),
    );
  }
}
