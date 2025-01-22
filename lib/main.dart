import 'package:flutter/material.dart';
import 'package:portfolio_app/core/services/locator_service.dart';
import 'package:portfolio_app/features/home/presentation/providers/home_provider.dart';
import 'package:portfolio_app/features/projects/presentation/providers/projects_provider.dart';
import 'package:portfolio_app/features/tech_stack/presentation/providers/tech_stack_provider.dart';
import 'package:provider/provider.dart';
import 'core/routes/app_routes.dart';
import 'core/theme/app_theme.dart';
import 'features/home/presentation/providers/theme_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await const LocatorService().setup();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider.value(value: locator.get<HomeProvider>()),
        ChangeNotifierProvider.value(value: locator.get<TechStackProvider>()),
        ChangeNotifierProvider.value(value: locator.get<ProjectsProvider>()),
      ],
      child: const PortfolioApp(),
    ),
  );
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Portfolio',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeProvider.themeMode,
          initialRoute: AppRoutes.loading,
          routes: AppRoutes.routes,
          builder: (context, child) {
            return Stack(
              children: [
                child!,
                if (child.toString().contains('Loading'))
                  Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
              ],
            );
          },
        );
      },
    );
  }
}
