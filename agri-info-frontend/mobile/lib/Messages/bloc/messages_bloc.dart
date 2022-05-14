import '../../libs.dart';

class MessagesBloc extends Bloc<MessageEvent, MessagesState> {
  MessagesBloc() : super(MessagesInitial());

  @override
  Stream<MessagesBloc>(MessagesEvent, event) async* {}
}
