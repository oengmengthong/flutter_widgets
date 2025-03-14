const String stepperCode = '''
// Basic Vertical Stepper
Stepper(
  type: StepperType.vertical,
  currentStep: _currentStep,
  onStepTapped: (step) => setState(() => _currentStep = step),
  onStepContinue: () {
    if (_currentStep < 2) {
      setState(() => _currentStep += 1);
    }
  },
  onStepCancel: () {
    if (_currentStep > 0) {
      setState(() => _currentStep -= 1);
    }
  },
  steps: <Step>[
    Step(
      title: Text('Step 1'),
      content: Container(
        alignment: Alignment.centerLeft,
        child: Text('Content for Step 1'),
      ),
      isActive: _currentStep >= 0,
    ),
    Step(
      title: Text('Step 2'),
      content: Container(
        alignment: Alignment.centerLeft,
        child: Text('Content for Step 2'),
      ),
      isActive: _currentStep >= 1,
    ),
    Step(
      title: Text('Step 3'),
      content: Container(
        alignment: Alignment.centerLeft,
        child: Text('Content for Step 3'),
      ),
      isActive: _currentStep >= 2,
    ),
  ],
)

// Horizontal Stepper
Stepper(
  type: StepperType.horizontal,
  currentStep: _currentStep,
  onStepTapped: (step) => setState(() => _currentStep = step),
  onStepContinue: () {
    if (_currentStep < 2) {
      setState(() => _currentStep += 1);
    }
  },
  onStepCancel: () {
    if (_currentStep > 0) {
      setState(() => _currentStep -= 1);
    }
  },
  steps: <Step>[
    Step(
      title: Text('Details'),
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Name'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Email'),
          ),
        ],
      ),
      isActive: _currentStep >= 0,
    ),
    Step(
      title: Text('Address'),
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Street'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'City'),
          ),
        ],
      ),
      isActive: _currentStep >= 1,
    ),
    Step(
      title: Text('Complete'),
      content: Text('Review and submit'),
      isActive: _currentStep >= 2,
    ),
  ],
)

// Customized Stepper with different states
Stepper(
  type: StepperType.vertical,
  currentStep: _currentStep,
  onStepTapped: (step) => setState(() => _currentStep = step),
  onStepContinue: () {
    setState(() {
      if (_currentStep < 2) {
        _currentStep += 1;
      } else {
        // Handle completion
        print('Process completed');
      }
    });
  },
  onStepCancel: () {
    setState(() {
      if (_currentStep > 0) {
        _currentStep -= 1;
      }
    });
  },
  steps: <Step>[
    Step(
      title: Text('Account'),
      subtitle: Text('Setup your account'),
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Username'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
          ),
        ],
      ),
      isActive: _currentStep >= 0,
      state: _currentStep > 0 ? StepState.complete : StepState.indexed,
    ),
    Step(
      title: Text('Profile'),
      subtitle: Text('Enter your information'),
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Full Name'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Phone Number'),
          ),
        ],
      ),
      isActive: _currentStep >= 1,
      state: _currentStep > 1 ? StepState.complete : _currentStep == 1 ? StepState.editing : StepState.indexed,
    ),
    Step(
      title: Text('Confirm'),
      subtitle: Text('Review your information'),
      content: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text('Confirm all the entered information is correct.'),
      ),
      isActive: _currentStep >= 2,
      state: _currentStep == 2 ? StepState.editing : StepState.indexed,
    ),
  ],
)
''';
