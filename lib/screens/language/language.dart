import 'package:turing_zp_demo/generated/l10n.dart';

class Language {
  final int id;
  final String flag;
  final String ownName;
  final String name;
  final String languageCode;

  Language(this.id, this.flag, this.ownName, this.name, this.languageCode);
  static List<Language> languageList(context) {
    return <Language>[
      Language(1, "🇺🇸", "English", S.of(context).languageSettingsNameEnglish,
          "en"),
      Language(
          2, "🇮🇳", "Hindi", S.of(context).languageSettingsNameHindi, "hi"),
    ];
  }
}
