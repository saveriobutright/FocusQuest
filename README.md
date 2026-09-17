# FocusQuest

[![Flutter CI](https://github.com/saveriobutright/FocusQuest/actions/workflows/flutter-ci.yml/badge.svg)](https://github.com/saveriobutright/FocusQuest/actions/workflows/flutter-ci.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

FocusQuest is an Android-first study productivity application built with Flutter. It combines location validation, device-orientation detection and gamification to encourage focused study sessions.

The application rewards users with XP for studying at an approved location and grants additional XP when the phone is placed face down, reducing distractions during a session.

> The current user interface is in Italian. English localization is planned.

## Features

- Location-based validation before starting a study session
- Face-down device detection using the accelerometer
- Automatic XP rewards during active sessions
- Bonus XP for distraction-free study
- Levels, achievements and customizable avatars
- Persistent local data storage with SQLite
- Light and dark themes
- Automated analysis, testing and Android builds with GitHub Actions

## How it works

1. The user attempts to start a study quest.
2. FocusQuest checks whether the device is near the configured study location.
3. During the session, the device orientation is monitored.
4. XP is awarded periodically while the location requirement is satisfied.
5. Placing the phone face down activates an XP bonus.
6. Progress is stored locally and used to update levels and achievements.

## Technology stack

- Flutter
- Dart
- Riverpod
- SQLite
- Geolocator
- Sensors Plus
- Material Design

## Project structure

```text
lib/
├── models/       Data models
├── providers/    Application state and business logic
├── screens/      Main application screens
├── services/     Database, location and sensor services
└── views/        Reusable interface views
```

## Getting started

### Requirements

- Flutter SDK with Dart 3.10.4 or later
- Android Studio or another compatible Android development environment
- An Android emulator or physical device

### Installation

```bash
git clone https://github.com/saveriobutright/FocusQuest.git
cd FocusQuest
flutter pub get
flutter run
```

## Location configuration

The current study location is configured for the University of Calabria.

To use a different location, update the coordinates and permitted radius in:

```text
lib/services/location_service.dart
```

Location is checked only when the user requests it. FocusQuest does not require background location access.

## Testing

Run static analysis and automated tests with:

```bash
flutter analyze
flutter test
```

Create a debug Android build with:

```bash
flutter build apk --debug
```

These checks are also executed automatically by the Flutter CI workflow on GitHub Actions.

## Roadmap

- English and Italian localization
- User-configurable study locations
- Additional achievements and progression mechanics
- Improved test coverage
- Application screenshots and demo media
- Production-ready Android release configuration

## License

This project is distributed under the [MIT License](LICENSE).

## Author

**Saverio Polito**

- [GitHub](https://github.com/saveriobutright)
- [LinkedIn](https://www.linkedin.com/in/saverio-polito-a407a53ba)
