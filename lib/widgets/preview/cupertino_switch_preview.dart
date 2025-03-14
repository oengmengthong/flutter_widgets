import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchPreview extends StatefulWidget {
  const CupertinoSwitchPreview({Key? key}) : super(key: key);

  @override
  State<CupertinoSwitchPreview> createState() => _CupertinoSwitchPreviewState();
}

class _CupertinoSwitchPreviewState extends State<CupertinoSwitchPreview> {
  bool _switchValue1 = true;
  bool _switchValue2 = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Standard: '),
              CupertinoSwitch(
                value: _switchValue1,
                onChanged: (bool value) {
                  setState(() {
                    _switchValue1 = value;
                  });
                },
              ),
              const SizedBox(width: 8),
              Text(_switchValue1 ? 'ON' : 'OFF'),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Custom: '),
              CupertinoSwitch(
                value: _switchValue2,
                onChanged: (bool value) {
                  setState(() {
                    _switchValue2 = value;
                  });
                },
                activeColor: CupertinoColors.systemGreen,
                trackColor: CupertinoColors.systemGrey,
                thumbColor: CupertinoColors.white,
              ),
              const SizedBox(width: 8),
              Text(_switchValue2 ? 'ON' : 'OFF'),
            ],
          ),
          const SizedBox(height: 20),
          CupertinoButton(
            onPressed: () {
              setState(() {
                _switchValue1 = !_switchValue1;
                _switchValue2 = !_switchValue2;
              });
            },
            child: const Text('Toggle All'),
          ),
        ],
      ),
    );
  }
}
