import 'package:flutter/material.dart';

class ListTilePreview extends StatelessWidget {
  const ListTilePreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      elevation: 2.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('A'),
            ),
            title: const Text('Basic ListTile'),
            subtitle: const Text('With leading and trailing widgets'),
            trailing: IconButton(
              icon: const Icon(Icons.star_border),
              onPressed: () {},
            ),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('With Dense Property'),
            subtitle: const Text('More compact layout'),
            dense: true,
            onTap: () {},
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Three-Line ListTile'),
            subtitle: Text(
              'This is a longer subtitle that will wrap to a third line to demonstrate the isThreeLine property.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            isThreeLine: true,
          ),
        ],
      ),
    );
  }
}
