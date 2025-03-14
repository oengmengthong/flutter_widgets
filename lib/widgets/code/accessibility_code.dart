const String semanticsCode = '''
Semantics(
  label: 'Profile picture', // Screen reader will read this
  hint: 'Tap to view profile', // Additional information for screen readers
  child: GestureDetector(
    onTap: () {
      print('Profile image tapped');
    },
    child: Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Icon(Icons.person, size: 50, color: Colors.white),
    ),
  ),
)

// You can also use SemanticsProperties for more detailed configuration:
Semantics(
  // Standard semantic properties:
  enabled: true,
  checked: true,
  selected: true,
  button: true,
  label: 'Checkbox',
  value: 'Checked',
  increasedValue: 'More',
  decreasedValue: 'Less',
  hint: 'Tap to toggle',
  
  // Custom actions:
  onTap: () {
    print('Tapped semantically');
  },
  onLongPress: () {
    print('Long pressed semantically');
  },
  
  child: Checkbox(
    value: true,
    onChanged: (_) {},
  ),
)
''';

const String excludeSemanticsCode = '''
Column(
  children: [
    // This text will be accessible to screen readers
    Text('This text has semantics'),
    
    // This content will be completely ignored by screen readers
    ExcludeSemantics(
      child: Text('This text is invisible to screen readers'),
    ),
  ],
)

// Useful when:
// 1. Content is purely decorative
// 2. The parent already provides semantics for all children
// 3. Need to reduce verbosity for screen reader users
''';
