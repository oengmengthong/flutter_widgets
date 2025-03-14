import 'package:flutter/material.dart';

class OverflowBoxPreview extends StatelessWidget {
  const OverflowBoxPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.grey.shade200,
            child: Center(
              child: OverflowBox(
                minWidth: 0.0,
                minHeight: 0.0,
                maxWidth: 200.0,
                maxHeight: 200.0,
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  color: Colors.blue.withOpacity(0.5),
                  child: const Center(
                    child: Text(
                      'This widget overflows its parent',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Container is 100×100, but child is 150×150',
            textAlign: TextAlign.center,
          ),
          const Text(
            'OverflowBox allows child to overflow parent',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
