import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio de Sesión'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/home'),
          child: const Text('Ingresar'),
        ),
      ),
    );
  }
}
