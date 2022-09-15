import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:turing_zp_demo/cubits/language/language_cubit.dart';
import 'package:turing_zp_demo/cubits/notifications/notification_cubit.dart';
import 'package:turing_zp_demo/data/services/api_services.dart';
import 'package:turing_zp_demo/services/notification_service.dart';

final getIt = GetIt.instance;

void initializeDependencyInjection() {
  Get.put(NotificationService());

  //GraphQLClient
  getIt.registerLazySingleton<GraphQLClient>(
    () => ApiServices.getGraphQLClient(),
  );

  //Cubits
  getIt.registerLazySingleton<NotificationCubit>(
    () => NotificationCubit(),
  );

  getIt.registerSingleton<LanguageCubit>(LanguageCubit());
}
