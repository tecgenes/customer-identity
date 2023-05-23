import 'package:customer_identity/src/core/contracts/core_theme.dart';
import 'package:flutter/material.dart';

class DarkThemeV1 extends CoreTheme{
  @override
  String get fileName => 'dark/v1';

  @override
  ThemeData get themeData => ThemeData.dark();
}