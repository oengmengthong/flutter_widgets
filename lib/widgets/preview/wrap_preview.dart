import 'package:flutter/material.dart';

class WrapPreview extends StatelessWidget {
  const WrapPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: <Widget>[
          _buildChip('Flutter'),
          _buildChip('Dart'),
          _buildChip('Android'),
          _buildChip('iOS'),
          _buildChip('Web'),
          _buildChip('Desktop'),
          _buildChip('Material'),
        ],
      ),
    );
  }

  Widget _buildChip(String label) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.blue.shade100,
      labelStyle: const TextStyle(color: Colors.blue),
      avatar: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text(label[0]),
      ),
    );
  }
}
