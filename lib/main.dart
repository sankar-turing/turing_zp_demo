import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:turing_zp_demo/di/dependency_injection.dart';
import 'package:turing_zp_demo/notifications/notification_utils.dart';
import 'package:turing_zp_demo/screens/home/home_screen.dart';
import 'package:turing_zp_demo/utils/language_constants.dart';

import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  initializeDependencyInjection();
  NotificationUtils.setUpOnReceiveNotification();
  Locale currentLocale = await getLocale();
  runApp(
    MyApp(
      currentLocale: currentLocale,
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
    required this.currentLocale,
  }) : super(key: key);

  final Locale currentLocale;

  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  initState() {
    super.initState();
    _locale = widget.currentLocale;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2D5E64),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFFC5D351),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF2D5E64),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      locale: _locale,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      localeResolutionCallback:
          (Locale? locale, Iterable<Locale> supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale?.languageCode &&
              supportedLocale.countryCode == locale?.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
    );
  }
}
