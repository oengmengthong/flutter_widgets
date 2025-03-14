import 'package:flutter/material.dart';

class LimitedBoxPreview extends StatelessWidget {
  const LimitedBoxPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.grey[200],
        width: 300,
        height: 250,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      color: Colors.blue[100],
                      padding: const EdgeInsets.all(8),
                      child: const LimitedBox(
                        maxWidth: 150,
                        maxHeight: 100,
                        child: Card(
                          color: Colors.blue,
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              'Limited to:\nMax Width 150\nMax Height 100',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.green[100],
                      padding: const EdgeInsets.all(8),
                      child: const LimitedBox(
                        maxWidth: 200,
                        maxHeight: 150,
                        child: Card(
                          color: Colors.green,
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              'Limited to:\nMax Width 200\nMax Height 150',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'LimitedBox prevents widgets from growing beyond specified limits',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
