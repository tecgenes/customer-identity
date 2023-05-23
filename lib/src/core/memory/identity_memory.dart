import 'package:customer_identity/src/core/enums/memory_keys.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IdentityMemory{

  late SharedPreferences _sharedPreferences;

  Future<IdentityMemory> init() async{
    _sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  //// Theme Mode Store //////////////////////////////////////////

  saveThemeMode(bool isDarkMode) async{
    await _sharedPreferences.setBool(MemoryKeys.darkMode.name, isDarkMode);
  }

  isSavedDarkMode(){
    return _sharedPreferences.getBool(MemoryKeys.darkMode.name) ?? false;
  }

  ThemeMode getThemeMode(){
    return isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }

  void changeThemeMode(){
    Get.changeThemeMode(
        isSavedDarkMode()
            ? ThemeMode.light
            : ThemeMode.dark
    );
    saveThemeMode(! isSavedDarkMode());
  }


  //// Language Store ///////////////////////////////////////////
  isEnglishLanguage(){
    return _sharedPreferences.getBool(MemoryKeys.english.name) ?? false;
  }

  saveLanguage(bool isEnglish) async{
    await _sharedPreferences.setBool(MemoryKeys.english.name, isEnglish);
  }

  Locale getLanguage(){
    return isEnglishLanguage() ?  const Locale('en') :  const Locale('ar');
  }

  void changeLanguage(){
    Get.updateLocale(isEnglishLanguage() ? const Locale('ar') : const Locale('en'));
    saveLanguage(! isEnglishLanguage());
    Get.reload();
  }

}