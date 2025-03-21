import 'package:flutter/material.dart';
import 'package:web_email/screens/main/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light; // Default light mode

  void toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Web Email',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue[600],
          foregroundColor: Colors.white,
        ),
        cardColor: Colors.white,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black87), // Updated from bodyText1
          bodyMedium: TextStyle(color: Colors.black54), // Updated from bodyText2
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Color(0xFF1E1E1E), // Soft dark gray
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF2A2A2A), // Dark gray but not black
          foregroundColor: Colors.white,
        ),
        cardColor: Color(0xFF292929), // Slightly lighter gray for cards
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white70), // Updated from bodyText1
          bodyMedium: TextStyle(color: Colors.white60), // Updated from bodyText2
        ),
      ),
      themeMode: _themeMode, // Switch between light and dark mode
      home: MainScreen(toggleTheme: toggleTheme),
    );
  }
}
