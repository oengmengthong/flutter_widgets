import 'package:flutter/material.dart';

class SegmentedButtonPreview extends StatefulWidget {
  const SegmentedButtonPreview({Key? key}) : super(key: key);

  @override
  State<SegmentedButtonPreview> createState() => _SegmentedButtonPreviewState();
}

class _SegmentedButtonPreviewState extends State<SegmentedButtonPreview> {
  Set<String> _selection1 = {'Day'};
  String? _selection2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Multi-select segmented button
        SegmentedButton<String>(
          segments: const [
            ButtonSegment<String>(
              value: 'Day',
              icon: Icon(Icons.wb_sunny_outlined),
              label: Text('Day'),
            ),
            ButtonSegment<String>(
              value: 'Week',
              icon: Icon(Icons.calendar_view_week),
              label: Text('Week'),
            ),
            ButtonSegment<String>(
              value: 'Month',
              icon: Icon(Icons.calendar_month),
              label: Text('Month'),
            ),
          ],
          selected: _selection1,
          onSelectionChanged: (newSelection) {
            setState(() {
              _selection1 = newSelection;
            });
          },
          multiSelectionEnabled: true,
        ),
        const SizedBox(height: 24),
        // Single select segmented button
        SegmentedButton<String>(
          segments: const [
            ButtonSegment<String>(
              value: 'List',
              icon: Icon(Icons.list),
              label: Text('List'),
            ),
            ButtonSegment<String>(
              value: 'Grid',
              icon: Icon(Icons.grid_view),
              label: Text('Grid'),
            ),
            ButtonSegment<String>(
              value: 'Card',
              icon: Icon(Icons.view_agenda),
              label: Text('Card'),
            ),
          ],
          selected: {_selection2 ?? 'List'},
          onSelectionChanged: (newSelection) {
            setState(() {
              _selection2 = newSelection.first;
            });
          },
          style: const ButtonStyle(
            visualDensity: VisualDensity(horizontal: -1, vertical: -1),
          ),
        ),
      ],
    );
  }
}
