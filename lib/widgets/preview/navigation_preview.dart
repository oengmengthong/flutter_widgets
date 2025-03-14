import 'package:flutter/material.dart';

class NavigationRailPreview extends StatefulWidget {
  const NavigationRailPreview({Key? key}) : super(key: key);

  @override
  State<NavigationRailPreview> createState() => _NavigationRailPreviewState();
}

class _NavigationRailPreviewState extends State<NavigationRailPreview> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationRail(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          labelType: NavigationRailLabelType.selected,
          destinations: const [
            NavigationRailDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: Text('Home'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.settings_outlined),
              selectedIcon: Icon(Icons.settings),
              label: Text('Settings'),
            ),
          ],
        ),
        const VerticalDivider(thickness: 1, width: 1),
        Expanded(
          child: Center(
            child:
                Text('Selected: ${_selectedIndex == 0 ? "Home" : "Settings"}'),
          ),
        ),
      ],
    );
  }
}

class BottomSheetPreview extends StatelessWidget {
  const BottomSheetPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Show Bottom Sheet'),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200,
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text('Bottom Sheet Content'),
                      ElevatedButton(
                        child: const Text('Close'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
