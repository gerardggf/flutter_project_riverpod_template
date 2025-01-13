# My App

## Overview

This project leverages the following packages and tools:
- "flutter_slang" for managing translations
- "go_router" for implementing Navigation 2.0
- "freezed" for creating sealed and union classes
- "shared_preferences" for storing non-sensitive local data
- "flutter_driver" for conducting integration testing

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


