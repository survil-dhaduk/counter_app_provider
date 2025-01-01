import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/strings.dart';
import '../providers/counter_provider.dart';
import '../widgets/counter_display.dart';

/// Main counter page that displays the counter and increment button
class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.homePageTitle),
        actions: [
          // Reset button
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              context.read<CounterProvider>().reset();
            },
          ),
        ],
      ),
      body: const Center(
        child: CounterDisplay(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterProvider>().increment();
        },
        tooltip: AppStrings.buttonTooltip,
        child: const Icon(Icons.add),
      ),
    );
  }
}
