import '../../libs.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial());
  @override
  Stream<AuthBloc> mapEventToState(AuthEvent, event) async* {}
}
