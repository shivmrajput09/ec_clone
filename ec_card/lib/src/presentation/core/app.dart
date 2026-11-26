import 'package:ec_card_app/src/application/core/application_bloc.dart';
import 'package:ec_card_app/src/application/loading_status/loading_status_cubit.dart';
import 'package:ec_card_app/src/application/message/message_cubit.dart';
import 'package:ec_card_app/src/application/quiz/video/video_cubit.dart';
import 'package:ec_card_app/src/application/scanner/scanner_cubit.dart';
import 'package:ec_card_app/src/application/venue/venue_cubit.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:ec_card_app/src/presentation/core/res/app_theme.dart';
import 'package:ec_card_app/src/presentation/core/widgets/app_update_gate.dart';
import 'package:ec_card_app/src/presentation/home/home_page.dart';
import 'package:ec_card_app/src/presentation/loading_status/loading_status_page.dart';
import 'package:ec_card_app/src/presentation/login/login.dart';
import 'package:ec_card_app/src/presentation/core/locale_provider.dart';
import 'package:ec_card_app/src/presentation/settings/settings_controller.dart';
import 'package:ec_card_app/src/presentation/sign_up/sign_up.dart';
import 'package:ec_card_app/src/presentation/splash/splash_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/extension.dart';

class MyAppView extends StatefulWidget {
  const MyAppView({
    Key? key,
    required this.settingsController,
    required this.localeProvider,
  }) : super(key: key);

  final SettingsController settingsController;
  final LocaleProvider localeProvider;

  @override
  _MyAppViewState createState() => _MyAppViewState();
}

class _MyAppViewState extends State<MyAppView> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => getIt<ApplicationBloc>()
            ..add(const ApplicationEvent.checkStatus()),
        ),
        BlocProvider(
          create: (context) =>
              getIt<LoadingStatusCubit>()..updateNetworkStatus(),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => getIt<VideoCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<VenueCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<MessageCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<ScannerCubit>(),
        ),
      ],
      child: MyApp(
        settingsController: widget.settingsController,
        localeProvider: widget.localeProvider,
      ),
    );
  }
}

/// The Widget that configures your application.
class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
    required this.settingsController,
    required this.localeProvider,
  }) : super(key: key);

  final SettingsController settingsController;
  final LocaleProvider localeProvider;
  static final navigatorKey = GlobalKey<NavigatorState>();
  static late LocaleProvider localeProviderInstance;

  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  NavigatorState get _navigator => MyApp.navigatorKey.currentState!;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    context.read<ApplicationBloc>().add(
        ApplicationEvent.applicationLifecycleChanged(lifecycleState: state));
    super.didChangeAppLifecycleState(state);
  }

  @override
  void initState() {
    super.initState();
    MyApp.localeProviderInstance = widget.localeProvider;
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => AnimatedBuilder(
        animation: Listenable.merge([
          widget.settingsController,
          widget.localeProvider,
        ]),
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            navigatorKey: MyApp.navigatorKey,
            debugShowCheckedModeBanner: false,
            restorationScopeId: 'app',
            locale: widget.localeProvider.locale,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              _FallbackMaterialLocalizationsDelegate(),
              _FallbackCupertinoLocalizationsDelegate(),
            ],
            supportedLocales: const [
              Locale('cy', ''),
              Locale('gd', ''),
              Locale('en', ''),
              Locale('pl', ''),
              Locale('ro', ''),
              Locale('pa', ''),
              Locale('ur', ''),
              Locale('bn', ''),
              Locale('gu', ''),
              Locale('ar', ''),
              Locale('fr', ''),
              Locale('pt', ''),
              Locale('es', ''),
              Locale('so', ''),
              Locale('tr', ''),
            ],
            onGenerateTitle: (BuildContext context) =>
                AppLocalizations.of(context)!.appTitle,
            theme: appLightTheme,
            darkTheme: appDarkTheme,
            themeMode: ThemeMode.light,
            // navigatorObservers: <NavigatorObserver>[observer],
            builder: (context, child) {
              // ScreenUtil.setContext(context);
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
                child: BlocListener<ApplicationBloc, ApplicationState>(
                  listener: (context, state) {
                    // Future.delayed(const Duration(seconds: 1), () {});
                    state.map(
                      initial: (_) {},
                      noInternetConnection: (_) {
                        _navigator.context
                            .showError(const AppErrors.noInternetConnection());
                      },
                      // Nothing to show — the warning is time-limited and
                      // clears itself. The state exists so the bloc has
                      // somewhere to go when the connection returns.
                      internetRestored: (_) {},
                      authenticated: (_) {
                        // context
                        //     .read<LoadingStatusCubit>()
                        //     .fetchUserDashboardData();
                        // Future.delayed(const Duration(seconds: 1));
                        _navigator
                            .pushReplacementNamed(LoadingStatusPage.routeName);
                      },
                      unauthenticated: (_) {
                        _navigator.pushNamedAndRemoveUntil(
                            LoginPage.routeName, (route) => false);
                      },
                      setRouteForIntentNav: (_) {},
                      resumed: (_) {},
                      paused: (_) {},
                      inactive: (_) {},
                    );
                  },
                  child: AppUpdateGate(child: child ?? const SizedBox.shrink()),
                ),
              );
            },
            onGenerateRoute: (RouteSettings routeSettings) {
              return CupertinoPageRoute<void>(
                settings: routeSettings,
                builder: (context) {
                  switch (routeSettings.name) {
                    // case SettingsView.routeName:
                    //   return SettingsView(
                    //       controller: widget.settingsController);
                    // case SampleItemDetailsView.routeName:
                    //   return const SampleItemDetailsView();
                    // case SampleItemListView.routeName:
                    //   return const SampleItemListView();

                    case LoginPage.routeName:
                      return const LoginPage();
                    case SignUpScreen.routeName:
                      return const SignUpScreen();
                    case HomePage.routeName:
                      return const HomePage();
                    case LoadingStatusPage.routeName:
                      return const LoadingStatusPage();
                    case SplashPage.routeName:
                    default:
                      return const SplashPage();
                  }
                },
              );
            },
          );
        },
      ),
    );
  }
}

/// Fallback delegate for locales not supported by GlobalMaterialLocalizations
/// (e.g. Scottish Gaelic 'gd', Somali 'so'). Falls back to English defaults.
class _FallbackMaterialLocalizationsDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const _FallbackMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      const DefaultMaterialLocalizations();

  @override
  bool shouldReload(_FallbackMaterialLocalizationsDelegate old) => false;
}

/// Fallback delegate for locales not supported by GlobalCupertinoLocalizations.
class _FallbackCupertinoLocalizationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const _FallbackCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<CupertinoLocalizations> load(Locale locale) async =>
      const DefaultCupertinoLocalizations();

  @override
  bool shouldReload(_FallbackCupertinoLocalizationsDelegate old) => false;
}
