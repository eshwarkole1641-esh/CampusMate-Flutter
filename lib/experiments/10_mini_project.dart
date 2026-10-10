import 'package:flutter/material.dart';

class MiniProjectScreen extends StatefulWidget {
  const MiniProjectScreen({super.key});
  @override
  State<MiniProjectScreen> createState() => _MiniProjectScreenState();
}
class _MiniProjectScreenState extends State<MiniProjectScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  String _course = 'Computer Science Engineering';
  @override
  void dispose() { _nameController.dispose(); _emailController.dispose(); _phoneController.dispose(); super.dispose(); }
  void _submitForm() {
    if (!_formKey.currentState!.validate()) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Registration preview saved for \${_nameController.text.trim()}')));
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('CampusMate Mini Project')),
    body: Center(child: ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 560),
      child: Form(key: _formKey, child: ListView(padding: const EdgeInsets.all(20), children: [
        const Icon(Icons.school, size: 64, color: Colors.indigo),
        Text('Student Registration', textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 20),
        TextFormField(controller: _nameController, decoration: const InputDecoration(labelText: 'Full name', prefixIcon: Icon(Icons.person), border: OutlineInputBorder()), validator: (value) => value == null || value.trim().isEmpty ? 'Please enter your name' : null),
        const SizedBox(height: 14),
        TextFormField(controller: _emailController, keyboardType: TextInputType.emailAddress, decoration: const InputDecoration(labelText: 'Email address', prefixIcon: Icon(Icons.email), border: OutlineInputBorder()), validator: (value) {
          if (value == null || !value.contains('@') || !value.contains('.')) return 'Enter a valid email address';
          return null;
        }),
        const SizedBox(height: 14),
        TextFormField(controller: _phoneController, keyboardType: TextInputType.phone, decoration: const InputDecoration(labelText: 'Phone number', prefixIcon: Icon(Icons.phone), border: OutlineInputBorder()), validator: (value) {
          final digits = value?.replaceAll(RegExp(r'[^0-9]'), '') ?? '';
          return digits.length < 10 ? 'Enter at least 10 digits' : null;
        }),
        const SizedBox(height: 14),
        DropdownButtonFormField<String>(value: _course, decoration: const InputDecoration(labelText: 'Course', prefixIcon: Icon(Icons.menu_book), border: OutlineInputBorder()), items: const [
          DropdownMenuItem(value: 'Computer Science Engineering', child: Text('Computer Science Engineering')),
          DropdownMenuItem(value: 'Information Technology', child: Text('Information Technology')),
          DropdownMenuItem(value: 'Electronics and Communication', child: Text('Electronics and Communication')),
        ], onChanged: (value) { if (value != null) setState(() => _course = value); }),
        const SizedBox(height: 20),
        FilledButton.icon(onPressed: _submitForm, icon: const Icon(Icons.check), label: const Text('Validate and Register')),
        const SizedBox(height: 12),
        const Text('Lab demonstration: form fields, validation, dropdowns and SnackBar feedback. Data is not sent to a server.', textAlign: TextAlign.center),
      ])),
    )),
  );
}
