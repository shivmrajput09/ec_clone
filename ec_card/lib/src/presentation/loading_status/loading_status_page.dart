// lib/src/presentation/loading_status/loading_status_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/loading_status/loading_status_cubit.dart';
import '../../injection.dart';
import '../core/res/app_colors.dart';
import '../home/home_page.dart';
import '../quiz/quiz_screen.dart';
import '../videos/video_screen.dart';

class LoadingStatusPage extends StatelessWidget {
  final bool skipProfileCheck;

  const LoadingStatusPage({super.key, this.skipProfileCheck = false});

  static const routeName = '/loading-status';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoadingStatusCubit>(),
      child: LoadingStatusView(skipProfileCheck: skipProfileCheck),
    );
  }
}

class LoadingStatusView extends StatefulWidget {
  final bool skipProfileCheck;

  const LoadingStatusView({super.key, this.skipProfileCheck = false});

  @override
  State<LoadingStatusView> createState() => _LoadingStatusViewState();
}

class _LoadingStatusViewState extends State<LoadingStatusView> {
  bool _navigated = false;

  @override
  void initState() {
    super.initState();

    final cubit = context.read<LoadingStatusCubit>();
    cubit.updateNetworkStatus();
    cubit.fetchUserDashboardData();

    // Trigger Gatekeeper Status Check
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      cubit.started(skipProfileCheck: widget.skipProfileCheck);
    });
  }

  void _navigateSmoothly(Widget targetScreen) {
    if (_navigated || !mounted) return;
    _navigated = true;

    Navigator.pushAndRemoveUntil(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 400),
        pageBuilder: (context, animation, secondaryAnimation) => targetScreen,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoadingStatusCubit, LoadingStatusState>(
      listener: (context, state) {
        state.quizPassedFailureOrSuccess.map(
          (either) => either.fold(
            (error) {
              // Error handled in UI builder with retry button
            },
            (routeStatus) {
              if (routeStatus == 'showDashboard') {
                _navigateSmoothly(const HomePage());
              } else if (routeStatus == 'showVideo') {
                _navigateSmoothly(const VideosScreen());
              } else if (routeStatus == 'showQuiz') {
                _navigateSmoothly(const QuizScreen());
              } else {
                // Default fallback to Video onboarding
                _navigateSmoothly(const VideosScreen());
              }
            },
          ),
        );
      },
      builder: (context, state) {
        final hasError = state.quizPassedFailureOrSuccess.fold(
          () => false,
          (either) => either.isLeft(),
        );

        return Scaffold(
          backgroundColor: primaryBackgroundColor,
          body: Center(
            child: hasError
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.error_outline,
                          color: Colors.white,
                          size: 56,
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Something went wrong connecting to EC service.',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        const SizedBox(height: 24),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: primaryBackgroundColor,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                          ),
                          onPressed: () {
                            setState(() => _navigated = false);
                            final cubit = context.read<LoadingStatusCubit>();
                            cubit.fetchUserDashboardData();
                            cubit.started(skipProfileCheck: widget.skipProfileCheck);
                          },
                          icon: const Icon(Icons.refresh),
                          label: const Text('Retry'),
                        ),
                      ],
                    ),
                  )
                : Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          shape: BoxShape.circle,
                        ),
                        child: const SizedBox(
                          width: 40,
                          height: 40,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 3,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Checking Health Services...',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
