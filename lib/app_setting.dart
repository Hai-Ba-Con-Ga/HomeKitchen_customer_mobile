import 'package:flutter/material.dart';
import 'package:homekitchen_customer_mobile/lang_setting.dart';

class AppSetting extends ChangeNotifier {
  int fontSize = 16;

  Locale m_locale = LangSetting.getLangLocale() as Locale;

  void setFontSize(int size) {
    fontSize = size;
    notifyListeners(); // Thông báo rằng dữ liệu đã thay đổi
  }
}