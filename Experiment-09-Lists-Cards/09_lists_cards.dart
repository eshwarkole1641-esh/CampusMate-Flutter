import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CampusMate',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      // This tells the app to open your Experiment 9 screen
      home: const ListsCardsScreen(),
    );
  }
}

// ==========================================
// YOUR EXPERIMENT 9 CODE STARTS HERE
// ==========================================

class ListsCardsScreen extends StatelessWidget {
  const ListsCardsScreen({super.key});
  static const _courses = [
    ('Data Structures', 'Practice problem solving', Icons.code),
    ('Database Systems', 'Learn SQL and data modelling', Icons.storage),
    ('Computer Networks', 'Understand network protocols', Icons.wifi),
    ('Flutter Lab', 'Build responsive mobile interfaces', Icons.phone_android),
    ('Operating Systems', 'Explore processes and memory', Icons.memory),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Lists and Cards')),
    body: ListView(padding: const EdgeInsets.all(16), children: [
      Text('My learning list', style: Theme.of(context).textTheme.headlineSmall),
      const SizedBox(height: 12),
      for (final course in _courses)
        Card(margin: const EdgeInsets.only(bottom: 10), child: ListTile(
          leading: CircleAvatar(child: Icon(course.$3)),
          title: Text(course.$1),
          subtitle: Text(course.$2),
          trailing: const Icon(Icons.chevron_right),
          onTap: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Selected: ${course.$1}'))),
        )),
    ]),
  );
}
