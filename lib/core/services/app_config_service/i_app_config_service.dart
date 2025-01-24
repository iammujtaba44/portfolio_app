import 'package:portfolio_app/core/models/app_configs.dart';

abstract class IAppConfigService {
  Future<AppConfigs> getAppConfigs();
}
