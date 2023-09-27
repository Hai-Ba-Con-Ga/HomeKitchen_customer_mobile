import 'package:flutter/material.dart';
import 'package:homekitchen_customer_mobile/domain/auth/authentication.dart';
import 'package:homekitchen_customer_mobile/blocs/login_bloc.dart';
import 'package:homekitchen_customer_mobile/presentation/login_page.dart';
import 'package:homekitchen_customer_mobile/presentation/navigator.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _showPassword = false;
  bool _showRePassword = false;
  AuthBloc _loginBloc = new AuthBloc();
  TextEditingController _usernameController = TextEditingController(text: "nmhung");
  TextEditingController _passwordController = TextEditingController(text: "nmhung");
  TextEditingController _rePasswordController = TextEditingController(text: "nmhung");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => FocusScope.of(context).requestFocus(
              FocusNode(),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                /*logo*/
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1.0,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    child: FlutterLogo(),
                  ),
                ),
                /*app name*/
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "MomKitchen",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent,
                      fontSize: 30,
                    ),
                  ),
                ),
                /*username input*/
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    50,
                    10,
                    50,
                    10,
                  ),
                  child: StreamBuilder(
                    stream: _loginBloc.userStream,
                    builder: (context, snapshot) => TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        errorText: snapshot.hasError ? snapshot.error.toString() : null,
                        labelText: "Tên đăng nhập",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                /*password input*/
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    50,
                    10,
                    50,
                    10,
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      StreamBuilder(
                        stream: _loginBloc.passStream,
                        builder: (conterxt, snapshot) => TextField(
                          obscureText: !_showPassword,
                          controller: _passwordController,
                          decoration: InputDecoration(
                            errorText: snapshot.hasError ? snapshot.error.toString() : null,
                            labelText: "Password",
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: onToggleShowPassword,
                        child: Text(
                          !_showPassword ? "Show" : "Hide",
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                /*password input*/
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    50,
                    10,
                    50,
                    10,
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      StreamBuilder(
                        stream: _loginBloc.rePassStream,
                        builder: (context, snapshot) => TextField(
                          obscureText: !_showRePassword,
                          controller: _rePasswordController,
                          decoration: InputDecoration(
                            errorText: snapshot.hasError ? snapshot.error.toString() : null,
                            labelText: "Re-enter Password",
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: onToggleShowRePassword,
                        child: Text(
                          !_showRePassword ? "Show" : "Hide",
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                /*sign in button*/
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    50,
                    10,
                    50,
                    10,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: onSignUpClick,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                /*other method login*/
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Already have an account? Login"),
                      Text("Forgot password?"),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text("Or"),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    50,
                    2,
                    50,
                    2,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                      ),
                      child: Text(
                        "Google",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    50,
                    2,
                    50,
                    2,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                      ),
                      child: Text(
                        "Facebook",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onSignUpClick() {
    /*check input valid*/
    if (_passwordController.text == _rePasswordController.text) {
      registerUser("email123@gmail.com", "123456");
      if (_loginBloc.isValidInfo(_usernameController.text, _passwordController.text)) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FooterBar(),
          ),
        );
      }
    }
  }

  void onToggleShowPassword() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  void onToggleShowRePassword() {
    setState(() {
      _showRePassword = !_showRePassword;
    });
  }
}
