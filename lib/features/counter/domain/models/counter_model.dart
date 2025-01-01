/// Counter model class that represents the counter data
class CounterModel {
  final int value;

  const CounterModel({
    required this.value,
  });

  /// Creates a copy of this CounterModel with the given field values
  CounterModel copyWith({
    int? value,
  }) {
    return CounterModel(
      value: value ?? this.value,
    );
  }
}
