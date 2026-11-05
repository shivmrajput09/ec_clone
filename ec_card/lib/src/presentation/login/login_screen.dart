// lib/src/presentation/login/login_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/login/login_cubit.dart';
import '../../injection.dart';
import '../otp/otp_screen.dart'; // ✅ OTP Screen connected

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginCubit>(),
      child: const LoginView(),
    );
  }
}

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('EC Card Login')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            state.maybeWhen(
              error: (msg) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(msg, style: const TextStyle(color: Colors.white)),
                    backgroundColor: Colors.red,
                  ),
                );
              },
              success: () {
                // ✅ Green Snackbar
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Login Successful! Redirecting to OTP...'),
                    backgroundColor: Colors.green,
                  ),
                );

                // ✅ Screen Change: Seedha OTP Screen par navigation
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OtpScreen(
                      emailOrPhone: emailController.text.isNotEmpty
                          ? emailController.text
                          : 'user@example.com',
                    ),
                  ),
                );
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            final isLoading = state.maybeWhen(loading: () => true, orElse: () => false);

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: isLoading
                        ? null
                        : () {
                            context.read<LoginCubit>().loginPressed(
                                  emailController.text,
                                  passwordController.text,
                                );
                          },
                    child: isLoading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text('LOGIN', style: TextStyle(fontSize: 16)),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}