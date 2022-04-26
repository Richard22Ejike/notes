import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notes/pages/note.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Notes SQLite';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    themeMode: ThemeMode.dark,
    theme: ThemeData(
      primaryColor: Colors.grey,
      scaffoldBackgroundColor: Colors.grey,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.grey,
        elevation: 2,
      ),
    ),
    home: NotesPage(),
  );
}