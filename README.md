# slash_task

A new Flutter project.

## Getting Started

Slash home page management utilizes the following:

• MVVM pattern <br>
• Bloc & Cubit for state management <br>
• Dio package for API services <br>
• Responsive design for both mobile and web platforms  <br>


Slash-task/ <br>
├── android/<br>
├── ios/<br>
├── assets/<br>
│   ├── fonts/<br>
│   ├── images/<br>
├── lib/<br>
│   ├── core/<br>
│   │   ├── errors/<br>
│   │   │   ├── failures.dart<br>
│   │   ├── utils/<br>
│   │   │   ├── images_paths.dart<br>
│   │   ├── routes/<br>
│   │   │   ├── app_routes.dart<br>
│   │   ├── theme/<br>
│   │       ├── app_theme.dart<br>
│   ├── features/<br>
│   │   ├── appBar/<br>
│   │   │   ├── data/<br>
│   │   │   │   ├── models/<br>
│   │   │   ├── presentation/<br>
│   │   │   │   ├── views/<br>
│   │   │   │   │   ├── app_bar_view.dart<br>
│   │   │   │   ├── widgets/<br>
│   │   │   │   │   ├── custom_app_bar.dart<br>
│   │   │   │   ├── view_models/<br>
│   │   ├── home/<br>
│   │   │   ├── data/<br>
│   │   │   │   ├── models/<br>
│   │   │   │   │   ├── dummy_data_model.dart<br>
│   │   │   │   │   ├── bottom_bar_model.dart<br>
│   │   │   │   │   ├── category_section_model.dart<br>
│   │   │   ├── presentation/<br>
│   │   │   │   ├── views/<br>
│   │   │   │   │   ├── app_bar_view.dart<br>
│   │   │   │   ├── widgets/<br>
│   │   │   │   │   ├── hold_relative_widgets<br>
│   │   │   │   ├── view_models/<br>
│   │   │   │       ├── home_cubit.dart<br>
│   │   │   │       ├── home_states.dart<br>
│   ├── main.dart<br>
│   ├── observer.dart<br>
├── test/<br>
│   ├── core/<br>
│   ├── features/<br>
│   │   ├── appBar/<br>
│   │   │   ├── data/<br>
│   │   │   │   ├── models/<br>
│   │   │   ├── presentation/<br>
│   │   │   │   ├── views/<br>
│   │   │   │   ├── widgets/<br>
│   │   │   │   ├── view_models/<br>
├── pubspec.yaml<br>

#Breakpoints

• Mobile layout appears when the screen size is less than or equal to 470px.
Web layout appears when the screen size is greater than 470px.

#Note

• Dummy data does not load successfully when running the app on Chrome or Edge due to a CORS proxy issue. Please run and test the app on Windows or mobile devices.
