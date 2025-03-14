import 'package:flutter/material.dart';

class ConstrainedBoxPreview extends StatelessWidget {
  const ConstrainedBoxPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.grey.shade200,
            padding: const EdgeInsets.all(10.0),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 100.0,
                maxWidth: 200.0,
                minHeight: 50.0,
                maxHeight: 100.0,
              ),
              child: Container(
                color: Colors.blue,
                width: 300.0, // This will be constrained to maxWidth: 200.0
                height: 150.0, // This will be constrained to maxHeight: 100.0
                child: const Center(
                  child: Text(
                    'Constrained to\nmin: 100×50\nmax: 200×100',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text('Container tries to be 300×150 but is constrained',
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
