import '../../libs.dart';

abstract class ProductpageEvent extends Equatable {
  const ProductpageEvent();

  @override
  List<Object> get props => [];
}

class ProfileClicked extends ProductpageEvent {}

class LanguageChoose extends ProductpageEvent {}

class ChatRoom extends ProductpageEvent {}

class MyStore extends ProductpageEvent {}

class Search extends ProductpageEvent {}

class Notifications extends ProductpageEvent {}

class LogOut extends ProductpageEvent {}
