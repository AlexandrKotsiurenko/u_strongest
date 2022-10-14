import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_strongest/blocs/bottom_bar_bloc/bottom_bar_events.dart';
import 'package:u_strongest/blocs/bottom_bar_bloc/bottom_bar_state.dart';

class BottomBarBloc extends Bloc<BottomBarEvent, BottomBarState> {
  BottomBarBloc(BottomBarState initialState) : super(initialState) {
    on<PushHomePageEvent>(
      (event, emit) {

      },
    );
  }
}
