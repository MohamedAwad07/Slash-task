# slash_task

A new Flutter project.

## Getting Started

Slash home page management utilizes the following:

• MVVM pattern
• Bloc & Cubit for state management
• Dio package for API services
• Responsive design for both mobile and web platforms

#files structure

Slash-task/
├── android/
├── ios/
├── assets/
│   ├── fonts/
│   ├── images/
├── lib/
│   ├── core/
│   │   ├── errors/
│   │   │   ├── failures.dart
│   │   ├── utils/
│   │   │   ├── images_paths.dart
│   │   ├── routes/
│   │   │   ├── app_routes.dart
│   │   ├── theme/
│   │       ├── app_theme.dart
│   ├── features/
│   │   ├── appBar/
│   │   │   ├── data/
│   │   │   │   ├── models/
│   │   │   ├── presentation/
│   │   │   │   ├── views/
│   │   │   │   │   ├── app_bar_view.dart
│   │   │   │   ├── widgets/
│   │   │   │   │   ├── custom_app_bar.dart
│   │   │   │   ├── view_models/
│   │   ├── home/
│   │   │   ├── data/
│   │   │   │   ├── models/
│   │   │   │   │   ├── dummy_data_model.dart
│   │   │   │   │   ├── bottom_bar_model.dart
│   │   │   │   │   ├── category_section_model.dart
│   │   │   ├── presentation/
│   │   │   │   ├── views/
│   │   │   │   │   ├── app_bar_view.dart
│   │   │   │   ├── widgets/
│   │   │   │   │   ├── hold_relative_widgets
│   │   │   │   ├── view_models/
│   │   │   │       ├── home_cubit.dart
│   │   │   │       ├── home_states.dart
│   ├── main.dart
│   ├── observer.dart
├── test/
│   ├── core/
│   ├── features/
│   │   ├── appBar/
│   │   │   ├── data/
│   │   │   │   ├── models/
│   │   │   ├── presentation/
│   │   │   │   ├── views/
│   │   │   │   ├── widgets/
│   │   │   │   ├── view_models/
├── pubspec.yaml


#Breakpoints

• Mobile layout appears when the screen size is less than or equal to 470px.
Web layout appears when the screen size is greater than 470px.

#Note

• Dummy data does not load successfully when running the app on Chrome or Edge due to a CORS proxy issue. Please run and test the app on Windows or mobile devices.
