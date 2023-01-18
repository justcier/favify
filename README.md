# favify

Project created and developed in purpose of learning Flutter. It's a mobile
application which allows users to play a game described as "choose your
favourite thing". It consists of multiple categories to choose from. App's mechanics are based on a winning ladder.

## Project presentation

### App screens

| Home page  | All categories page |  Play page  |  Winner page |
| ------------- | ------------- |------------- |------------- |
|<img width="261" alt="image" src="https://user-images.githubusercontent.com/71925819/213134212-f59991f2-2f81-438e-917a-ace3e965c74e.png">|<img width="238" alt="image" src="https://user-images.githubusercontent.com/71925819/213134390-83973473-ab16-4e54-a7e6-48209079eafa.png"> |<img width="234" alt="image" src="https://user-images.githubusercontent.com/71925819/213134519-5669db0a-ce4a-4edc-9005-48753c1d4005.png">|<img width="232" alt="image" src="https://user-images.githubusercontent.com/71925819/213134735-6677d551-5a1d-46f1-a1b9-48ac486f6004.png">

### App showcase


https://user-images.githubusercontent.com/71925819/213151137-124997fc-90e7-4c84-8032-86b5e03be251.mov


## Technology stack and main dependencies
| Flutter  | v3.3.3  |
| ------------- | ------------- |
| Local storage  | shared_preferences |
| Navigation  | auto_route |
| Code generation  | freezed |
| State management | flutter_bloc |
| Dependency injection | get_it injectable |


## App architecture and folder structure
Used architecture is based on clean architecture from: https://resocoder.com/2019/08/27/flutter-tdd-clean-architecture-course-1-explanation-project-structure/

### Folder structure

- common - folder containing common widgets used through the app
- core - folder containing common files used through the app (strings, extensions, shared_prefs_keys)
- feature - main folder for the features in the app
  - data
      - data_sources - interfaces and implementations of data sources
      - repositories - repositories' implementations
  - domain
    - models - data models used in use cases and presentation layer
    - repositories - repositories' interfaces
    - use_cases - use case implementations
  - presentation
    - cubits - cubits related to the views
    - pages - feature pages
    - widgets - feature widgets
- services - folder containing injection, navigation and registration services
- style - folder containing style tokens used in the app
- test - folder for unit/cubit

## How to run the project and tests

#### Get all dependencies by running command:

> flutter pub get

#### Run the project:

> flutter run 

#### To run all tests:

> flutter test

### Current test coverage:
<img width="736" alt="image" src="https://user-images.githubusercontent.com/71925819/213153740-292bb640-63c4-455f-9ece-c9ce58488a32.png">
