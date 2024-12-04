import 'package:flutter/material.dart';
import 'routes.dart';
import 'themes/theme.dart';

void main() {
  runApp(const SinhApp());
}

class SinhApp extends StatefulWidget {
  const SinhApp({Key? key}) : super(key: key);

  @override
  State<SinhApp> createState() => _SinhAppState();
}

class _SinhAppState extends State<SinhApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Sinh Company',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeMode,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      builder: (context, child) {
        return ThemeProvider(
          themeMode: _themeMode,
          toggleTheme: toggleTheme,
          child: child!,
        );
      },
    );
  }
}

class ThemeProvider extends InheritedWidget {
  final ThemeMode themeMode;
  final VoidCallback toggleTheme;

  const ThemeProvider({
    Key? key,
    required this.themeMode,
    required this.toggleTheme,
    required Widget child,
  }) : super(key: key, child: child);

  static ThemeProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeProvider>()!;
  }

  @override
  bool updateShouldNotify(covariant ThemeProvider oldWidget) {
    return themeMode != oldWidget.themeMode;
  }
}
