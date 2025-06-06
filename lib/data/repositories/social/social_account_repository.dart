import 'package:ayol_uchun/core/client.dart';
import 'package:ayol_uchun/data/models/social/social_account_model.dart';

class SocialAccountRepository{
  final ApiClient client;
  SocialAccountRepository({required this.client});

  Future<List<SocialAccountModel>> fetchSocialAccount()async{
    final rawAccounts = await client.getGenericRequest<List>("/social-account/list");
    final accounts = rawAccounts.map((e)=> SocialAccountModel.fromJson(e)).toList();
    return accounts;
  }

}