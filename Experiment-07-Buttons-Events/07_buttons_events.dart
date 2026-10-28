import 'package:flutter/material.dart';

class ButtonsEventsScreen extends StatefulWidget {
  const ButtonsEventsScreen({super.key});
  @override
  State<ButtonsEventsScreen> createState() => _ButtonsEventsScreenState();
}
class _ButtonsEventsScreenState extends State<ButtonsEventsScreen> {
  int _count = 0;
  String _lastAction = 'Choose a button to begin.';
  void _showAction(String action) {
    setState(() => _lastAction = action);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(action), duration: const Duration(seconds: 2)));
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Buttons and Events')),
    body: Center(child: SingleChildScrollView(padding: const EdgeInsets.all(24), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Icon(Icons.touch_app, size: 64, color: Colors.indigo),
      const SizedBox(height: 12),
      Text('Button event demonstration', style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center),
      const SizedBox(height: 24),
      Text('Counter: $_count', style: Theme.of(context).textTheme.headlineMedium),
      const SizedBox(height: 16),
      Wrap(alignment: WrapAlignment.center, spacing: 12, runSpacing: 12, children: [
        FilledButton.icon(onPressed: () => setState(() { _count++; _lastAction = 'Counter increased'; }), icon: const Icon(Icons.add), label: const Text('Increase')),
        OutlinedButton.icon(onPressed: () => setState(() { if (_count > 0) _count--; _lastAction = 'Counter decreased'; }), icon: const Icon(Icons.remove), label: const Text('Decrease')),
        TextButton(onPressed: () => setState(() { _count = 0; _lastAction = 'Counter reset'; }), child: const Text('Reset')),
      ]),
      const SizedBox(height: 24),
      Card(child: ListTile(leading: const Icon(Icons.info_outline), title: const Text('Last event'), subtitle: Text(_lastAction))),
      const SizedBox(height: 12),
      ElevatedButton(onPressed: () => _showAction('ElevatedButton pressed!'), child: const Text('Show SnackBar')),
    ]))),
  );
}
