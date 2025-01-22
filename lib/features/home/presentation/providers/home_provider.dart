import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio_app/features/home/data/services/i_home_service.dart';
import 'package:portfolio_app/features/home/domain/model/social_network_model.dart';

class HomeProvider extends ChangeNotifier {
  final IHomeService _homeService;
  HomeProvider({
    required IHomeService homeService,
  }) : _homeService = homeService;

  List<SocialAccountModel> socialAccounts = [];

  Future<void> fetchSocialAccounts() async {
    try {
      final accounts = await _homeService.fetchSocialAccounts();
      socialAccounts = accounts;
      notifyListeners();
    } catch (e) {
      log('Error fetching social accounts: $e', name: 'HomeProvider');
    }
  }
}
