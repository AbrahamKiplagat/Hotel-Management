- widget-> is a on screen ui items.
- scaffold->used to create a basic  layout for the user interface: drawer, an app bar, a bottom navigation bar
- Container->: A widget that can be used to contain other widgets
- child->: A property of a widget that accepts a single widget as its child.
- children->: A property of a widget that accepts a list of widgets as its children

auth- 2wks
1. Create an Auth class in dart
- This will handle authentication for our app
- This will use Firebase Authentication

ui -> user interface

- We need to create login page (sign up & sign in)
- We also need to create homepage where users can see their todos after logging in


- providers in dart:
run this: `flutter pub add provider`

1. Provider is a way to make data sharable across the whole application
2. It allows you to pass data from parent to child and vice versa

- In order to use provider, we have to wrap our entire app with ChangeNotifierProvider
used for state management in Flutter applications.
- Concept:

Providers offer a way to share and update data across different parts (widgets) of your Flutter app.
It eliminates the need for prop drilling, which is passing data through multiple layers of widgets.
Providers act as a central source of truth for your app's state.
- Key Components:

- Provider Class:
 This class acts as the foundation for creating providers.
- ChangeNotifier: 
This class is a base class you can extend to create data providers that can notify widgets when their state changes.
- Consumer Widget:
 This widget allows you to access the data provided by a provider and rebuild your widget when the data updates.
- Benefits:

- Improved Code Organization:
 Data is managed centrally, leading to cleaner and more maintainable code.
Reduced Boilerplate: Providers eliminate the need for complex state management solutions for simpler applications.
Automatic Updates: Widgets automatically rebuild whenever the data they depend on changes.
