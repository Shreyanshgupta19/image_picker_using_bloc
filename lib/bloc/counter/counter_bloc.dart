import 'package:bloc/bloc.dart';
import 'package:slider_and_swutchbutton_using_bloc/bloc/counter/counter_event.dart';
import 'package:slider_and_swutchbutton_using_bloc/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {  //  Bloc<event, state>
  CounterBloc() : super(const CounterState()) {
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);
  }

  void _increment(IncrementCounter event, Emitter<CounterState> emit ) {
    emit(state.copyWith(counter: state.counter + 1 ));
  }
  void _decrement(DecrementCounter event, Emitter<CounterState> emit ) {
    emit(state.copyWith(counter: state.counter - 1 ));
  }

}
