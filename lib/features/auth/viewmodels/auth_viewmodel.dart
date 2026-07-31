import 'package:flutter/material.dart';
import 'package:ripple/features/auth/services/auth_services.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthService _authService = AuthService();

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<void> register({
    required String fullName,
    required String email,
    required String username,
    required String password,
  }) async {
    _isLoading = true;
    notifyListeners();

    try {
      await _authService.register(
        fullName: fullName,
        email: email,
        username: username,
        password: password,
      );
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}