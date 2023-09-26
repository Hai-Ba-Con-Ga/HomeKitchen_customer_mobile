import 'package:bottom_picker/bottom_picker.dart';
import 'package:flutter/material.dart';
import 'package:homekitchen_customer_mobile/app_setting.dart';
import 'package:homekitchen_customer_mobile/main.dart';

import 'package:homekitchen_customer_mobile/generated/l10n.dart';
import '../lang_setting.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ElevatedButton(
              onPressed: () => showLanguage(context),
              child: Row(children: <Widget>[
                Icon(Icons.language),
                SizedBox(width: 10),
                Text(S.of(context).change_language,
                    style: TextStyle(fontSize: 25))
              ])),
          ElevatedButton(
            onPressed: null,
            child: Row(children: <Widget>[
              Icon(Icons.dark_mode),
              SizedBox(width: 10),
              Text(S.of(context).dark_mode, style: TextStyle(fontSize: 25))
            ]),
          ),
        ],
      ),
    );
  }

  void showLanguage(BuildContext context) {
    BottomPicker(
      items: const [
        Text("en", style: TextStyle(fontSize: 30)),
        Text("vi", style: TextStyle(fontSize: 30)),
      ],
      title: "Choose your country",
      titleStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      onSubmit: (index) => changeLanguage(index),
    ).show(context);
  }

  void changeLanguage(int index) {
    setState(() {
      List<String> langs = ['en', 'vi'];
      S.load(Locale(langs.elementAt(index)));
      LangSetting.changeLang(langs.elementAt(index));
    });
  }
}
