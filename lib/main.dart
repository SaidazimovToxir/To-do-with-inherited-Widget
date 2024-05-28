// import 'package:flutter/material.dart';
// import 'package:lesson45/controllers/settings_controller.dart';
// import 'package:lesson45/notifiers/setting_notifier.dart';
// import 'package:lesson45/views/screens/home_screen.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SettingNotifier(
//       settingsController: SettingsController(),
//       child: Builder(
//         builder: (context) {
//           return ListenableBuilder(
//             listenable: SettingNotifier.of(context),
//             builder: (context, child) {
//               return MaterialApp(
//                 darkTheme: ThemeData.dark(),
//                 themeMode: SettingNotifier.of(context).settings.themeMode,
//                 home: const HomeScreen(),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }


// lib/main.dart

import 'package:flutter/material.dart';
import 'package:lesson45/controllers/todo_controller.dart';
import 'package:lesson45/notifiers/todo_notifier.dart';
import 'package:lesson45/views/screens/todo_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TodoInheritedWidget(
      viewModel: TodoViewModel(),
      child: MaterialApp(
        home: TodoListView(),
      ),
    );
  }
}
