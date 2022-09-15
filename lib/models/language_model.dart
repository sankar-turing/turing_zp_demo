import 'package:get/get.dart';
import 'package:turing_zp_demo/utils/extensions.dart';

class LanguageModel {
  final int id;
  final String flag;
  final String ownName;
  final String name;
  final String languageCode;
  final bool isSelected;

  LanguageModel(
    this.id,
    this.flag,
    this.ownName,
    this.name,
    this.languageCode, {
    this.isSelected = false,
  });

  static List<LanguageModel> languageList() {
    return <LanguageModel>[
      LanguageModel(
        1,
        "🇺🇸",
        "English",
        Get.context?.loc.languageSettingsNameEnglish ?? '',
        "en",
      ),
      LanguageModel(
        2,
        "🇮🇳",
        "Hindi",
        Get.context?.loc.languageSettingsNameHindi ?? '',
        "hi",
      ),
    ];
  }
}
