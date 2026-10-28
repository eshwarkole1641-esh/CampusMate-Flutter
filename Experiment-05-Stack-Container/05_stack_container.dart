import 'package:flutter/material.dart';

class StackContainerScreen extends StatelessWidget {
  const StackContainerScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Stack and Container')),
    body: Center(child: SingleChildScrollView(padding: const EdgeInsets.all(20), child: Column(children: [
      Text('Stack widget', style: Theme.of(context).textTheme.titleLarge),
      const SizedBox(height: 16),
      Stack(alignment: Alignment.center, children: [
        Container(height: 180, width: double.infinity, decoration: BoxDecoration(color: Colors.indigo.shade100, borderRadius: BorderRadius.circular(20))),
        const Positioned(top: 18, right: 18, child: Icon(Icons.star, color: Colors.amber, size: 32)),
        const Column(mainAxisSize: MainAxisSize.min, children: [
          CircleAvatar(radius: 35, child: Icon(Icons.person, size: 40)),
          SizedBox(height: 10),
          Text('CampusMate Student', style: TextStyle(fontWeight: FontWeight.bold)),
        ]),
      ]),
      const SizedBox(height: 28),
      Text('Container decoration', style: Theme.of(context).textTheme.titleLarge),
      const SizedBox(height: 16),
      Container(width: double.infinity, padding: const EdgeInsets.all(22), decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blue.shade700, Colors.indigo.shade400]),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4))],
      ), child: const Text('A Container controls padding, size, color, borders and decoration.', style: TextStyle(color: Colors.white, fontSize: 16), textAlign: TextAlign.center)),
    ]))),
  );
}
