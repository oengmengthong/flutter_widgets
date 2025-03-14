import 'package:flutter/material.dart';

class OffstagePreview extends StatefulWidget {
  const OffstagePreview({super.key});

  @override
  State<OffstagePreview> createState() => _OffstagePreviewState();
}

class _OffstagePreviewState extends State<OffstagePreview> {
  bool _isOffstage = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 150,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Offstage(
              offstage: _isOffstage,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Hidden when offstage is true',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isOffstage = !_isOffstage;
            });
          },
          child: Text(_isOffstage ? 'Show Widget' : 'Hide Widget'),
        ),
        const SizedBox(height: 10),
        Text(
          'Widget is ${_isOffstage ? "offstage (hidden but still in tree)" : "visible"}',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
