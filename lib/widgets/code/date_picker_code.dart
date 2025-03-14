const String datePickerCode = '''
// Basic Date Picker
Future<void> _selectDate(BuildContext context) async {
  final DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2100),
  );
  
  if (pickedDate != null) {
    setState(() {
      _selectedDate = pickedDate;
    });
  }
}

// Call the function:
ElevatedButton(
  onPressed: () => _selectDate(context),
  child: Text('Select Date'),
)

// Date Picker with custom theme
Future<void> _selectDateWithTheme(BuildContext context) async {
  final DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2100),
    builder: (BuildContext context, Widget? child) {
      return Theme(
        data: ThemeData.light().copyWith(
          colorScheme: ColorScheme.light(
            primary: Colors.blue, // Header background color
            onPrimary: Colors.white, // Header text color
            onSurface: Colors.black, // Calendar text color
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue, // Button text color
            ),
          ),
        ),
        child: child!,
      );
    },
  );
  
  // Handle the picked date
}

// Basic Time Picker
Future<void> _selectTime(BuildContext context) async {
  final TimeOfDay? pickedTime = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
  );
  
  if (pickedTime != null) {
    setState(() {
      _selectedTime = pickedTime;
    });
  }
}

// Call the time picker:
ElevatedButton(
  onPressed: () => _selectTime(context),
  child: Text('Select Time'),
)

// Time Picker with custom theme
Future<void> _selectTimeWithTheme(BuildContext context) async {
  final TimeOfDay? pickedTime = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
    builder: (BuildContext context, Widget? child) {
      return Theme(
        data: ThemeData.light().copyWith(
          colorScheme: ColorScheme.light(
            primary: Colors.green,
            onPrimary: Colors.white,
            onSurface: Colors.black,
          ),
          timePickerTheme: TimePickerThemeData(
            dialHandColor: Colors.green,
            hourMinuteTextColor: Colors.green,
            dayPeriodTextColor: Colors.green,
          ),
        ),
        child: child!,
      );
    },
  );
  
  // Handle the picked time
}

// Date Range Picker
Future<void> _selectDateRange(BuildContext context) async {
  final DateTimeRange? pickedRange = await showDateRangePicker(
    context: context,
    firstDate: DateTime(2000),
    lastDate: DateTime(2100),
    initialDateRange: DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now().add(Duration(days: 7)),
    ),
  );
  
  if (pickedRange != null) {
    setState(() {
      _dateRange = pickedRange;
    });
  }
}

// Call the date range picker:
ElevatedButton(
  onPressed: () => _selectDateRange(context),
  child: Text('Select Date Range'),
)

// Display selected date with formatting
import 'package:intl/intl.dart'; // Add this to pubspec.yaml

final dateFormat = DateFormat('yyyy-MM-dd');
Text('Selected Date: \${dateFormat.format(_selectedDate)}')

// Display selected time
Text('Selected Time: \${_selectedTime.format(context)}')

// Display selected date range
Text(
  'Selected Range: \${dateFormat.format(_dateRange.start)} - \${dateFormat.format(_dateRange.end)}',
)
''';
