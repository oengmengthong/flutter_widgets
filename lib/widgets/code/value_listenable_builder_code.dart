const String valueListenableBuilderCode = '''
// Create a ValueNotifier
final ValueNotifier<int> _counter = ValueNotifier<int>(0);

// Use ValueListenableBuilder to rebuild only when value changes
ValueListenableBuilder<int>(
  valueListenable: _counter,
  builder: (context, value, child) {
    return Text(
      'Count: \$value',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  },
)

// To update the value:
// _counter.value++;

// Don't forget to dispose when done:
// @override
// void dispose() {
//   _counter.dispose();
//   super.dispose();
// }
''';
