abstract class AuthState {
  const AuthState();
}

class Authenticated extends AuthState {
  final String token;

  const Authenticated(this.token);

  @override
  String toString() {
    return 'Login State';
  }
}

class Unauthenticated extends AuthState {
  const Unauthenticated();

  @override
  String toString() {
    return 'Not Login State';
  }
}

class Authenticating extends AuthState {
  const Authenticating();
}
