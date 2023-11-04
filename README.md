# solid

Flutter project thal allow you to get random color screen from API and locally when there is no internet.

## Getting Started

To clone this project simply run: `git clone https://github.com/Nikzed/solid.git` and you're free to go.

To change color state simply touch the screen.

<img src="https://github.com/Nikzed/solid/assets/38156331/63a8129d-4955-4134-a2fe-2afedaf229f1" width="300">
<img src="https://github.com/Nikzed/solid/assets/38156331/8d0c8c88-324e-4751-9327-3ce025b4b66c" width="300">

This project implements Clean Archintecture, Restful API by Dio package and retrofit (for generating models), you can see them in `pubspec.yaml`,
Bloc state manager and equatable with Get_it packages. Get_it is a solution for dependency injection which you can see at `injector.dart` file in the main folder.

`.g` files were generated with `dart run build_runner build --delete-conflicting-outputs` prompt, and excluded from analytics.

Dart version used: 3.0.5
Flutter version used: 3.10.5
