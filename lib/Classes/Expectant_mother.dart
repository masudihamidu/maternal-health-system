
class Expectant {
  String? _username;
  String? _password;

  set username(String? username) {
    _username = username;
  }

  String? get username {
    return _username;
  }

  set password(String? password) {
    _password = password;
  }

  String? get password {
    return _password;
  }

  // ==================== login function ==========================
  Future<bool> loginUser(String username, String password) async {
    this.username = username;
    this.password = password;



    return false; // Login failed
  }
// ================================================================


}
