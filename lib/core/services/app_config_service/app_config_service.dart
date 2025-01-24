import 'dart:developer';

import 'package:portfolio_app/core/models/app_configs.dart';
import 'package:portfolio_app/core/services/app_config_service/i_app_config_service.dart';
import 'package:portfolio_app/core/services/database_service/i_database_service.dart';

class AppConfigService implements IAppConfigService {
  final IDatabaseService _databaseService;

  AppConfigService(this._databaseService);

  @override
  Future<AppConfigs> getAppConfigs() async {
    try {
      final data = await _databaseService.getData('appConfigs');
      return AppConfigs.fromJson(data);
    } catch (e) {
      log('Failed to fetch app configs: $e');
      throw Exception('Failed to fetch app configs');
    }
  }
}
