import 'package:flutter/material.dart';

class TooltipPreview extends StatefulWidget {
  const TooltipPreview({super.key});

  @override
  State<TooltipPreview> createState() => _TooltipPreviewState();
}

class _TooltipPreviewState extends State<TooltipPreview> {
  double _waitDuration = 0.5;
  double _showDuration = 2.0;
  bool _preferBelow = true;
  TooltipTriggerMode _triggerMode = TooltipTriggerMode.longPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Tooltip(
          message: 'This is a tooltip with customizable properties',
          waitDuration: Duration(seconds: _waitDuration.toInt()),
          showDuration: Duration(seconds: _showDuration.toInt()),
          preferBelow: _preferBelow,
          triggerMode: _triggerMode,
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
          decoration: BoxDecoration(
            color: Colors.blue.shade800,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text(
                'Hover or long-press me',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Wait: '),
            Slider(
              value: _waitDuration,
              min: 0,
              max: 2,
              divisions: 4,
              label: '${_waitDuration.toInt()}s',
              onChanged: (value) {
                setState(() {
                  _waitDuration = value;
                });
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Show: '),
            Slider(
              value: _showDuration,
              min: 1,
              max: 5,
              divisions: 4,
              label: '${_showDuration.toInt()}s',
              onChanged: (value) {
                setState(() {
                  _showDuration = value;
                });
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Position: '),
            Switch(
              value: _preferBelow,
              onChanged: (value) {
                setState(() {
                  _preferBelow = value;
                });
              },
            ),
            Text(_preferBelow ? 'Below' : 'Above'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Trigger: '),
            DropdownButton<TooltipTriggerMode>(
              value: _triggerMode,
              onChanged: (TooltipTriggerMode? newValue) {
                if (newValue != null) {
                  setState(() {
                    _triggerMode = newValue;
                  });
                }
              },
              items: TooltipTriggerMode.values.map((TooltipTriggerMode mode) {
                return DropdownMenuItem<TooltipTriggerMode>(
                  value: mode,
                  child: Text(mode.toString().split('.').last),
                );
              }).toList(),
            ),
          ],
        ),
      ],
    );
  }
}
