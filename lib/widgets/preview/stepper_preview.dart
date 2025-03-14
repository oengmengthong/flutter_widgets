import 'package:flutter/material.dart';

class StepperPreview extends StatefulWidget {
  const StepperPreview({Key? key}) : super(key: key);

  @override
  State<StepperPreview> createState() => _StepperPreviewState();
}

class _StepperPreviewState extends State<StepperPreview> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      type: StepperType.vertical,
      physics: const ScrollPhysics(),
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
          title: const Text('Account Information'),
          content: Column(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email Address'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
            ],
          ),
          isActive: _currentStep >= 0,
          state: _currentStep > 0 ? StepState.complete : StepState.indexed,
        ),
        Step(
          title: const Text('Personal Information'),
          content: Column(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(labelText: 'Full Name'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Phone Number'),
              ),
            ],
          ),
          isActive: _currentStep >= 1,
          state: _currentStep > 1 ? StepState.complete : StepState.indexed,
        ),
        Step(
          title: const Text('Confirmation'),
          content: const Column(
            children: <Widget>[
              Text('Please confirm your information before submitting.'),
            ],
          ),
          isActive: _currentStep >= 2,
        ),
      ],
    );
  }
}
