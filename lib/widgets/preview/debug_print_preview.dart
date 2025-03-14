import 'package:flutter/material.dart';

class DebugPrintPreview extends StatelessWidget {
  const DebugPrintPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'debugPrint() Example',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Text(
            'This widget demonstrates debugPrint().\n'
            'Check your debug console after pressing the button.',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // This will print to the debug console
              debugPrint('Button pressed at ${DateTime.now()}');
              debugPrint('This is how debugPrint works in Flutter!');

              // Show a snackbar to let the user know to check the console
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Check the debug console for messages'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            child: const Text('Log to Console'),
          ),
        ],
      ),
    );
  }
}
