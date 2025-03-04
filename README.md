# My App

## Overview

This project uses the following packages and tools:
- "flutter_slang" for managing translations
- "go_router" for implementing Navigation 2.0
- "freezed" for creating sealed and union classes
- "shared_preferences" for storing non-sensitive local data
- "flutter_driver" for conducting integration testing
- "flutter_launcher_icons" for generating platform icons

## Getting Started

To set up and run the project, follow these steps:
1. Install dependencies
    - flutter pub get
2. Generate code
    - flutter pub run build_runner build
    - flutter pub run slang
3. Run the application
    - flutter run

## Testing

To execute integration tests, use the following command:
    - flutter drive --target=test_driver/app.dart

## Generate platform icons

Run: 
    - flutter pub run flutter_launcher_icons


