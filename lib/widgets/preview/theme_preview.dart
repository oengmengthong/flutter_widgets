import 'package:flutter/material.dart';

class ThemePreview extends StatefulWidget {
  const ThemePreview({Key? key}) : super(key: key);

  @override
  State<ThemePreview> createState() => _ThemePreviewState();
}

class _ThemePreviewState extends State<ThemePreview> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _isDarkMode ? _darkTheme : _lightTheme,
      child: Builder(
        builder: (context) {
          final theme = Theme.of(context);
          return Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: theme.scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: theme.dividerColor),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Theme Demo',
                      style: theme.textTheme.titleLarge,
                    ),
                    Switch(
                      value: _isDarkMode,
                      onChanged: (value) {
                        setState(() {
                          _isDarkMode = value;
                        });
                      },
                      activeColor: theme.colorScheme.primary,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  'Current Theme: ${_isDarkMode ? "Dark" : "Light"}',
                  style: theme.textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),
                // Display various themed elements
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Elevated Button'),
                ),
                const SizedBox(height: 8),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Outlined Button'),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {},
                  child: const Text('Text Button'),
                ),
                const SizedBox(height: 16),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Card Title', style: theme.textTheme.titleMedium),
                        const SizedBox(height: 8),
                        Text(
                          'This is a card with themed styles. The appearance changes based on the current theme.',
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Theme colors are used consistently across the app',
                    style: TextStyle(
                        color: theme.colorScheme.onSecondaryContainer),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // Define light theme
  final ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.light,
    ),
    useMaterial3: true,
  );

  // Define dark theme
  final ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.dark,
    ),
    useMaterial3: true,
  );
}
