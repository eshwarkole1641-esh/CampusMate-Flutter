import 'package:flutter/material.dart';

import 'experiments/02_widgets_layouts.dart';
import 'experiments/03_text_image_widgets.dart';
import 'experiments/04_row_column.dart';
import 'experiments/05_stack_container.dart';
import 'experiments/06_input_widgets.dart';
import 'experiments/07_buttons_events.dart';
import 'experiments/08_navigation.dart';
import 'experiments/09_lists_cards.dart';
import 'experiments/10_mini_project.dart';

void main() => runApp(const CampusMateApp());

class CampusMateApp extends StatelessWidget {
  const CampusMateApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CampusMate',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
        ),
        home: const HomeScreen(),
      );
}

class _Experiment {
  const _Experiment({
    required this.number,
    required this.title,
    required this.description,
    required this.icon,
    required this.screen,
  });
  final int number;
  final String title;
  final String description;
  final IconData icon;
  final Widget screen;
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final List<_Experiment> _experiments = [
    const _Experiment(number: 1, title: 'Dart Basics', description: 'Variables, data types, operators and string interpolation', icon: Icons.code, screen: _DartBasicsScreen()),
    const _Experiment(number: 2, title: 'Flutter Widgets and Layouts', description: 'Student profile using widgets and layout elements', icon: Icons.widgets, screen: StudentProfileScreen()),
    const _Experiment(number: 3, title: 'Text and Image Widgets', description: 'Display text, icons and image placeholders', icon: Icons.image_outlined, screen: TextImageWidgetsScreen()),
    const _Experiment(number: 4, title: 'Row and Column', description: 'Arrange widgets horizontally and vertically', icon: Icons.view_week_outlined, screen: RowColumnScreen()),
    const _Experiment(number: 5, title: 'Stack and Container', description: 'Layer widgets and style content with containers', icon: Icons.layers_outlined, screen: StackContainerScreen()),
    const _Experiment(number: 6, title: 'Input Widgets', description: 'Text input, dropdowns and switches', icon: Icons.edit_note, screen: InputWidgetsScreen()),
    const _Experiment(number: 7, title: 'Buttons and Events', description: 'Handle taps, update state and show feedback', icon: Icons.touch_app_outlined, screen: ButtonsEventsScreen()),
    const _Experiment(number: 8, title: 'Navigation', description: 'Move between pages using Navigator', icon: Icons.navigation_outlined, screen: NavigationScreen()),
    const _Experiment(number: 9, title: 'Lists and Cards', description: 'Present course information in reusable cards', icon: Icons.view_list_outlined, screen: ListsCardsScreen()),
    const _Experiment(number: 10, title: 'Mini Project', description: 'Student registration form with field validation', icon: Icons.school_outlined, screen: MiniProjectScreen()),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('CampusMate'),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Center(child: Icon(Icons.school_outlined)),
            ),
          ],
        ),
        body: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 760),
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                Text('Welcome, Student!', style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Text('Learn Flutter one experiment at a time.', style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(color: Theme.of(context).colorScheme.primaryContainer, borderRadius: BorderRadius.circular(16)),
                  child: Row(children: [
                    Icon(Icons.menu_book, size: 36, color: Theme.of(context).colorScheme.onPrimaryContainer),
                    const SizedBox(width: 14),
                    const Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Text('UI Design using Flutter Lab', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      SizedBox(height: 4),
                      Text('CS506PC • 10 practical experiments'),
                    ])),
                  ]),
                ),
                const SizedBox(height: 24),
                Text('Experiments', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                for (final experiment in _experiments)
                  Card(
                    margin: const EdgeInsets.only(bottom: 10),
                    clipBehavior: Clip.antiAlias,
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      leading: CircleAvatar(
                        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                        child: Text('\${experiment.number}', style: TextStyle(color: Theme.of(context).colorScheme.onPrimaryContainer, fontWeight: FontWeight.bold)),
                      ),
                      title: Text(experiment.title, style: const TextStyle(fontWeight: FontWeight.w600)),
                      subtitle: Padding(padding: const EdgeInsets.only(top: 4), child: Text(experiment.description)),
                      trailing: Icon(experiment.icon, color: Theme.of(context).colorScheme.primary),
                      isThreeLine: true,
                      onTap: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => experiment.screen)),
                    ),
                  ),
                const SizedBox(height: 12),
                const Text('CampusMate • Flutter UI Design Lab', textAlign: TextAlign.center),
              ],
            ),
          ),
        ),
      );
}

class _DartBasicsScreen extends StatelessWidget {
  const _DartBasicsScreen();

  @override
  Widget build(BuildContext context) {
    const lines = [
      ('Student Name', 'Eshwar'),
      ('Age', '20'),
      ('CGPA', '9.18'),
      ('Learning Flutter', 'true'),
      ('Addition (10 + 5)', '15'),
      ('Subtraction (10 - 5)', '5'),
      ('Multiplication (10 × 5)', '50'),
      ('Division (10 / 5)', '2.0'),
      ('Remainder (10 % 5)', '0'),
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Experiment 1 — Dart Basics')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Icon(Icons.code, size: 56, color: Colors.blue),
          const SizedBox(height: 12),
          Text('Dart Basics Output', textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 20),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                for (final line in lines)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Expanded(child: Text(line.$1)),
                      const SizedBox(width: 12),
                      Flexible(child: Text(line.$2, textAlign: TextAlign.end, style: const TextStyle(fontWeight: FontWeight.bold))),
                    ]),
                  ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
