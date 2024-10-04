
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
