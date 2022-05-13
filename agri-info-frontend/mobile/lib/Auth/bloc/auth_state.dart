import '../../libs.dart';

class AuthState extends Equatable {
  const AuthState();
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthAutenticatedState {
  Subscriber subscriber;
  AuthAutenticatedState(this.subscriber);
}

class AuthRegistrationOnProgressState {
  int unixTime;

  AuthRegistrationOnProgressState(this.unixTime);
}

class AuthOnConfirmationState {}
