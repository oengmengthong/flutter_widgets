const String switchCode = '''
// Basic Switch
bool _isOn = true;

Switch(
  value: _isOn,
  onChanged: (bool value) {
    setState(() {
      _isOn = value;
    });
  },
)

// Switch with custom colors
Switch(
  value: _isOn,
  onChanged: (bool value) {
    setState(() {
      _isOn = value;
    });
  },
  activeColor: Colors.green, // Color of the thumb when active
  activeTrackColor: Colors.lightGreen, // Color of the track when active
  inactiveThumbColor: Colors.redAccent, // Color of the thumb when inactive
  inactiveTrackColor: Colors.red.withOpacity(0.5), // Color of the track when inactive
)

// Adaptive Switch (platform-specific style)
Switch.adaptive(
  value: _isOn,
  onChanged: (bool value) {
    setState(() {
      _isOn = value;
    });
  },
)

// Switch with material states
Switch(
  value: _isOn,
  onChanged: (bool value) {
    setState(() {
      _isOn = value;
    });
  },
  activeColor: Colors.blue,
  activeTrackColor: Colors.blue.withOpacity(0.5),
  inactiveThumbColor: Colors.grey[400],
  thumbColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {