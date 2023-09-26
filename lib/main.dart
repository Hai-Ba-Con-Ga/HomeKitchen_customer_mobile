import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homekitchen_customer_mobile/presentation/login_page.dart';
import 'package:homekitchen_customer_mobile/presentation/navigator.dart';
import 'package:homekitchen_customer_mobile/utils/theme.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(MyApp());
  // runApp(HomePage());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mom Kitchen',
      theme: mainTheme,
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
