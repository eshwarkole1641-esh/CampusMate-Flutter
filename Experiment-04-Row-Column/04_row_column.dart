import 'package:flutter/material.dart';

class RowColumnScreen extends StatelessWidget {
  const RowColumnScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Row and Column')),
    body: Center(child: SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text('Column layout', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 12),
        const _LayoutTile(icon: Icons.person, label: 'Student profile'),
        const SizedBox(height: 8),
        const _LayoutTile(icon: Icons.menu_book, label: 'Course details'),
        const SizedBox(height: 8),
        const _LayoutTile(icon: Icons.event, label: 'Upcoming events'),
        const SizedBox(height: 28),
        Text('Row layout', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 12),
        const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _ActionItem(icon: Icons.home, label: 'Home'),
          _ActionItem(icon: Icons.search, label: 'Search'),
          _ActionItem(icon: Icons.person, label: 'Profile'),
        ]),
        const SizedBox(height: 24),
        const Text('Column arranges children vertically. Row arranges children horizontally.', textAlign: TextAlign.center),
      ]),
    )),
  );
}
class _LayoutTile extends StatelessWidget {
  const _LayoutTile({required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) => Card(child: ListTile(leading: Icon(icon, color: Theme.of(context).colorScheme.primary), title: Text(label), trailing: const Icon(Icons.arrow_forward_ios, size: 16)));
}
class _ActionItem extends StatelessWidget {
  const _ActionItem({required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) => Column(mainAxisSize: MainAxisSize.min, children: [CircleAvatar(child: Icon(icon)), const SizedBox(height: 8), Text(label)]);
}
