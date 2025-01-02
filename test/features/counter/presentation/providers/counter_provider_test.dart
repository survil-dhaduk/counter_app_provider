import 'package:flutter_test/flutter_test.dart';
import 'package:counter_app_provider/features/counter/presentation/providers/counter_provider.dart';

void main() {
  group('CounterProvider', () {
    late CounterProvider counterProvider;

    setUp(() {
      counterProvider = CounterProvider();
    });

    test('initial value should be 0', () {
      expect(counterProvider.counter.value, 0);
    });

    test('increment should increase value by 1', () {
      counterProvider.increment();
      expect(counterProvider.counter.value, 1);
    });

    test('reset should set value to 0', () {
      counterProvider.increment();
      counterProvider.reset();
      expect(counterProvider.counter.value, 0);
    });
  });
}
