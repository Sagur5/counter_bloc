// // ignore_for_file: use_super_parameters

// abstract class BlockCounterState {
//   final int count;

//   BlockCounterState(this.count);
// }

// class CounterInitial extends BlockCounterState {
//   CounterInitial() : super(0);
// }

// class CounterUpdated extends BlockCounterState {
//   CounterUpdated(int count) : super(count);
// }
abstract class BlockCounterState {
  final int count;

  BlockCounterState({required this.count});
}

class BlockCounterInitial extends BlockCounterState {
  BlockCounterInitial({required super.count});
}

class BlockCounterUpdated extends BlockCounterState {
  BlockCounterUpdated(int count) : super(count: count);
}
