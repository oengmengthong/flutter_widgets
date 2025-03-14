const String themeCode = '''
// Basic Theme usage
ThemeData lightTheme = ThemeData(
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    bodyLarge: TextStyle(fontSize: 16.0, color: Colors.black87),
    titleLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
  ),
  colorScheme: ColorScheme.light(
    primary: Colors.blue,
    secondary: Colors.blueAccent,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blue,
    textTheme: ButtonTextTheme.primary,
  ),
);

ThemeData darkTheme = ThemeData(
  primaryColor: Colors.blueGrey,
  scaffoldBackgroundColor: Colors.grey[900],
  textTheme: TextTheme(
    bodyLarge: TextStyle(fontSize: 16.0, color: Colors.white),
    titleLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
  ),
  colorScheme: ColorScheme.dark(
    primary: Colors.blueGrey,
    secondary: Colors.blueAccent,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blueGrey,
    textTheme: ButtonTextTheme.primary,
  ),
);

// Using the theme at the top of your app
MaterialApp(
  title: 'My App',
  theme: lightTheme,
  darkTheme: darkTheme,
  themeMode: ThemeMode.system, // Use system, light, or dark
  home: MyHomePage(),
)

// Accessing the theme in your widgets
Widget build(BuildContext context) {
  final theme = Theme.of(context);
  return Column(
    children: [
      Text(
        'Heading',
        style: theme.textTheme.titleLarge,
      ),
      Text(
        'This is body text',
        style: theme.textTheme.bodyLarge,
      ),
      ElevatedButton(
        onPressed: () {},
        child: Text('Button'),
        // The button will automatically use the theme's colors
      ),
    ],
  );
}

// Theme for a specific part of the widget tree
Theme(
  // This theme is applied only to the widgets below it
  data: Theme.of(context).copyWith(
    colorScheme: Theme.of(context).colorScheme.copyWith(
      primary: Colors.red, // Change the primary color just for this subtree
    ),
  ),
  child: Builder(
    builder: (context) {
      return ElevatedButton(
        onPressed: () {},
        child: Text('This button uses the red theme'),
      );
    },
  ),
)

// Creating a theme using ColorScheme
ThemeData(
  // In Material 3, use ColorScheme.fromSeed to generate a color scheme
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.green,
    brightness: Brightness.light,
  ),
  // Enable Material 3
  useMaterial3: true,
)

// Extending/customizing theme components
ThemeData(
  // Extension for custom theme values
  extensions: [
    MyCustomTheme(
      specialColor: Colors.purple,
      specialPadding: EdgeInsets.all(16),
    ),
  ],
  // Other theme properties
)

// And then accessing it in your code:
final myTheme = Theme.of(context).extension<MyCustomTheme>();
Container(
  color: myTheme?.specialColor,
  padding: myTheme?.specialPadding,
  child: Text('Custom themed content'),
)

// Theme with Material 3 (latest Material Design)
ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
    brightness: Brightness.light,
  ),
  // Material 3 will automatically generate appropriate theme settings
  // from this color scheme
)
''';
