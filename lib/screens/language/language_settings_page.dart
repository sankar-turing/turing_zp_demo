import 'package:flutter/material.dart';
import 'package:turing_zp_demo/screens/language/language.dart';
import 'package:turing_zp_demo/utils/language_constants.dart';

import '../../../generated/l10n.dart';
import '../../../main.dart';

class LanguageSettingsPage extends StatefulWidget {
  const LanguageSettingsPage({Key? key}) : super(key: key);

  @override
  State createState() => _LanguageSettingsPageState();
}

class _LanguageSettingsPageState extends State<LanguageSettingsPage> {
  final TextEditingController _textController = TextEditingController();
  List newLanguages = [];
  String inputValue = "";

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      newLanguages = List.from(Language.languageList(context));
    });
    super.initState();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  onItemChanged(String value) {
    setState(() {});
    inputValue = value;
    newLanguages = Language.languageList(context)
        .where((language) =>
            language.name.toLowerCase().contains(value.toLowerCase()))
        .toList();

    if (value == '') {
      newLanguages.clear();
    }

    return newLanguages;
  }

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          SafeArea(
            top: false,
            child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text(
                  S.of(context).settingsLanguagePageAppBarTitle,
                ),
                leading: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(
                    Icons.chevron_left_outlined,
                  ),
                ),
              ),
              body: GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  setState(() {
                    inputValue = "";
                    _textController.clear();
                    newLanguages.clear();
                  });
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(),
                      itemBuilder: (context, index) {
                        return SelectableWidget(
                            SelectableModel(
                              inputValue != ""
                                  ? newLanguages[index]
                                  : Language.languageList(context)[index],
                            ), () async {
                          loading = true;
                          setState(() {
                            inputValue = "";
                            loading = false;
                          });
                        });
                      },
                      itemCount: inputValue != ""
                          ? newLanguages.length
                          : Language.languageList(context).length,
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (loading)
            const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}

class SelectableWidget extends StatefulWidget {
  final SelectableModel viewModel;
  final Function onTap;

  const SelectableWidget(this.viewModel, this.onTap, {Key? key})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SelectableWidgetState();
  }
}

class SelectableWidgetState extends State<SelectableWidget> {
  void _changeLanguage(String languageCode) async {
    Locale locale = await setLocale(languageCode);
    MyApp.setLocale(context, locale);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizedBox sizedBox;
    sizedBox = SizedBox(
      height: 30,
      child: Row(
        children: [
          Text(
            widget.viewModel.language.flag,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              Localizations.localeOf(context).languageCode ==
                      widget.viewModel.language.languageCode
                  ? widget.viewModel.language.ownName
                  : '${widget.viewModel.language.name} (${widget.viewModel.language.ownName})',
              textAlign: TextAlign.start,
              style: const TextStyle(fontSize: 14),
            ),
          ),
          (Localizations.localeOf(context).languageCode ==
                  widget.viewModel.language.languageCode)
              ? const Icon(
                  Icons.check_circle_outline,
                  color: Colors.red,
                )
              : const SizedBox(),
        ],
      ),
    );

    return GestureDetector(
      onTap: () async {
        _changeLanguage(widget.viewModel.language.languageCode);
        widget.onTap();
        setState(() {});
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1.0),
        child: sizedBox,
      ),
    );
  }
}

class SelectableModel {
  Language language;
  bool isSelected;

  SelectableModel(this.language, {this.isSelected = false});
}
