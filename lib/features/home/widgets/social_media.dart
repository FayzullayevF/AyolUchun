import 'package:ayol_uchun/data/models/social/social_account_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key, required this.accounts});

  final List<SocialAccountModel> accounts;

  Future<void> launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      debugPrint("Could not launch $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: accounts
          .map((account) => GestureDetector(onTap: ()=> launchURL(account.link), child: SvgPicture.network(account.icon)))
          .toList(),
    );
  }
}
