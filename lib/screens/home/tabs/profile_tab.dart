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
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Material(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    Get.context!,
                    MaterialPageRoute(
                      builder: (context) => const LanguageSettingsPage(),
                    ),
                  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                tileColor: Theme.of(context).primaryColor,
                iconColor: Colors.white,
                textColor: Colors.white,
                title: Text(
                  context.loc.settingsLanguagePageAppBarTitle,
                ),
                trailing: const Icon(
                  Icons.chevron_right,
                  size: 30.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
