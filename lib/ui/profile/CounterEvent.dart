import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class CounterEvent extends Equatable {
  int counter = 0;

  @override
  String toString() => 'CounterEvent';

  @override
  List<Object?> get props => [];
}

class CounterState extends Equatable {
  final int counter;

  const CounterState({required this.counter});

  @override
  List<Object> get props => [counter];
}

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(counter: 0)) {
    on<CounterEvent>((event, emit) {
      emit(CounterState(counter: state.counter + 1));
    });
  }
}
