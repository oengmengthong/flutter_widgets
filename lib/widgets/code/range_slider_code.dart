const String rangeSliderCode = '''
// Basic RangeSlider in a StatefulWidget
class MyRangeSlider extends StatefulWidget {
  const MyRangeSlider({Key? key}) : super(key: key);

  @override
  State<MyRangeSlider> createState() => _MyRangeSliderState();
}

class _MyRangeSliderState extends State<MyRangeSlider> {
  RangeValues _currentRangeValues = const RangeValues(20, 80);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Price Range: \$\${_currentRangeValues.start.round()} - \$\${_currentRangeValues.end.round()}',
        ),
        RangeSlider(
          values: _currentRangeValues,
          min: 0,
          max: 100,
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

// RangeSlider with divisions and labels
RangeSlider(
  values: _currentRangeValues,
  min: 0,
  max: 100,
  divisions: 10, // Enables discrete steps
  labels: RangeLabels(
    '\$\${_currentRangeValues.start.round()}',
    '\$\${_currentRangeValues.end.round()}',
  ),
  onChanged: (RangeValues values) {
    setState(() {
      _currentRangeValues = values;
    });
  },
)

// Custom styled RangeSlider using SliderTheme
SliderTheme(
  data: SliderTheme.of(context).copyWith(
    activeTrackColor: Colors.blue,
    inactiveTrackColor: Colors.blue.withOpacity(0.3),
    trackHeight: 4.0,
    thumbColor: Colors.blueAccent,
    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
    overlayColor: Colors.blue.withAlpha(32),
    overlayShape: const RoundSliderOverlayShape(overlayRadius: 28.0),
    valueIndicatorColor: Colors.blue,
    valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
    valueIndicatorTextStyle: const TextStyle(
      color: Colors.white,
    ),
  ),
  child: RangeSlider(
    values: _currentRangeValues,
    min: 0,
    max: 500,
    divisions: 50,
    labels: RangeLabels(
      '\$\${_currentRangeValues.start.round()}',
      '\$\${_currentRangeValues.end.round()}',
    ),
    onChanged: (RangeValues values) {
      setState(() {
        _currentRangeValues = values;
      });
    },
  ),
)

// Using RangeSlider with a form
Form(
  child: Column(
    children: [
      Text('Select price range:'),
      RangeSlider(
        values: _priceRange,
        min: 0,
        max: 1000,
        divisions: 20,
        labels: RangeLabels(
          '\$\${_priceRange.start.toStringAsFixed(0)}',
          '\$\${_priceRange.end.toStringAsFixed(0)}',
        ),
        onChanged: (RangeValues values) {
          setState(() {
            _priceRange = values;
          });
        },
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Min: \$\${_priceRange.start.toStringAsFixed(0)}'),
          Text('Max: \$\${_priceRange.end.toStringAsFixed(0)}'),
        ],
      ),
      ElevatedButton(
        onPressed: () {
          // Process the selected range
          print('Price range: \$\${_priceRange.start} - \$\${_priceRange.end}');
        },
        child: Text('Apply Filters'),
      ),
    ],
  ),
)

// Updated RangeSlider example
class _RangeSliderExampleState extends State<RangeSliderExample> {
  RangeValues _currentRangeValues = const RangeValues(20, 80);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Range: \${_currentRangeValues.start.round()} - \${_currentRangeValues.end.round()}',
        ),
        SizedBox(height: 10),
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
''';
