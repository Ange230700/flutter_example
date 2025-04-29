// lib\main.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/state/app_state.dart';
import 'src/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MyAppState(),
      child: MaterialApp(
        title: 'Example',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(200, 39, 31, 189),
          ),
        ),
        home: const HomePage(),
      ),
    );
  }
}
