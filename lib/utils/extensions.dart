import 'package:flutter/material.dart';

import '../generated/l10n.dart';

extension LocaleExtension on BuildContext {
  S get loc => S.of(this);
}
