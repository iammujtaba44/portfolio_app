import 'package:portfolio_app/features/home/domain/model/social_network_model.dart';

abstract class IHomeService {
  Future<List<SocialAccountModel>> fetchSocialAccounts();
}
