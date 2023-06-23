import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_twitter/core/common/loader.dart';
import 'package:flutter_twitter/core/common/signin_button.dart';
import 'package:flutter_twitter/core/constant/constant.dart';
import 'package:flutter_twitter/features/auth/controller/auth_controller.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(authControllerProvider);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset(
            Constant.logoPath,
            height: 40,
          ),
          actions: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Skip',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ))
          ],
        ),
        body: isLoading
            ? const Loader()
            : Column(
                children: [
                  const Text('Dive into anything',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5)),
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    Constant.loginEmotePath,
                    height: 400,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SignInButton()
                ],
              ));
  }
}
