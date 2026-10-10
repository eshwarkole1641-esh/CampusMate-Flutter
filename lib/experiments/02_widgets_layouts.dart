import 'package:flutter/material.dart';

class StudentProfileScreen extends StatelessWidget {
  const StudentProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Profile'), backgroundColor: Colors.blue, foregroundColor: Colors.white),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 620),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Card(child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(children: [
                  const CircleAvatar(radius: 40, backgroundColor: Color(0xFFD9EEFF), child: Icon(Icons.person, size: 50, color: Colors.blue)),
                  const SizedBox(height: 12),
                  Text('Eshwar', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  const Text('Computer Science Engineering'),
                ]),
              )),
              const SizedBox(height: 16),
              Card(child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Academic Details', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  const _DetailRow(label: 'CGPA', value: '9.18'),
                  const _DetailRow(label: 'Attendance', value: '92%'),
                  const _DetailRow(label: 'Skills', value: 'Flutter, Dart'),
                ]),
              )),
            ]),
          ),
        ),
      ),
    );
  }
}
class _DetailRow extends StatelessWidget {
  const _DetailRow({required this.label, required this.value});
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 12),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(label, style: TextStyle(color: Theme.of(context).colorScheme.secondary)),
      const SizedBox(width: 16),
      Flexible(child: Text(value, textAlign: TextAlign.end, style: const TextStyle(fontWeight: FontWeight.w600))),
    ]),
  );
}
