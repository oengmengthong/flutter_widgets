import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPickerPreview extends StatefulWidget {
  const CupertinoPickerPreview({Key? key}) : super(key: key);

  @override
  State<CupertinoPickerPreview> createState() => _CupertinoPickerPreviewState();
}

class _CupertinoPickerPreviewState extends State<CupertinoPickerPreview> {
  int _selectedFruit = 0;
  final List<String> _fruits = [
    'Apple',
    'Banana',
    'Orange',
    'Grapes',
    'Watermelon',
    'Strawberry',
    'Blueberry',
    'Pineapple',
    'Mango',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Selected Fruit: ${_fruits[_selectedFruit]}',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 200,
          child: CupertinoPicker(
            backgroundColor: CupertinoColors.systemBackground,
            itemExtent: 40,
            scrollController:
                FixedExtentScrollController(initialItem: _selectedFruit),
            onSelectedItemChanged: (int index) {
              setState(() {
                _selectedFruit = index;
              });
            },
            children: _fruits.map((fruit) {
              return Center(
                child: Text(
                  fruit,
                  style: const TextStyle(fontSize: 20),
                ),
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 16),
        CupertinoButton.filled(
          onPressed: () {
            showCupertinoModalPopup<void>(
              context: context,
              builder: (BuildContext context) => Container(
                height: 216,
                padding: const EdgeInsets.only(top: 6),
                margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                color: CupertinoColors.systemBackground.resolveFrom(context),
                child: SafeArea(
                  top: false,
                  child: CupertinoPicker(
                    magnification: 1.22,
                    squeeze: 1.2,
                    useMagnifier: true,
                    itemExtent: 32,
                    onSelectedItemChanged: (int index) {
                      setState(() {
                        _selectedFruit = index;
                      });
                    },
                    children: _fruits.map((fruit) {
                      return Center(
                        child: Text(fruit),
                      );
                    }).toList(),
                  ),
                ),
              ),
            );
          },
          child: const Text('Show Modal Picker'),
        ),
      ],
    );
  }
}
