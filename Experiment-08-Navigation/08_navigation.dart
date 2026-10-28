import 'package:flutter/material.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Navigation')),
    body: Center(child: Padding(padding: const EdgeInsets.all(24), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Icon(Icons.alt_route, size: 72, color: Colors.indigo),
      const SizedBox(height: 16),
      Text('Navigate between screens', style: Theme.of(context).textTheme.titleLarge),
      const SizedBox(height: 8),
      const Text('Navigator.push opens another page. Navigator.pop returns here.', textAlign: TextAlign.center),
      const SizedBox(height: 24),
      FilledButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) => const _NavigationDetailsScreen()));
      }, child: const Text('Open Details Page')),
    ]))),
  );
}
class _NavigationDetailsScreen extends StatelessWidget {
  const _NavigationDetailsScreen();
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Navigation Details')),
    body: Center(child: Padding(padding: const EdgeInsets.all(24), child: Column(mainAxisSize: MainAxisSize.min, children: [
      const Icon(Icons.check_circle, size: 64, color: Colors.green),
      const SizedBox(height: 16),
      Text('You reached the details page!', style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center),
      const SizedBox(height: 20),
      OutlinedButton.icon(onPressed: () => Navigator.of(context).pop(), icon: const Icon(Icons.arrow_back), label: const Text('Go Back')),
    ]))),
  );
}
