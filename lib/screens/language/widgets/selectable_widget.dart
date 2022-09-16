import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:turing_zp_demo/cubits/language/language_cubit.dart';
import 'package:turing_zp_demo/di/dependency_injection.dart';
import 'package:turing_zp_demo/models/language_model.dart';
import 'package:turing_zp_demo/utils/language_constants.dart';

class SelectableWidget extends StatelessWidget {
  final LanguageModel languageData;

  const SelectableWidget(
    this.languageData, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final languageCubit = getIt<LanguageCubit>();
    return BlocBuilder<LanguageCubit, LanguageState>(
      bloc: languageCubit,
      builder: (context, state) {
        return InkWell(
          onTap: () async {
            Locale locale = await setLocale(languageData.languageCode);
            languageCubit.setLocale(locale);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                Text(
                  languageData.flag,
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Text(
                    state.locale?.languageCode == languageData.languageCode ? languageData.ownName : '${languageData.name} (${languageData.ownName})',
                    textAlign: TextAlign.start,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                (state.locale?.languageCode == languageData.languageCode)
                    ? const Icon(
                        Icons.check_circle_outline,
                        color: Colors.red,
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        );
      },
    );
  }
}
