import '../../libs.dart';

abstract class MessagesState extends Equatable {
  const MessagesState();
  
  @override
  List<Object> get props => [];
}

class MessagesInitial extends MessagesState {}
class MessageLoaded extends MessagesState{}
