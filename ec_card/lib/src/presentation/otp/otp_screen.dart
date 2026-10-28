// lib/src/presentation/otp/otp_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../application/otp/otp_cubit.dart';
import '../../injection.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OtpCubit>(),
      child: const OtpView(),
    );
  }
}

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  String currentText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Verify OTP')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: BlocConsumer<OtpCubit, OtpState>(
          listener: (context, state) {
            state.maybeWhen(
              error: (msg) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg), backgroundColor: Colors.red)),
              success: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Verification Done!'), backgroundColor: Colors.green)),
              orElse: () {},
            );
          },
          builder: (context, state) {
            final isLoading = state.maybeWhen(loading: () => true, orElse: () => false);

            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Enter the 6-digit code sent to your email/phone", textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
                const SizedBox(height: 30),
                
                // OTP Field
                PinCodeTextField(
                  appContext: context,
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    activeColor: Colors.blue,
                    selectedColor: Colors.black,
                    inactiveColor: Colors.grey,
                  ),
                  onChanged: (value) {
                    currentText = value;
                  },
                ),
                
                const SizedBox(height: 30),
                
                // Verify Button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: isLoading
                        ? null
                        : () {
                            if (currentText.length == 6) {
                              context.read<OtpCubit>().verifyOtp(currentText);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Enter complete OTP")));
                            }
                          },
                    child: isLoading 
                        ? const CircularProgressIndicator(color: Colors.white) 
                        : const Text('VERIFY', style: TextStyle(fontSize: 16)),
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