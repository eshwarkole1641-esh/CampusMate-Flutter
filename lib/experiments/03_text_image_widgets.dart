import 'package:flutter/material.dart';

class TextImageWidgetsScreen extends StatelessWidget {
  const TextImageWidgetsScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Text and Image Widgets')),
    body: Center(child: SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(children: [
        const CircleAvatar(radius: 54, backgroundColor: Color(0xFFDCEBFF), child: Icon(Icons.school, size: 58, color: Colors.blue)),
        const SizedBox(height: 20),
        Text('Welcome to CampusMate', textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        const Text('Your learning companion for the Flutter UI Design Lab.', textAlign: TextAlign.center),
        const SizedBox(height: 24),
        Image.network(
          'https://images.unsplash.com/photo-1562774053-701939374585?w=600',
          height: 120,
          width: 220,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => Container(
            height: 120,
            width: 220,
            decoration: BoxDecoration(color: Colors.blue.shade50, borderRadius: BorderRadius.circular(16)),
            child: const Icon(Icons.photo, size: 64, color: Colors.blue),
          ),
        ),
        const SizedBox(height: 12),
        const Text('Image placeholder built with Flutter widgets'),
        const SizedBox(height: 20),
        const Card(child: ListTile(leading: Icon(Icons.text_fields), title: Text('Text widget'), subtitle: Text('Displays styled text and descriptions.'))),
      ]),
    )),
  );
}
