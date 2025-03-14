import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonPreview extends StatelessWidget {
  const CupertinoButtonPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton(
        color: CupertinoColors.activeBlue,
        onPressed: () {},
        child: const Text('Cupertino Button'),
      ),
    );
  }
}

class CupertinoNavigationBarPreview extends StatelessWidget {
  const CupertinoNavigationBarPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('CupertinoNavigationBar'),
        trailing: Icon(CupertinoIcons.search),
      ),
      child: const Center(
        child: Text('Page Content'),
      ),
    );
  }
}

class CupertinoSwitchPreview extends StatefulWidget {
  const CupertinoSwitchPreview({Key? key}) : super(key: key);

  @override
  State<CupertinoSwitchPreview> createState() => _CupertinoSwitchPreviewState();
}

class _CupertinoSwitchPreviewState extends State<CupertinoSwitchPreview> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoSwitch(
        value: switchValue,
        activeColor: CupertinoColors.activeGreen,
        onChanged: (bool value) {
          setState(() {
            switchValue = value;
          });
        },
      ),
    );
  }
}

class CupertinoPickerPreview extends StatelessWidget {
  const CupertinoPickerPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: CupertinoPicker(
        itemExtent: 32,
        onSelectedItemChanged: (_) {},
        children: List<Widget>.generate(
          10,
          (int index) => Center(child: Text('Item $index')),
        ),
      ),
    );
  }
}
