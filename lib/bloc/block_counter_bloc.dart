// ignore_for_file: depend_on_referenced_packages

import 'package:counter_bloc/bloc/block_counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter_bloc/bloc/block_counter_state.dart';

class CounterBloc extends Bloc<BlockCounterEvent, BlockCounterState> {
  CounterBloc() : super(BlockCounterInitial(count: 0)) {
    // Handle Increment event
    on<Increment>((event, emit) {
      emit(BlockCounterUpdated(state.count + 1));
    });

    // Handle Decrement event
    on<Decrement>((event, emit) {
      if (state.count!=0) {
        emit(BlockCounterUpdated(state.count - 1));
      }
     
    });
    on<Resest>((event, emit) {
      emit(BlockCounterInitial(count: 0));
    });
  }
}
