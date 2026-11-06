// lib/src/presentation/login/login_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/login/login_cubit.dart';
import '../../injection.dart';
import '../core/res/app_colors.dart';
import '../otp/otp_screen.dart';

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
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      body: SafeArea(
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            state.maybeWhen(
              error: (msg) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(msg),
                    backgroundColor: errorColor,
                  ),
                );
              },
              success: () {
                final phone = _phoneController.text.trim();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('OTP sent successfully!'),
                    backgroundColor: Colors.green,
                  ),
                );

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OtpScreen(phoneNumber: phone),
                  ),
                );
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            final isLoading = state.maybeWhen(loading: () => true, orElse: () => false);

            return Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Brand Logo / Icon
                    Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.credit_card,
                        size: 42,
                        color: primaryBackgroundColor,
                      ),
                    ),
                    const SizedBox(height: 24),

                    // App Title
                    const Text(
                      'EC Card',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.1,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Emergency Contraception & Health Service',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: primaryCyanTextOnDark,
                      ),
                    ),
                    const SizedBox(height: 40),

                    // Card Form Container
                    Container(
                      padding: const EdgeInsets.all(22.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 16,
                            offset: Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Sign In with Mobile',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Enter your mobile number to receive a 6-digit verification code.',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[600],
                            ),
                          ),
                          const SizedBox(height: 20),

                          // Phone Number Input
                          TextField(
                            controller: _phoneController,
                            keyboardType: TextInputType.phone,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp(r'^[+0-9]*$')),
                            ],
                            decoration: InputDecoration(
                              labelText: 'Mobile Number',
                              hintText: 'e.g. 07123456789 or +44...',
                              prefixIcon: const Icon(Icons.phone_android),
                              filled: true,
                              fillColor: textFieldFillColor,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),

                          // Submit Button
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: primaryBackgroundColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: isLoading
                                  ? null
                                  : () {
                                      FocusScope.of(context).unfocus();
                                      context.read<LoginCubit>().sendOtpForPhone(
                                            _phoneController.text,
                                          );
                                    },
                              child: isLoading
                                  ? const SizedBox(
                                      height: 24,
                                      width: 24,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2.5,
                                        color: Colors.white,
                                      ),
                                    )
                                  : const Text(
                                      'GET VERIFICATION CODE',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Privacy notice
                    Text(
                      'Your data is protected and kept strictly confidential under NHS health service guidelines.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
