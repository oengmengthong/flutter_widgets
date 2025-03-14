import 'package:flutter/material.dart';

class AlignPreview extends StatelessWidget {
  const AlignPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        color: Colors.grey[200],
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.blue[100],
                child: const Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('topRight'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green[100],
                child: const Align(
                  alignment: Alignment.center,
                  child: Text('center'),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.orange[100],
                child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('bottomLeft'),
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
