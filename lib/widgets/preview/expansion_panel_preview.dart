import 'package:flutter/material.dart';

class Item {
  Item({
    required this.headerText,
    required this.expandedText,
    this.isExpanded = false,
  });

  String headerText;
  String expandedText;
  bool isExpanded;
}

class ExpansionPanelPreview extends StatefulWidget {
  const ExpansionPanelPreview({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelPreview> createState() => _ExpansionPanelPreviewState();
}

class _ExpansionPanelPreviewState extends State<ExpansionPanelPreview> {
  final List<Item> _items = [
    Item(
      headerText: 'Panel 1',
      expandedText:
          'This is the first panel\'s expanded content. You can put any widget here.',
    ),
    Item(
      headerText: 'Panel 2',
      expandedText:
          'The second panel contains different information when expanded.',
    ),
    Item(
      headerText: 'Panel 3',
      expandedText:
          'This is the third panel. Each panel can be expanded or collapsed independently.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ExpansionPanelList(
          elevation: 3,
          expandedHeaderPadding: const EdgeInsets.all(8),
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _items[index].isExpanded = !isExpanded;
            });
          },
          children: _items.map<ExpansionPanel>((Item item) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(item.headerText),
                );
              },
              body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  item.expandedText,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              isExpanded: item.isExpanded,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class ExpansionTilePreview extends StatelessWidget {
  const ExpansionTilePreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionTile(
        title: const Text('ExpansionTile'),
        subtitle: const Text('Tap to expand'),
        leading: const Icon(Icons.expand_more),
        children: <Widget>[
          ListTile(
            title: const Text('Item 1'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
