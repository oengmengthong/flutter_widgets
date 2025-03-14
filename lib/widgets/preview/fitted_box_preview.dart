import 'package:flutter/material.dart';

class FittedBoxPreview extends StatefulWidget {
  const FittedBoxPreview({super.key});

  @override
  State<FittedBoxPreview> createState() => _FittedBoxPreviewState();
}

class _FittedBoxPreviewState extends State<FittedBoxPreview> {
  BoxFit _boxFit = BoxFit.contain;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 100,
          color: Colors.grey.shade200,
          child: FittedBox(
            fit: _boxFit,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue,
              child: const Text(
                'Resize me to fit',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        DropdownButton<BoxFit>(
          value: _boxFit,
          onChanged: (BoxFit? newValue) {
            if (newValue != null) {
              setState(() {
                _boxFit = newValue;
              });
            }
          },
          items: BoxFit.values.map<DropdownMenuItem<BoxFit>>((BoxFit value) {
            return DropdownMenuItem<BoxFit>(
              value: value,
              child: Text(value.toString().split('.').last),
            );
          }).toList(),
        ),
      ],
    );
  }
}
