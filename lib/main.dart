import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:turing_zp_demo/controllers/notification_controller.dart';
import 'package:turing_zp_demo/cubits/language/language_cubit.dart';
import 'package:turing_zp_demo/di/dependency_injection.dart';
import 'package:turing_zp_demo/screens/home/home_screen.dart';
import 'package:turing_zp_demo/utils/language_constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  initializeDependencyInjection();
  setupNotifications();
  //NotificationUtils.setUpOnReceiveNotification();
  Locale currentLocale = await getLocale();
  runApp(
    MyApp(
      currentLocale: currentLocale,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.currentLocale,
  }) : super(key: key);

  final Locale currentLocale;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, LanguageState>(
      bloc: getIt<LanguageCubit>()..setLocale(currentLocale),
      builder: (context, state) {
        Get.updateLocale(state.locale!);
        return GetMaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: const Color(0xFF2D5E64),
            colorScheme: ColorScheme.fromSwatch(
              accentColor: const Color(0xFFC5D351),
            ),
            appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xFF2D5E64),
              centerTitle: true,
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xFF2D5E64)), textStyle: MaterialStateProperty.all(const TextStyle(color: Colors.white, fontSize: 17)), shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))), minimumSize: MaterialStateProperty.all(const Size(double.infinity, 45)))),
          ),
          debugShowCheckedModeBanner: false,
          home: const HomeScreen(),
          locale: state.locale,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
        );
      },
    );
  }
}
