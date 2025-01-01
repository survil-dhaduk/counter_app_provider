import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/strings.dart';
import '../providers/counter_provider.dart';

/// Widget to display the counter value
class CounterDisplay extends StatelessWidget {
  const CounterDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppStrings.counterText,
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Consumer<CounterProvider>(
            builder: (context, provider, child) {
              return Text(
                '${provider.counter.value}',
                style: Theme.of(context).textTheme.headlineMedium,
              );
            },
          ),
        ],
      ),
    );
  }
}
