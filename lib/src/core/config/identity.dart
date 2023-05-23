import 'package:customer_identity/src/core/contracts/core_theme.dart';
import 'package:customer_identity/src/core/locale/identity_translations.dart';
import 'package:customer_identity/src/core/memory/identity_memory.dart';
import 'package:customer_identity/src/core/themes/dark/dark_theme_v1.dart';
import 'package:customer_identity/src/core/themes/light/light_theme_v1.dart';
import 'package:get/get.dart';

class ID{
  static LightThemeV1 get lightTheme => Get.find<CoreTheme>(tag: 'light-v1') as LightThemeV1;
  static DarkThemeV1 get darkTheme => Get.find<CoreTheme>(tag: 'dark-v1') as DarkThemeV1;
  static IdentityMemory get memory => Get.find<IdentityMemory>();
  static IdentityTranslations get translations => Get.find<IdentityTranslations>();
}