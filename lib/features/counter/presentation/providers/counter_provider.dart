import 'package:flutter/material.dart';
import '../../domain/models/counter_model.dart';

/// CounterProvider manages the state of the counter throughout the app
class CounterProvider extends ChangeNotifier {
  /// Initial counter model with value 0
  CounterModel _counter = const CounterModel(value: 0);

  /// Getter to access current counter value
  CounterModel get counter => _counter;

  /// Increment counter value by 1
  void increment() {
    _counter = _counter.copyWith(value: _counter.value + 1);
    notifyListeners();
  }

  /// Reset counter value to 0
  void reset() {
    _counter = const CounterModel(value: 0);
    notifyListeners();
  }
}
