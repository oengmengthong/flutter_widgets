import 'package:flutter/material.dart';

class FractionallySizedBoxPreview extends StatelessWidget {
  const FractionallySizedBoxPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        color: Colors.grey[200],
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.blue[100],
                child: const FractionallySizedBox(
                  widthFactor: 0.5,
                  heightFactor: 0.5,
                  alignment: Alignment.topLeft,
                  child: Card(
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        '50% size\nTopLeft',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                color: Colors.green[100],
                child: const FractionallySizedBox(
                  widthFactor: 0.7,
                  heightFactor: 0.7,
                  alignment: Alignment.center,
                  child: Card(
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        '70% size\nCenter',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
