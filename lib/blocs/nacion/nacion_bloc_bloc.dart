import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'nacion_bloc_event.dart';
part 'nacion_bloc_state.dart';

class NacionBlocBloc extends Bloc<NacionBlocEvent, NacionBlocState> {
  NacionBlocBloc() : super(NacionBlocInitial()) {
    on<NacionBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
