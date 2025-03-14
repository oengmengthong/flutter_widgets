import 'package:flutter/material.dart';

class RangeSliderPreview extends StatefulWidget {
  const RangeSliderPreview({Key? key}) : super(key: key);

  @override
  State<RangeSliderPreview> createState() => _RangeSliderPreviewState();
}

class _RangeSliderPreviewState extends State<RangeSliderPreview> {
  RangeValues _currentRangeValues = const RangeValues(20, 80);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Range: ${_currentRangeValues.start.round()} - ${_currentRangeValues.end.round()}',
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 10),
        RangeSlider(
          values: _currentRangeValues,
          min: 0,
          max: 100,
          divisions: 10,
          labels: RangeLabels(
            _currentRangeValues.start.round().toString(),
            _currentRangeValues.end.round().toString(),
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
            });
          },
        ),
      ],
    );
  }
}
