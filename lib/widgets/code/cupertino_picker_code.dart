const String cupertinoPickerCode = '''
// Basic CupertinoPicker
CupertinoPicker(
  backgroundColor: CupertinoColors.systemBackground,
  itemExtent: 40, // Height of each item
  onSelectedItemChanged: (int index) {
    setState(() {
      _selectedIndex = index;
    });
  },
  children: List<Widget>.generate(
    10,
    (index) => Center(
      child: Text('Item \$index'),
    ),
  ),
)

// CupertinoPicker with fixed scroll controller
CupertinoPicker(
  backgroundColor: CupertinoColors.white,
  itemExtent: 30,
  scrollController: FixedExtentScrollController(initialItem: 3),
  onSelectedItemChanged: (int value) {
    print('Selected: \$value');
  },
  children: [
    Text('Option 1'),
    Text('Option 2'),
    Text('Option 3'),
    Text('Option 4'),
    Text('Option 5'),
  ],
)

// CupertinoPicker with magnifier
CupertinoPicker(
  magnification: 1.22,
  squeeze: 1.2,
  useMagnifier: true,
  itemExtent: 32,
  onSelectedItemChanged: (int selectedItem) {
    setState(() {
      _selectedItem = selectedItem;
    });
  },
  children: List<Widget>.generate(
    20,
    (int index) {
      return Center(
        child: Text(
          '\$index',
          style: const TextStyle(fontSize: 20),
        ),
      );
    },
  ),
)

// CupertinoPicker in modal popup
void _showPicker() {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => Container(
      height: 216,
      padding: const EdgeInsets.only(top: 6.0),
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      color: CupertinoColors.systemBackground.resolveFrom(context),
      child: SafeArea(
        top: false,
        child: CupertinoPicker(
          itemExtent: 32,
          onSelectedItemChanged: (int selectedItem) {
            setState(() {
              _selectedItem = selectedItem;
            });
          },
          children: List<Widget>.generate(
            items.length,
            (int index) {
              return Center(
                child: Text(
                  items[index],
                ),
              );
            },
          ),
        ),
      ),
    ),
  );
}

// CupertinoDatePicker (Date only)
showCupertinoModalPopup<void>(
  context: context,
  builder: (BuildContext context) => Container(
    height: 216,
    padding: const EdgeInsets.only(top: 6.0),
    margin: EdgeInsets.only(
      bottom: MediaQuery.of(context).viewInsets.bottom,
    ),
    color: CupertinoColors.systemBackground.resolveFrom(context),
    child: SafeArea(
      top: false,
      child: CupertinoDatePicker(
        initialDateTime: DateTime.now(),
        mode: CupertinoDatePickerMode.date,
        use24hFormat: true,
        onDateTimeChanged: (DateTime newDate) {
          setState(() {
            _selectedDate = newDate;
          });
        },
      ),
    ),
  ),
)
''';
