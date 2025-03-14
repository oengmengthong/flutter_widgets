import 'package:flutter/material.dart';

class CheckboxPreview extends StatefulWidget {
  const CheckboxPreview({Key? key}) : super(key: key);

  @override
  State<CheckboxPreview> createState() => _CheckboxPreviewState();
}

class _CheckboxPreviewState extends State<CheckboxPreview> {
  bool _isChecked = false;
  bool _isIndeterminate = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value!;
                  _isIndeterminate = false;
                });
              },
            ),
            const SizedBox(width: 8),
            const Text('Standard Checkbox'),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: _isIndeterminate ? null : _isChecked,
              tristate: true,
              onChanged: (value) {
                setState(() {
                  if (value == null) {
                    _isIndeterminate = true;
                    _isChecked = false;
                  } else {
                    _isIndeterminate = false;
                    _isChecked = value;
                  }
                });
              },
            ),
            const SizedBox(width: 8),
            Text(_isIndeterminate
                ? 'Indeterminate state'
                : _isChecked
                    ? 'Checked'
                    : 'Unchecked'),
          ],
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isChecked = !_isChecked;
              _isIndeterminate = false;
            });
          },
          child: Text(_isChecked ? 'Uncheck' : 'Check'),
        ),
      ],
    );
  }
}
