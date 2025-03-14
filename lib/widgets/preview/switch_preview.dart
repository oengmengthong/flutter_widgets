import 'package:flutter/material.dart';

class SwitchPreview extends StatefulWidget {
  const SwitchPreview({Key? key}) : super(key: key);

  @override
  State<SwitchPreview> createState() => _SwitchPreviewState();
}

class _SwitchPreviewState extends State<SwitchPreview> {
  bool _isBasicSwitchOn = true;
  bool _isColoredSwitchOn = false;
  bool _isAdaptiveSwitchOn = true;
  bool _isCustomSwitchOn = false;
  bool _featureEnabled = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Basic Switch
          const Text('Basic Switch', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Toggle feature'),
              Switch(
                value: _isBasicSwitchOn,
                onChanged: (value) {
                  setState(() {
                    _isBasicSwitchOn = value;
                  });
                },
              ),
            ],
          ),
          
          const SizedBox(height: 24),
          
          // Colored Switch
          const Text('Colored Switch', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Custom colors'),
              Switch(
                value: _isColoredSwitchOn,
                onChanged: (value) {
                  setState(() {
                    _isColoredSwitchOn = value;
                  });
                },
                activeColor: Colors.green,
                activeTrackColor: Colors.lightGreen,
                inactiveThumbColor: Colors.redAccent,
                inactiveTrackColor: Colors.red.withOpacity(0.5),
              ),
            ],
          ),
          
          const SizedBox(height: 24),
          
          // Adaptive Switch 
          const Text('Adaptive Switch (platform-specific style)', 
                style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Adaptive switch'),
              Switch.adaptive(
                value: _isAdaptiveSwitchOn,
                onChanged: (value) {
                  setState(() {
                    _isAdaptiveSwitchOn = value;
                  });
                },
              ),
            ],
          ),
          
          const SizedBox(height: 24),
          
          // Custom Switch with style
          const Text('Styled Switch with Custom Colors', 
                style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Custom style'),
              Switch(
                value: _isCustomSwitchOn,
                onChanged: (value) {
                  setState(() {
                    _isCustomSwitchOn = value;
                  });
                },
                activeColor: Colors.purple,
                activeTrackColor: Colors.purple.withOpacity(0.5),
                inactiveThumbColor: Colors.grey[400],
                inactiveTrackColor: Colors.grey[300],
                thumbIcon: MaterialStateProperty.resolveWith<Icon?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.selected)) {
                      return const Icon(Icons.check, color: Colors.white, size: 16);
                    }
                    return const Icon(Icons.close, color: Colors.white, size: 16);
                  },
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 24),
          
          // SwitchListTile example
          const Text('SwitchListTile', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Card(
            child: SwitchListTile(