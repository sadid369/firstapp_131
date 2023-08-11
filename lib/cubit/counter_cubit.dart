import 'package:firstapp_131/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  // Initial State
  CounterCubit() : super(CounterState(count: 0));

  //events

  void incrementCount() {
    emit(CounterState(count: state.count + 1));
  }

  void decrementCount() {
    if (state.count > 0) {
      emit(CounterState(count: state.count - 1));
    }
  }
}
