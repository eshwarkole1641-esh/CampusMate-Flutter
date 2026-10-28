# CampusMate — Flutter UI Design Lab

A Flutter lab project for **UI Design using Flutter (CS506PC)**. The app brings ten practical experiments together in a CampusMate home screen, and the repository also provides an experiment-wise submission folder for each lab.

## Student details

- **Student:** Eshwar Kole
- **College:** ACE Engineering College, Hyderabad
- **Subject:** UI Design using Flutter Lab (CS506PC)
- **Faculty:** P. Satish Bhasker
- **Roll number:** Add your official roll number before final submission.

## Experiment progress

The source code for all ten experiment screens is present in the repository. **Output screenshots still need to be captured from a real run of the app and added to each experiment's `screenshots/` folder**; no mock screenshots are being presented as actual output.

| No. | Experiment | Code | Output screenshot |
|---:|---|---|---|
| 1 | [Dart Basics](./Experiment-01-Dart-Basics/README.md) | Present | Pending local capture |
| 2 | [Flutter Widgets and Layouts](./Experiment-02-Widgets-Layouts/README.md) | Present | Pending local capture |
| 3 | [Text and Image Widgets](./Experiment-03-Text-Image-Widgets/README.md) | Present | Pending local capture |
| 4 | [Row and Column](./Experiment-04-Row-Column/README.md) | Present | Pending local capture |
| 5 | [Stack and Container](./Experiment-05-Stack-Container/README.md) | Present | Pending local capture |
| 6 | [Input Widgets](./Experiment-06-Input-Widgets/README.md) | Present | Pending local capture |
| 7 | [Buttons and Events](./Experiment-07-Buttons-Events/README.md) | Present | Pending local capture |
| 8 | [Navigation](./Experiment-08-Navigation/README.md) | Present | Pending local capture |
| 9 | [Lists and Cards](./Experiment-09-Lists-Cards/README.md) | Present | Pending local capture |
| 10 | [Student Registration Mini Project](./Experiment-10-Mini-Project/README.md) | Present | Pending local capture |

## Repository structure

```text
CampusMate-Flutter/
├── README.md
├── Experiment-01-Dart-Basics/
├── Experiment-02-Widgets-Layouts/
├── Experiment-03-Text-Image-Widgets/
├── Experiment-04-Row-Column/
├── Experiment-05-Stack-Container/
├── Experiment-06-Input-Widgets/
├── Experiment-07-Buttons-Events/
├── Experiment-08-Navigation/
├── Experiment-09-Lists-Cards/
├── Experiment-10-Mini-Project/
├── lib/
│   ├── main.dart
│   └── experiments/                 # Integrated screens used by the Flutter app
└── test/
    └── widget_test.dart
```

Each top-level experiment folder contains a submission copy of its Dart source, a short experiment guide, and a screenshot location. The integrated application source remains under `lib/experiments/`, following Flutter's usual application structure. If you edit an experiment, keep its submission copy and integrated source in sync.

## Run and verify

From the repository root, run:

```bash
flutter pub get
flutter analyze
flutter test
flutter run -d chrome
```

You can also run on another configured target, such as Linux desktop, by replacing `chrome` with that device ID. Capture the app after it launches and save a genuine screenshot as `output.png` inside the corresponding experiment's `screenshots/` directory.

## Notes

- The image experiment includes an offline fallback if its network image cannot load.
- The registration mini-project validates inputs locally. It does not send data to a server or persist registrations.
- The project must still be run and verified on the student's machine before final submission. Add your official roll number and all ten output screenshots, then confirm the repository is public and submit its URL using your faculty's registration form.
