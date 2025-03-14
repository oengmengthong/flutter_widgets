// Basic Counter Example with setState
class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'You have pushed the button this many times:',
        ),
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.headline4,
        ),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Increment'),
        ),
      ],
    );
  }
}

// Toggle Switch Example
class ToggleWidget extends StatefulWidget {
  const ToggleWidget({Key? key}) : super(key: key);

  @override
  State<ToggleWidget> createState() => _ToggleWidgetState();
}

class _ToggleWidgetState extends State<ToggleWidget> {
  bool _isToggled = false;

  void _toggle() {
    setState(() {
      _isToggled = !_isToggled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          color: _isToggled ? Colors.green : Colors.red,
          child: Center(
            child: Text(
              _isToggled ? 'ON' : 'OFF',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: _toggle,
          child: Text(_isToggled ? 'Turn OFF' : 'Turn ON'),
        ),
      ],
    );
  }
}

// Form Input Example
class FormExample extends StatefulWidget {
  @override
  _FormExampleState createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _result = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      // Update UI with form data
      setState(() {
        _result = 'Name: $_name\nEmail: $_email';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Submit'),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        if (_result.isNotEmpty)
          Container(
            padding: EdgeInsets.all(12),
            color: Colors.grey[200],
            child: Text(_result),
          ),
      ],
    );
  }
}

// Animation with setState
class AnimatedBoxWidget extends StatefulWidget {
  @override
  _AnimatedBoxWidgetState createState() => _AnimatedBoxWidgetState();
}

class _AnimatedBoxWidgetState extends State<AnimatedBoxWidget> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.blue;
  bool _isExpanded = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
      _width = _isExpanded ? 200 : 100;
      _height = _isExpanded ? 200 : 100;
      _color = _isExpanded ? Colors.purple : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          width: _width,
          height: _height,
          color: _color,
          child: Center(
            child: Text(
              _isExpanded ? 'Expanded' : 'Normal',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: _toggleExpand,
          child: Text(_isExpanded ? 'Shrink' : 'Expand'),
        ),
      ],
    );
  }
}

const String setStateCode = '''
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // These variables are part of the state
  int _counter = 0;
  bool _isToggled = false;
  Color _color = Colors.blue;

  void _incrementCounter() {
    // setState tells Flutter that the state has changed,
    // which triggers a rebuild of the widget
    setState(() {
      _counter++;
      
      // You can update multiple state variables in a single setState call
      if (_counter % 2 == 0) {
        _isToggled = !_isToggled;
        _color = _isToggled ? Colors.green : Colors.blue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // The build method will be re-run every time setState is called
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: _color,
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Counter: \$_counter',
            style: const TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: const Text('Increment'),
        ),
      ],
    );
  }
}
''';
