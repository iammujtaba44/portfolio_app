import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart' show GlobalKey, NavigatorState, ScaffoldMessengerState;
import 'package:get_it/get_it.dart';
import 'package:portfolio_app/core/providers/app_config_provider.dart';
import 'package:portfolio_app/core/services/app_config_service/app_config_service.dart';
import 'package:portfolio_app/core/services/app_config_service/i_app_config_service.dart';
import 'package:portfolio_app/core/services/database_service/database_service.dart';
import 'package:portfolio_app/core/services/database_service/i_database_service.dart';
import 'package:portfolio_app/features/experience/data/services/experience_service.dart';
import 'package:portfolio_app/features/experience/data/services/i_experience_service.dart';
import 'package:portfolio_app/features/experience/presentation/providers/experience_provider.dart';
import 'package:portfolio_app/features/home/data/services/home_service.dart';
import 'package:portfolio_app/features/home/data/services/i_home_service.dart';
import 'package:portfolio_app/features/home/presentation/providers/home_provider.dart';
import 'package:portfolio_app/features/projects/data/services/i_projects_service.dart';
import 'package:portfolio_app/features/projects/data/services/projects_service.dart';
import 'package:portfolio_app/features/projects/presentation/providers/projects_provider.dart';
import 'package:portfolio_app/features/tech_stack/data/services/i_tech_stack_service.dart';
import 'package:portfolio_app/features/tech_stack/data/services/tech_stack_service.dart';
import 'package:portfolio_app/features/tech_stack/presentation/providers/tech_stack_provider.dart';
import 'package:portfolio_app/firebase_options.dart';

final locator = GetIt.instance;

sealed class ILocatorService {
  Future<void> setup();
}

class LocatorService implements ILocatorService {
  const LocatorService();
  @override
  Future<void> setup() async {
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    _registerRouters();
    await _setupServices();
    _setupProviders();

    locator.get<HomeProvider>().fetchSocialAccounts();
    locator.get<AppConfigProvider>().getAppConfigs();
  }

  Future<void> _setupServices() async {
    locator.registerLazySingleton<IDatabaseService>(() => DatabaseService());
    locator.registerLazySingleton<IHomeService>(() => HomeService(locator.get()));
    locator.registerLazySingleton<ITechStackService>(() => TechStackService(locator.get()));
    locator.registerLazySingleton<IProjectsService>(() => ProjectsService(locator.get()));
    locator.registerLazySingleton<IAppConfigService>(() => AppConfigService(locator.get()));
    locator.registerLazySingleton<IExperienceService>(() => ExperienceService(locator.get()));
  }

  static void _setupProviders() {
    locator.registerLazySingleton<HomeProvider>(() => HomeProvider(homeService: locator.get()));
    locator.registerLazySingleton<TechStackProvider>(
        () => TechStackProvider(techStackService: locator.get()));
    locator.registerLazySingleton<ProjectsProvider>(
        () => ProjectsProvider(projectsService: locator.get()));
    locator.registerLazySingleton<AppConfigProvider>(
      () => AppConfigProvider(appConfigService: locator.get()),
    );
    locator.registerLazySingleton<ExperienceProvider>(
      () => ExperienceProvider(experienceService: locator.get()),
    );
  }

  static void _registerRouters() {}
}

class NavigationService {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
}
