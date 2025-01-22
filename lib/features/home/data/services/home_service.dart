import 'package:portfolio_app/core/services/database_service/i_database_service.dart';
import 'package:portfolio_app/features/home/data/services/i_home_service.dart';
import 'package:portfolio_app/features/home/domain/mappers/social_accounts_mapper.dart';
import 'package:portfolio_app/features/home/domain/model/social_network_model.dart';

class HomeService implements IHomeService {
  final IDatabaseService _databaseService;

  HomeService(this._databaseService);

  @override
  Future<List<SocialAccountModel>> fetchSocialAccounts() async {
    final data = await _databaseService.getData('socialAccounts');
    return SocialAccountsMapper.map(data);
  }
}
