# Flutter Team Template

Production-oriented Flutter template using:

- Clean Architecture (`data`, `domain`, `presentation`)
- BLoC pattern for state management
- TDD-first workflow with unit tests
- `get_it` + `injectable` for dependency injection

## Packages used

Core packages included in this template:

- `flutter_bloc`
- `equatable`
- `dartz`
- `get_it`
- `injectable`
- `dio`
- `logger`
- `easy_localization`
- `awesome_notifications`
- `firebase_messaging`

Testing/build packages:

- `flutter_test`
- `mocktail`
- `build_runner`
- `injectable_generator`

## Project architecture

Each feature should follow this structure:

```text
lib/features/<feature_name>/
 data/
  datasources/
  repositories/
 domain/
  entities/
  repositories/
  usecases/
 presentation/
  bloc/
  pages/
```

Template example implemented in this repo:

- `features/counter/data`: data source + repository implementation
- `features/counter/domain`: entity + repository contract + use cases
- `features/counter/presentation`: BLoC + page
- `features/counter/di`: feature dependency registration

## DI and startup flow

`lib/main.dart` bootstraps in this order:

1. `WidgetsFlutterBinding.ensureInitialized()`
2. `configureDependencies()` for shared/core services
3. `registerCounterFeatureDependencies()` for feature services
4. `runApp(const TemplateApp())`

## Team workflow (clone and run)

```bash
flutter pub get
flutter run
```

Run tests:

```bash
flutter test
```

Regenerate injectable files after changing annotations:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## TDD guidelines

When adding a new feature:

1. Write domain/use-case tests first.
2. Implement domain contracts and use cases.
3. Add BLoC tests for event -> state transitions.
4. Implement data/repository layer.
5. Build the page/widget layer last.

Keep domain pure (no Flutter imports), isolate data concerns, and let the BLoC coordinate the use cases.
