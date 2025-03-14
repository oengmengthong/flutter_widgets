import 'package:flutter/cupertino.dart';

class CupertinoNavigationBarPreview extends StatelessWidget {
  const CupertinoNavigationBarPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        border: Border.all(color: CupertinoColors.systemGrey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          // Navigation bar at the top
          const CupertinoNavigationBar(
            middle: Text('CupertinoNavigationBar'),
            leading: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: null,
              child: Icon(CupertinoIcons.back),
            ),
            trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: null,
              child: Icon(CupertinoIcons.add),
            ),
          ),
          // Main content area
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(CupertinoIcons.device_phone_portrait, size: 50),
                  SizedBox(height: 16),
                  Text(
                    'iOS-style Navigation',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
