import 'package:basketball_news_app/screen/settings/widgets/settings_tile.dart';
import 'package:basketball_news_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.black,
        centerTitle: true,
        title: Text(
          'Settings',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 23,
              color: AppColors.white),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SettingsTile(
                  title: 'Ask of Question',
                  iconPath: 'assets/images/settings/ask.svg',
                  onTap: () {},
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.darkGrey,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 16),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/images/settings/privacy.svg'),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'Privacy Policy',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: AppColors.white),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.white60,
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(height: 1, color: Colors.white12),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 16),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/images/settings/terms.svg'),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'Terms of Use',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: AppColors.white),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.white60,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.darkGrey,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 16),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/images/settings/share.svg'),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'Share app',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: AppColors.white),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.white60,
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(height: 1, color: Colors.white12),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 16),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/images/settings/rate.svg'),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'Rate the app',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: AppColors.white),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.white60,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                SettingsTile(
                  title: 'About app',
                  iconPath: 'assets/images/settings/about.svg',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
