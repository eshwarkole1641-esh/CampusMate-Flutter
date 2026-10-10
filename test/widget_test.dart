import 'package:flutter_test/flutter_test.dart';
import 'package:campusmate/main.dart';

void main() {
  testWidgets('CampusMate shows the lab experiments', (WidgetTester tester) async {
    await tester.pumpWidget(const CampusMateApp());

    expect(find.text('Welcome, Student!'), findsOneWidget);
    expect(find.text('Dart Basics'), findsOneWidget);
    expect(find.text('Flutter Widgets and Layouts'), findsOneWidget);
    expect(find.text('Mini Project'), findsOneWidget);
  });

  testWidgets('opening experiment 2 shows the student profile', (WidgetTester tester) async {
    await tester.pumpWidget(const CampusMateApp());

    await tester.tap(find.text('Flutter Widgets and Layouts'));
    await tester.pumpAndSettle();

    expect(find.text('Student Profile'), findsOneWidget);
    expect(find.text('Academic Details'), findsOneWidget);
    expect(find.text('9.18'), findsOneWidget);
  });
}
