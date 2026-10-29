// lib/src/presentation/login/login_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/login/login_cubit.dart';
import '../../injection.dart'; // DI getIt ke liye

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // UI ko Cubit provide karna
    return BlocProvider(
      create: (context) => getIt<LoginCubit>(), // DI se Cubit mangwaya
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
        // BlocConsumer UI rebuild karta hai aur side-effects (Snackbar/Navigation) handle karta hai
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            state.maybeWhen(
              error: (msg) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg, style: const TextStyle(color: Colors.white)), backgroundColor: Colors.red));
              },
              success: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Login Successful!'), backgroundColor: Colors.green));
                // TODO: Navigate to Dashboard / OTP Screen here
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
                  decoration: const InputDecoration(labelText: 'Email', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 15),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(labelText: 'Password', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: isLoading
                        ? null
                        : () {
                            // Cubit ka function call karna
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
