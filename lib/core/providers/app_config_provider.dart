import 'dart:developer';
import 'package:portfolio_app/core/models/app_configs.dart';
import 'package:portfolio_app/core/providers/base_provider.dart';
import 'package:portfolio_app/core/services/app_config_service/i_app_config_service.dart';

class AppConfigProvider extends BaseProvider {
  final IAppConfigService _appConfigService;

  AppConfigProvider({
    required IAppConfigService appConfigService,
  }) : _appConfigService = appConfigService;

  AppConfigs? _appConfigs;

  AppConfigs? get appConfigs => _appConfigs;

  Future<AppConfigs> getAppConfigs() async {
    try {
      _appConfigs = await _appConfigService.getAppConfigs();
      notifyListeners();
      return _appConfigs!;
    } catch (e) {
      log('Failed to fetch app configs: $e');
      throw Exception('Failed to fetch app configs');
    }
  }
}
