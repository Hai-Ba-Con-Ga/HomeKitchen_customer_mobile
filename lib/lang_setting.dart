import 'dart:ui';
import 'package:shared_preferences/shared_preferences.dart';

class LangSetting {
  static Future<Locale> getLangLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final savedLanguage = prefs.getString('language');

    Locale locale;
    if (savedLanguage != null) {
      locale = Locale(savedLanguage);
    } else {
      locale = Locale('en');
      changeLang('en');
    }
    return locale;
  }

  static void changeLang(String langSelected) async {
    final prefs = await SharedPreferences.getInstance();
    final savedLanguage = prefs.getString('language');

    Locale locale;
    List<String> listLang = ['en', 'vi'];
    if (savedLanguage == null) {
      prefs.setString('language', listLang.elementAt(0));
      return;
    }
    int l_IndexLang = listLang.indexOf(langSelected);
    if (l_IndexLang != -1) {
      prefs.setString('language', listLang.elementAt(l_IndexLang));
    }
  }
}