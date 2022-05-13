import '../../libs.dart';

class AuthEvent extends Equatable {
  const AuthEvent();
  List<Object> get props => [];
}

class AuthLoginEvent extends AuthEvent {}

class AuthRegisterEvent extends AuthEvent {}

class AuthConfirmEvent extends AuthEvent {}
