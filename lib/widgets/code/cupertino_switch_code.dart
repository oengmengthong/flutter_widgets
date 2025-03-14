const String cupertinoSwitchCode = '''
// Basic CupertinoSwitch
class SwitchExample extends StatefulWidget {
  @override
  _SwitchExampleState createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: _switchValue,
      onChanged: (bool value) {
        setState(() {
          _switchValue = value;
        });
      },
    );
  }
}

// CupertinoSwitch with custom colors
CupertinoSwitch(
  value: switchValue,
  onChanged: (bool value) {
    setState(() {
      switchValue = value;
    });
  },
  activeColor: CupertinoColors.systemGreen, // Color when switch is on
  trackColor: CupertinoColors.systemGrey, // Background color when off
  thumbColor: CupertinoColors.white, // Color of the thumb/knob
)

// CupertinoSwitch with label
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text('Enable notifications'),
    CupertinoSwitch(
      value: notificationsEnabled,
      onChanged: (bool value) {
        setState(() {
          notificationsEnabled = value;
        });
      },
    ),
  ],
)

// Disabled CupertinoSwitch
CupertinoSwitch(
  value: true,
  onChanged: null, // Set to null to disable the switch
)

// CupertinoSwitch vs Material Switch
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Column(
      children: [
        Text('Cupertino (iOS)'),
        CupertinoSwitch(
          value: value,
          onChanged: (bool newValue) {
            setState(() {
              value = newValue;
            });
          },
        ),
      ],
    ),
    Column(
      children: [
        Text('Material (Android)'),
        Switch(
          value: value,
          onChanged: (bool newValue) {
            setState(() {
              value = newValue;
            });
          },
        ),
      ],
    ),
  ],
)

// CupertinoSwitch in a list
CupertinoPageScaffold(
  navigationBar: CupertinoNavigationBar(
    middle: Text('Settings'),
  ),
  child: SafeArea(
    child: ListView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Dark Mode'),
              CupertinoSwitch(
                value: darkMode,
                onChanged: (value) {
                  setState(() {
                    darkMode = value;
                  });
                },
              ),
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Notifications'),
              CupertinoSwitch(
                value: notifications,
                onChanged: (value) {
                  setState(() {
                    notifications = value;
                  });
                },
              ),
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Location Services'),
              CupertinoSwitch(
                value: location,
                onChanged: (value) {
                  setState(() {
                    location = value;
                  });
                },
              ),
            ],
          ),
        ),
      ],
    ),
  ),
)

// Animation when toggling a CupertinoSwitch
class AnimatedSwitchExample extends StatefulWidget {
  @override
  _AnimatedSwitchExampleState createState() => _AnimatedSwitchExampleState();
}

class _AnimatedSwitchExampleState extends State<AnimatedSwitchExample> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CupertinoSwitch(
          value: _switchValue,
          onChanged: (bool value) {
            setState(() {
              _switchValue = value;
            });
          },
        ),
        SizedBox(height: 20),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          height: 100,
          width: 100,
          color: _switchValue ? CupertinoColors.activeBlue : CupertinoColors.systemGrey,
          child: Center(
            child: Text(
              _switchValue ? 'ON' : 'OFF',
              style: TextStyle(
                color: CupertinoColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
''';
