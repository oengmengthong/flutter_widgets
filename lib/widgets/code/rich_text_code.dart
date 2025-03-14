const String richTextCode = '''
// Basic RichText with multiple styles
RichText(
  text: TextSpan(
    text: 'Hello ',
    style: TextStyle(color: Colors.black, fontSize: 16),
    children: <TextSpan>[
      TextSpan(
        text: 'bold',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(text: ' and '),
      TextSpan(
        text: 'italic',
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
      TextSpan(text: ' text.'),
    ],
  ),
)

// RichText with colors
RichText(
  text: TextSpan(
    style: TextStyle(fontSize: 16, color: Colors.black),
    children: <TextSpan>[
      TextSpan(text: 'Flutter is '),
      TextSpan(
        text: 'beautiful ',
        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: 'and ',
        style: TextStyle(color: Colors.green),
      ),
      TextSpan(
        text: 'productive',
        style: TextStyle(color: Colors.red, decoration: TextDecoration.underline),
      ),
    ],
  ),
)

// RichText with tap gestures
import 'package:flutter/gestures.dart';

RichText(
  text: TextSpan(
    style: TextStyle(color: Colors.black, fontSize: 16),
    children: <TextSpan>[
      TextSpan(text: 'Don\\'t have an account? '),
      TextSpan(
        text: 'Sign up',
        style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            // Handle tap event
            print('Sign up tapped');
            // Navigator.push(...) or any other action
          },
      ),
    ],
  ),
)

// RichText with text alignment
RichText(
  textAlign: TextAlign.center,
  text: TextSpan(
    style: TextStyle(color: Colors.black, fontSize: 16),
    children: <TextSpan>[
      TextSpan(text: 'This is a centered paragraph with '),
      TextSpan(
        text: 'important ',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
      ),
      TextSpan(text: 'information that you should read.'),
    ],
  ),
)

// RichText with various text decorations
RichText(
  text: TextSpan(
    style: TextStyle(color: Colors.black, fontSize: 16),
    children: <TextSpan>[
      TextSpan(
        text: 'Strikethrough ',
        style: TextStyle(decoration: TextDecoration.lineThrough, color: Colors.red),
      ),
      TextSpan(
        text: 'Underline ',
        style: TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Colors.blue,
          decorationStyle: TextDecorationStyle.dotted,
          decorationThickness: 2,
        ),
      ),
      TextSpan(
        text: 'Overline',
        style: TextStyle(decoration: TextDecoration.overline, color: Colors.green),
      ),
    ],
  ),
)

// RichText with TextSpan nesting
RichText(
  text: TextSpan(
    style: TextStyle(color: Colors.black, fontSize: 16),
    children: <TextSpan>[
      TextSpan(text: 'Hello, '),
      TextSpan(
        text: 'Flutter Developer',
        style: TextStyle(fontWeight: FontWeight.bold),
        children: <TextSpan>[
          TextSpan(
            text: ' (Expert)',
            style: TextStyle(color: Colors.green, fontSize: 12),
          ),
        ],
      ),
      TextSpan(text: '!'),
    ],
  ),
)
''';
