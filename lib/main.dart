import 'package:flutter/material.dart';
import 'package:homekitchen_customer_mobile/app_setting.dart';
import 'package:homekitchen_customer_mobile/respositories//login_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:homekitchen_customer_mobile/respositories/navigator.dart';
import 'package:homekitchen_customer_mobile/generated/l10n.dart';
import 'package:provider/provider.dart';
import 'lang_setting.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Locale hehe = await LangSetting.getLangLocale();
  runApp(ChangeNotifierProvider(
      create: (context) => AppSetting(),
      child: MyApp(langLocale: hehe)
  ));
  // runApp(HomePage());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.langLocale});

  final Locale langLocale;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mom Kitchen',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: true,
      ),
      home: const LoginPage(title: 'Sign In'),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: langLocale,
    );
  }
}
