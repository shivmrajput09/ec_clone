// lib/src/presentation/otp/otp_screen.dart

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/loading_status/loading_status_cubit.dart';
import '../../application/otp/otp_cubit.dart';
import '../../injection.dart';
import '../core/res/app_colors.dart';
import '../loading_status/loading_status_page.dart';

class OtpScreen extends StatelessWidget {
  final String phoneNumber;
  const OtpScreen({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OtpCubit>(),
      child: OtpView(phoneNumber: phoneNumber),
    );
  }
}

class OtpView extends StatefulWidget {
  final String phoneNumber;
  const OtpView({super.key, required this.phoneNumber});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final List<TextEditingController> _controllers =
      List.generate(6, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());

  int _resendCountdown = 30;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    setState(() => _resendCountdown = 30);
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_resendCountdown > 0) {
        setState(() => _resendCountdown--);
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    for (var c in _controllers) {
      c.dispose();
    }
    for (var f in _focusNodes) {
      f.dispose();
    }
    super.dispose();
  }

  String get _otpCode => _controllers.map((c) => c.text).join();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification'),
        backgroundColor: primaryBackgroundColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: BlocConsumer<OtpCubit, OtpState>(
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
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('OTP Verified Successfully!'),
                  backgroundColor: Colors.green,
                ),
              );

              // Real EC-Card Gatekeeper Navigation:
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => BlocProvider(
                    create: (context) => getIt<LoadingStatusCubit>(),
                    child: const LoadingStatusPage(),
                  ),
                ),
                (route) => false,
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeWhen(loading: () => true, orElse: () => false);

          return SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 16),
                Icon(
                  Icons.mark_email_read_outlined,
                  size: 64,
                  color: primaryBackgroundColor,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Verification Code',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'We sent a 6-digit verification code to:\n${widget.phoneNumber}',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[700], fontSize: 14),
                ),
                const SizedBox(height: 32),

                // 6-Digit OTP Input
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(6, (index) {
                    return SizedBox(
                      width: 44,
                      height: 52,
                      child: TextField(
                        controller: _controllers[index],
                        focusNode: _focusNodes[index],
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        decoration: InputDecoration(
                          counterText: '',
                          filled: true,
                          fillColor: textFieldFillColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: primaryBackgroundColor,
                              width: 2,
                            ),
                          ),
                        ),
                        onChanged: (value) {
                          if (value.isNotEmpty && index < 5) {
                            _focusNodes[index + 1].requestFocus();
                          } else if (value.isEmpty && index > 0) {
                            _focusNodes[index - 1].requestFocus();
                          }
                          if (_otpCode.length == 6) {
                            FocusScope.of(context).unfocus();
                          }
                        },
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 32),

                // Verify Button
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
                            context.read<OtpCubit>().verifyOtp(
                                  phoneNumber: widget.phoneNumber,
                                  otp: _otpCode,
                                );
                          },
                    child: isLoading
                        ? const SizedBox(
                            width: 24,
                            height: 24,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 2.5,
                            ),
                          )
                        : const Text(
                            'VERIFY & CONTINUE',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                  ),
                ),
                const SizedBox(height: 20),

                // Resend OTP Action
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't receive the code? ",
                      style: TextStyle(color: Colors.grey[600], fontSize: 13),
                    ),
                    _resendCountdown > 0
                        ? Text(
                            'Resend in ${_resendCountdown}s',
                            style: TextStyle(
                              color: primaryBackgroundColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )
                        : TextButton(
                            onPressed: isLoading
                                ? null
                                : () {
                                    context
                                        .read<OtpCubit>()
                                        .resendOtp(widget.phoneNumber);
                                    _startCountdown();
                                  },
                            child: Text(
                              'Resend Code',
                              style: TextStyle(
                                color: primaryBackgroundColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
