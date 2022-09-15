import 'package:flutter/material.dart';
import 'package:turing_zp_demo/models/language_model.dart';
import 'package:turing_zp_demo/screens/language/widgets/selectable_widget.dart';
import 'package:turing_zp_demo/utils/extensions.dart';

class LanguageSettingsPage extends StatelessWidget {
  const LanguageSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List supportedLanguages = List.from(LanguageModel.languageList());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          context.loc.settingsLanguagePageAppBarTitle,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: ListView.separated(
            itemCount: supportedLanguages.length,
            itemBuilder: (context, index) {
              return SelectableWidget(
                supportedLanguages[index],
              );
            },
            separatorBuilder: (context, index) => const Divider(),
          ),
        ),
      ),
    );
  }
}
