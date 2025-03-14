const String checkboxCode = '''
// Basic Checkbox
class SimpleCheckbox extends StatefulWidget {
  @override
  _SimpleCheckboxState createState() => _SimpleCheckboxState();
}

class _SimpleCheckboxState extends State<SimpleCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

// Checkbox with label
Row(
  children: [
    Checkbox(
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    ),
    Text('I agree to the terms and conditions'),
  ],
)

// Custom styled Checkbox
Checkbox(
  value: isChecked,
  onChanged: (bool? value) {
    setState(() {
      isChecked = value!;
    });
  },
  activeColor: Colors.green,
  checkColor: Colors.white,
  fillColor: MaterialStateProperty.resolveWith<Color>((states) {
    if (states.contains(MaterialState.disabled)) {
      return Colors.grey.withOpacity(.32);
    }
    if (states.contains(MaterialState.selected)) {
      return Colors.green;
    }
    return Colors.grey;
  }),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  side: BorderSide(width: 2, color: Colors.green),
)

// Checkbox with ListTile
CheckboxListTile(
  title: Text('Email notifications'),
  subtitle: Text('Receive updates via email'),
  value: emailNotifications,
  onChanged: (bool? value) {
    setState(() {
      emailNotifications = value!;
    });
  },
  controlAffinity: ListTileControlAffinity.leading, // Place checkbox at the start
  secondary: Icon(Icons.email),
)

// Tristate Checkbox
Checkbox(
  tristate: true,
  value: allSelected ? true : (noneSelected ? false : null),
  onChanged: (bool? value) {
    setState(() {
      if (value == null) {
        // Indeterminate -> true
        allSelected = true;
        noneSelected = false;
      } else if (value) {
        // true -> false
        allSelected = false;
        noneSelected = true;
      } else {
        // false -> indeterminate
        allSelected = false;
        noneSelected = false;
      }
      updateChildCheckboxes();
    });
  },
)

// Group of Checkboxes
class CheckboxGroup extends StatefulWidget {
  @override
  _CheckboxGroupState createState() => _CheckboxGroupState();
}

class _CheckboxGroupState extends State<CheckboxGroup> {
  Map<String, bool> values = {
    'Apple': false,
    'Banana': false,
    'Cherry': false,
    'Durian': false,
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: values.keys.map((String key) {
        return CheckboxListTile(
          title: Text(key),
          value: values[key],
          onChanged: (bool? value) {
            setState(() {
              values[key] = value!;
            });
          },
        );
      }).toList(),
    );
  }
}

// Animated Checkbox
class AnimatedCheckbox extends StatefulWidget {
  @override
  _AnimatedCheckboxState createState() => _AnimatedCheckboxState();
}

class _AnimatedCheckboxState extends State<AnimatedCheckbox>
    with SingleTickerProviderStateMixin {
  bool isChecked = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
          if (isChecked) {
            _controller.forward();
          } else {
            _controller.reverse();
          }
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: isChecked ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: isChecked ? Colors.blue : Colors.grey,
            width: 2,
          ),
        ),
        child: FadeTransition(
          opacity: _animation,
          child: Icon(
            Icons.check,
            size: 20.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
''';
