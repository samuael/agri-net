
import '../../libs.dart';

abstract class MessageEvent extends Equatable {
  const MessageEvent();

  @override
  List<Object> get props => [];
}

class MessageClicked extends MessageEvent {
  const MessageClicked();

  List<Object> get pops => [];
}
