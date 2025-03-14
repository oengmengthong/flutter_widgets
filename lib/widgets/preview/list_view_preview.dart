import 'package:flutter/material.dart';

class ListViewPreview extends StatelessWidget {
  const ListViewPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Generate a list of 20 items
    final List<String> items =
        List.generate(20, (index) => 'Item ${index + 1}');

    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor:
                  Colors.primaries[index % Colors.primaries.length],
              child: Text('${index + 1}'),
            ),
            title: Text(items[index]),
            subtitle: Text('Tap for more details'),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('You tapped on ${items[index]}'),
                  duration: const Duration(seconds: 1),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
