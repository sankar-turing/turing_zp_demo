import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turing_zp_demo/screens/language/language_settings_page.dart';
import 'package:turing_zp_demo/utils/extensions.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.loc.profile,
              ),
              const SizedBox(height: 10.0),
              InkWell(
                onTap: () {
                  Navigator.push(
                    Get.context!,
                    MaterialPageRoute(
                      builder: (context) => const LanguageSettingsPage(),
                    ),
                  );
                },
                child: Text(
                  context.loc.settingsLanguagePageAppBarTitle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
