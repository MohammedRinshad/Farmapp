import 'package:farm/screen/all_fields.dart';
import 'package:farm/screen/login/otpScreen.dart';
import 'package:farm/validation/validation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String route = "/LoginScreen";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginKey = GlobalKey<FormState>();
  bool isLoginSuccess = false;
  String username = "";
  String password = "";
  TextEditingController phoneNoInputController = TextEditingController();
  TextEditingController passwordInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Form(
          key: _loginKey,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _createImage(),
                _userPhoneField(),
                _passwordField(),
                _forgotButton(context),
                _loginButton(context),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _createImage() {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/farmapplogo.png"),
            ),
          ),
        ),
      ),
    );
  }

  Widget _userPhoneField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        controller: phoneNoInputController,
        enabled: true,
        onChanged: (value) {
          username = value;
        },
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: 'Phone number',
          contentPadding: const EdgeInsets.all(8.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            borderSide:
                BorderSide(color: (isLoginSuccess) ? Colors.blue : Colors.blue),
          ),
        ),
        validator: (value) {
          return Validate.phoneValidator(value!);
        },
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        controller: passwordInputController,
        enabled: true,
        obscureText: true,
        onChanged: (value) {
          password = value;
        },
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: const EdgeInsets.all(8.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            borderSide:
                BorderSide(color: (isLoginSuccess) ? Colors.blue : Colors.blue),
          ),
        ),
        validator: (value) {
          return Validate.passwordValidator(value!.trim());
        },
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: (isLoginSuccess) ? Colors.blue : Colors.blue, // background
          onPrimary: Colors.white, // foreground
        ),
        onPressed: () {
          if (_loginKey.currentState!.validate()) {
            Navigator.pushNamed(context, FarmRadioButton.route);
          }
        },
        child: const Text('Login'),
      ),
    );
  }

  Widget _forgotButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Align(
        alignment: Alignment.topRight,
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, OtpScreen.route);
            },
            child: const Text(
              "Forgot Password",
              style: TextStyle(color: Colors.black),
            )),
      ),
    );
  }
}
