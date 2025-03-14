const String textFieldCode = '''
// Basic TextField
TextField(
  decoration: InputDecoration(
    labelText: 'Username',
    hintText: 'Enter your username',
    border: OutlineInputBorder(),
  ),
)

// TextField with controller
class MyTextFieldExample extends StatefulWidget {
  @override
  _MyTextFieldExampleState createState() => _MyTextFieldExampleState();
}

class _MyTextFieldExampleState extends State<MyTextFieldExample> {
  final TextEditingController _controller = TextEditingController();
  String _inputValue = '';

  @override
  void initState() {
    super.initState();
    // Listen for changes in the text field
    _controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(_onTextChanged);
    _controller.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    setState(() {
      _inputValue = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            labelText: 'Enter text',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 16),
        Text('You entered: \$_inputValue'),
      ],
    );
  }
}

// TextField with custom styling
TextField(
  decoration: InputDecoration(
    labelText: 'Email Address',
    hintText: 'example@email.com',
    labelStyle: TextStyle(
      color: Colors.blue,
      fontWeight: FontWeight.bold,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue, width: 1.5),
      borderRadius: BorderRadius.circular(10.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green, width: 2.0),
      borderRadius: BorderRadius.circular(10.0),
    ),
    fillColor: Colors.grey[100],
    filled: true,
    prefixIcon: Icon(Icons.email),
    suffixIcon: Icon(Icons.check_circle),
  ),
  keyboardType: TextInputType.emailAddress,
)

// TextField with password visibility toggle
class PasswordTextField extends StatefulWidget {
  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        labelText: 'Password',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
      ),
    );
  }
}

// TextField with validation
class ValidationTextField extends StatefulWidget {
  @override
  _ValidationTextFieldState createState() => _ValidationTextFieldState();
}

class _ValidationTextFieldState extends State<ValidationTextField> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter an email address';
              }
              if (!value.contains('@') || !value.contains('.')) {
                return 'Please enter a valid email address';
              }
              return null;
            },
            onSaved: (value) {
              _email = value!;
            },
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                print('Valid email: \$_email');
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}

// TextField with input formatters
import 'package:flutter/services.dart';

TextField(
  decoration: InputDecoration(
    labelText: 'Credit Card Number',
    border: OutlineInputBorder(),
    prefixIcon: Icon(Icons.credit_card),
  ),
  keyboardType: TextInputType.number,
  inputFormatters: [
    FilteringTextInputFormatter.digitsOnly,
    LengthLimitingTextInputFormatter(16),
    // Custom formatter for credit card formatting
    TextInputFormatter.withFunction((oldValue, newValue) {
      final text = newValue.text;
      if (text.isEmpty) return newValue;
      
      // Add space after every 4 digits
      String formatted = '';
      for (int i = 0; i < text.length; i++) {
        if (i > 0 && i % 4 == 0) {
          formatted += ' ';
        }
        formatted += text[i];
      }
      
      return TextEditingValue(
        text: formatted,
        selection: TextSelection.collapsed(offset: formatted.length),
      );
    }),
  ],
)

// Multi-line TextField
TextField(
  decoration: InputDecoration(
    labelText: 'Description',
    hintText: 'Enter a detailed description',
    border: OutlineInputBorder(),
    alignLabelWithHint: true, // Aligns the label at the top when multiline
  ),
  maxLines: 5, // Makes the TextField multi-line
  minLines: 3, // Minimum number of lines to show
  textAlignVertical: TextAlignVertical.top,
)

// TextField with autofill hints
TextField(
  decoration: InputDecoration(
    labelText: 'Address',
    border: OutlineInputBorder(),
  ),
  autofillHints: [AutofillHints.streetAddressLine1],
)
''';
