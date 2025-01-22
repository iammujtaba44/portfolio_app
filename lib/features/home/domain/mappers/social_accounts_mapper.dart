import 'package:portfolio_app/features/home/domain/model/social_network_model.dart';

abstract class SocialAccountsMapper {
  static List<SocialAccountModel> map(Map<String, dynamic> map) {
    final accounts = map['accounts']
        .map((e) => SocialAccountModel.fromMap(Map<String, dynamic>.from(e as Map)))
        .toList();

    return List<SocialAccountModel>.from(accounts);
  }
}
