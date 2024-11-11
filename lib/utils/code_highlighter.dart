import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

class CodeHighlighter extends StatelessWidget {
  final String code;

  const CodeHighlighter({super.key, required this.code});

  @override
  Widget build(BuildContext context) {
    return HighlightView(
      code,
      language: 'dart',
      theme: githubTheme,
      padding: const EdgeInsets.all(16),
      textStyle: const TextStyle(fontFamily: 'SourceCodePro'),
    );
  }
}
