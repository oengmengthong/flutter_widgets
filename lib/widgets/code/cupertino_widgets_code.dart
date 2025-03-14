const String cupertinoButtonCode = '''
CupertinoButton(
  color: CupertinoColors.activeBlue,
  onPressed: () {
    // Add your code here
    print('Cupertino button pressed');
  },
  child: const Text('Cupertino Button'),
)
''';

const String cupertinoNavigationBarCode = '''
CupertinoPageScaffold(
  navigationBar: const CupertinoNavigationBar(
    middle: Text('Page Title'),
    leading: Icon(CupertinoIcons.back),
    trailing: Icon(CupertinoIcons.search),
    backgroundColor: CupertinoColors.systemBackground,
  ),
  child: Center(
    child: Text('Page Content'),
  ),
)
''';

const String cupertinoSwitchCode = '''
// You need a StatefulWidget to use CupertinoSwitch
class MyCupertinoSwitch extends StatefulWidget {
  const MyCupertinoSwitch({Key? key}) : super(key: key);

  @override
  State<MyCupertinoSwitch> createState() => _MyCupertinoSwitchState();
}

class _MyCupertinoSwitchState extends State<MyCupertinoSwitch> {
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: _switchValue,
      activeColor: CupertinoColors.activeGreen,
      onChanged: (bool value) {
        setState(() {
          _switchValue = value;
        });
      },
    );
  }
}
''';

const String cupertinoPickerCode = '''
// Create a picker with fixed height
SizedBox(
  height: 200,
  child: CupertinoPicker(
    itemExtent: 32, // Height of each item
    onSelectedItemChanged: (int selectedItem) {
      print('Selected item: \$selectedItem');
    },
    children: List<Widget>.generate(
      10,
      (int index) {
        return Center(
          child: Text('Item \$index'),
        );
      },
    ),
  ),
)

// To show a picker as a modal:
void _showPicker(BuildContext context) {
  showCupertinoModalPopup(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 200,
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: CupertinoPicker(
          itemExtent: 32,
          onSelectedItemChanged: (int selectedItem) {
            print('Selected item: \$selectedItem');
          },
          children: List<Widget>.generate(
            10,
            (int index) {
              return Center(
                child: Text('Item \$index'),
              );
            },
          ),
        ),
      );
    },
  );
}
''';
