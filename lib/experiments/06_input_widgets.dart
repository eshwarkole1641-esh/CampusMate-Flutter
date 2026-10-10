import 'package:flutter/material.dart';

class InputWidgetsScreen extends StatefulWidget {
  const InputWidgetsScreen({super.key});
  @override
  State<InputWidgetsScreen> createState() => _InputWidgetsScreenState();
}
class _InputWidgetsScreenState extends State<InputWidgetsScreen> {
  final _nameController = TextEditingController();
  String _year = '3rd Year';
  bool _notifications = true;
  @override
  void dispose() { _nameController.dispose(); super.dispose(); }
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Input Widgets')),
    body: ListView(padding: const EdgeInsets.all(20), children: [
      Text('Student information', style: Theme.of(context).textTheme.titleLarge),
      const SizedBox(height: 18),
      TextField(controller: _nameController, decoration: const InputDecoration(labelText: 'Student name', hintText: 'Enter your name', prefixIcon: Icon(Icons.person), border: OutlineInputBorder())),
      const SizedBox(height: 16),
      DropdownButtonFormField<String>(
        value: _year,
        decoration: const InputDecoration(labelText: 'Academic year', border: OutlineInputBorder(), prefixIcon: Icon(Icons.school)),
        items: const [
          DropdownMenuItem(value: '1st Year', child: Text('1st Year')),
          DropdownMenuItem(value: '2nd Year', child: Text('2nd Year')),
          DropdownMenuItem(value: '3rd Year', child: Text('3rd Year')),
          DropdownMenuItem(value: '4th Year', child: Text('4th Year')),
        ],
        onChanged: (value) { if (value != null) setState(() => _year = value); },
      ),
      const SizedBox(height: 8),
      SwitchListTile(contentPadding: EdgeInsets.zero, title: const Text('Enable notifications'), value: _notifications, onChanged: (value) => setState(() => _notifications = value)),
      const SizedBox(height: 20),
      FilledButton(onPressed: () {
        final name = _nameController.text.trim();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(name.isEmpty ? 'Enter a name to preview your input.' : 'Hello $name! Selected: $_year. Notifications: ${_notifications ? 'On' : 'Off'}.')));
      }, child: const Text('Preview Input')),
    ]),
  );
}
