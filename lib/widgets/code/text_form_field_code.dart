const String textFormFieldCode = '''
// Basic TextFormField inside a Form
Form(
  key: _formKey,
  child: TextFormField(
    decoration: InputDecoration(
      labelText: 'Email',
      hintText: 'Enter your email',
      prefixIcon: Icon(Icons.email),
      border: OutlineInputBorder(),
    ),
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter your email';
      }
      if (!value.contains('@')) {
        return 'Please enter a valid email';
      }
      return null;
    },
    onSaved: (value) {
      // Save the value
      email = value;
    },
  ),
)

// TextFormField with custom validation and styling
TextFormField(
  decoration: InputDecoration(
    labelText: 'Username',
    hintText: 'Enter username',
    filled: true,
    fillColor: Colors.grey[200],
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide.none,
    ),
  ),
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Username is required';
    }
    if (value.length < 4) {
      return 'Username must be at least 4 characters';
    }
    return null;
  },
  onChanged: (value) {
    // Handle changes
    print('Field value changed: \$value');
  },
)

// Password TextFormField with toggle visibility
TextFormField(
  decoration: InputDecoration(
    labelText: 'Password',
    suffixIcon: IconButton(
      icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
      onPressed: () {
        setState(() {
          _obscureText = !_obscureText;
        });
      },
    ),
    border: OutlineInputBorder(),
  ),
  obscureText: _obscureText,
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    return null;
  },
)
''';
