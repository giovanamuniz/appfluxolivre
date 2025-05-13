import 'package:flutter/material.dart';
import 'package:app_fluxolivrep/src/models/user.dart'; 
import 'package:app_fluxolivrep/src/services/user_api_service.dart';

class UserRegisterProvider with ChangeNotifier {
  Future<void> registerUser(User user) async {
    try {
      final response = await UserApiService.registerUser(user);

      if (response.statusCode != 201) {
        final errorMessage = response.body.isNotEmpty
            ? response.body
            : 'Erro ao cadastrar usuário';
        throw errorMessage;
      }

    } catch (error) {
      throw 'Erro ao cadastrar: $error';
    }
  }
}
