// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors

import 'package:counter_bloc/bloc/block_counter_bloc.dart';
import 'package:counter_bloc/bloc/block_counter_event.dart';
import 'package:counter_bloc/bloc/block_counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterBloc, BlockCounterState>(
        builder: (context, state) {
          return Column(
            children: [
              Text("This is a Counter Block App"),
              SizedBox(
                height: 40,
              ),
              Text("${state.count}"),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(Increment());
                      },
                      child: Text("Increment")),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(Decrement());
                      },
                      child: Text("Decrement")),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(Resest());
                      },
                      child: Text("Reset")),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
