# CampusMate-Flutter

A Flutter application for **UI Design using Flutter Lab (CS506PC)**. CampusMate presents the practical experiments in one home screen. Each experiment is kept in a separate Dart file under lib/experiments/.

## Experiments

| No. | Experiment | Implementation |
|---:|---|---|
| 1 | Dart Basics | Variables, data types, arithmetic operators and output screen |
| 2 | Flutter Widgets and Layouts | Student profile, avatar, cards and academic details |
| 3 | Text and Image Widgets | Text styles, icons and image-placeholder layout |
| 4 | Row and Column | Horizontal and vertical widget arrangements |
| 5 | Stack and Container | Layered layout, container decoration and spacing |
| 6 | Input Widgets | Text field, academic-year dropdown and switch |
| 7 | Buttons and Events | Counter buttons, state changes and SnackBar feedback |
| 8 | Navigation | Push to a details page and pop back |
| 9 | Lists and Cards | Course list built from cards and list tiles |
| 10 | Mini Project | Student registration form with validation |

## Project structure

    lib/
    ├── main.dart
    └── experiments/
        ├── dart_basics.dart
        ├── 02_widgets_layouts.dart
        ├── 03_text_image_widgets.dart
        ├── 04_row_column.dart
        ├── 05_stack_container.dart
        ├── 06_input_widgets.dart
        ├── 07_buttons_events.dart
        ├── 08_navigation.dart
        ├── 09_lists_cards.dart
        └── 10_mini_project.dart

## Run locally

Install Flutter and configure a supported device or desktop target, then run:

    flutter pub get
    flutter analyze
    flutter test
    flutter run -d linux

Use a different device target with flutter run if Linux desktop is not enabled.

## Technologies

- Flutter
- Dart
- Material widgets
- Git and GitHub

## Notes

- The Mini Project is a front-end lab demonstration. It validates the form locally and does not submit data to a server or persist registrations.
- The image-widget experiment uses built-in Flutter icons and a styled placeholder so it runs without external image assets.
- Run analysis and tests in the local Flutter environment before treating the project as fully verified.
