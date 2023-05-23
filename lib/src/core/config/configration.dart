import 'package:customer_identity/src/core/contracts/core_theme.dart';
import 'package:customer_identity/src/core/locale/identity_translations.dart';
import 'package:customer_identity/src/core/memory/identity_memory.dart';
import 'package:customer_identity/src/core/themes/dark/dark_theme_v1.dart';
import 'package:customer_identity/src/core/themes/light/light_theme_v1.dart';
import 'package:get/get.dart';
class IdentityConfigration{
  static init() async{
    await Get.putAsync<IdentityMemory>(() => IdentityMemory().init());
    await Get.putAsync<CoreTheme>(() => LightThemeV1().init(), tag: 'light-v1');
    await Get.putAsync<CoreTheme>(() => DarkThemeV1().init(), tag: 'dark-v1');
    await Get.putAsync<IdentityTranslations>(() => IdentityTranslations().init(), permanent: true);
  }
}