import '../../libs.dart';

class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  MessagesBloc() : super(MessagesInitial());

  @override
  Stream<MessagesBloc>(MessagesEvent, event) async* {}
}
