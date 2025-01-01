import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/constants/strings.dart';
import 'features/counter/presentation/pages/counter_page.dart';
import 'features/counter/presentation/providers/counter_provider.dart';

void main() {
  runApp(const MyApp());
}

/// Root widget of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: MaterialApp(
        title: AppStrings.appTitle,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const CounterPage(),
      ),
    );
  }
}
