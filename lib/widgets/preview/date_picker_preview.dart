import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerPreview extends StatefulWidget {
  const DatePickerPreview({Key? key}) : super(key: key);

  @override
  State<DatePickerPreview> createState() => _DatePickerPreviewState();
}

class _DatePickerPreviewState extends State<DatePickerPreview> {
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();
  DateTimeRange _dateRange = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now().add(const Duration(days: 7)),
  );

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.blue,
              onPrimary: Colors.white,
              onSurface: Colors.black,
            ),
          ),
          child: child!,
        );
      },
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.blue,
              onPrimary: Colors.white,
              onSurface: Colors.black,
            ),
          ),
          child: child!,
        );
      },
    );
    if (pickedTime != null && pickedTime != _selectedTime) {
      setState(() {
        _selectedTime = pickedTime;
      });
    }
  }

  Future<void> _selectDateRange(BuildContext context) async {
    final DateTimeRange? pickedRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      initialDateRange: _dateRange,
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.blue,
              onPrimary: Colors.white,
              onSurface: Colors.black,
            ),
          ),
          child: child!,
        );
      },
    );
    if (pickedRange != null && pickedRange != _dateRange) {
      setState(() {
        _dateRange = pickedRange;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('yyyy-MM-dd');
    return Column(
      children: [
        // Date picker demo
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text(
                  'Date Picker',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text('Selected Date: ${dateFormat.format(_selectedDate)}'),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => _selectDate(context),
                  child: const Text('Select Date'),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),

        // Time picker demo
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text(
                  'Time Picker',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text('Selected Time: ${_selectedTime.format(context)}'),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => _selectTime(context),
                  child: const Text('Select Time'),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),

        // Date range picker demo
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text(
                  'Date Range Picker',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Selected Range: ${dateFormat.format(_dateRange.start)} - ${dateFormat.format(_dateRange.end)}',
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => _selectDateRange(context),
                  child: const Text('Select Date Range'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
