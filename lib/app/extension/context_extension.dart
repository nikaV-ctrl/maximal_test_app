import 'package:flutter/material.dart';
import 'package:max_app/generated/l10n.dart';

extension ContextTheme on BuildContext {
  TextTheme get textTheme {
    return Theme.of(this).textTheme;
  }

  S get translate => S.of(this);
}
