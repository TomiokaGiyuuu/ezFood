import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _errorMessage;
  final _nicknameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _signIn(){
    final nickname = _nicknameController.text;
    final password = _passwordController.text;
    if (nickname == 'admin' && password == '123456') {
      _errorMessage = null;
      Navigator.of(context).pushReplacementNamed('/intro_page');
    } else if (nickname.isEmpty || password.isEmpty) {
      _errorMessage = 'Fill the gaps';
    } else {
      _errorMessage = 'Error in nickname or password';
    }
    setState(() {});
  }

  void _toResiterPage(){
    Navigator.of(context).pushReplacementNamed('/sign-up');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff282B30),
        body: _page(),
      );
  }

  Widget _page() {
    final errorMessage = _errorMessage;
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _icon(),
            const SizedBox(height: 50),
            _inputField("Nickname", _nicknameController),
            const SizedBox(height: 20),
            _inputField("Password", _passwordController, isPassword: true),
            if (errorMessage != null) ...[
              const SizedBox(height: 10),
              Text(
                errorMessage,
                style: const TextStyle(color: Colors.red, fontSize: 17)
              ),
            ],
            const SizedBox(height: 20),
            _loginBtn(),
            const SizedBox(height: 20),
            _extraText(),
          ],
        ),
      ),
    );
  }

  Widget _icon() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          shape: BoxShape.circle),
      child: Image.asset('lib/images/profileImg.png'),
    );
  }

  Widget _inputField(String hintText, TextEditingController controller,
      {isPassword = false}) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Colors.white));

    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Color.fromARGB(255, 88, 86, 86)),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
    );
  }

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: _signIn,
      // ignore: sort_child_properties_last
      child: const SizedBox(
          width: 200,
          child: Text(
            "Sign in ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Colors.white,
        onPrimary: Color.fromARGB(255, 15, 16, 17),
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    );
  }

  Widget _extraText() {
    return TextButton(
      onPressed: _toResiterPage,
      child: const Text("Can't access to your account?"),
    );
  }
}