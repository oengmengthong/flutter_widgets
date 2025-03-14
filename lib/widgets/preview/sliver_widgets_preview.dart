import 'package:flutter/material.dart';

import 'sliver_list_preview.dart';


// Optional: Add a general SliverWidgetsPreview class if needed
class SliverWidgetsPreview extends StatelessWidget {
  const SliverWidgetsPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This could display multiple sliver widgets or delegate to a specific one
    return const SliverListPreview();
  }
}
