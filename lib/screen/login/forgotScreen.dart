import 'package:farm/screen/login/login_screen.dart';
import 'package:farm/validation/validation.dart';
import 'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  static const String route = "/ForgotScreen";
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  final _forgotKey = GlobalKey<FormState>();
  bool isLoginSuccess = false;
  TextEditingController phoneNoInputController = TextEditingController();
  TextEditingController otpInputController = TextEditingController();
  TextEditingController passwordInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: _forgotKey,
          child: SafeArea(
            child: Column(
              children: [
                _createImage(),
                _userPhoneField(),
                _otpField(),
                _passwordField(),
                _resetPasswordButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _createImage() {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
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
        onChanged: (value) {},
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

  Widget _otpField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        controller: passwordInputController,
        enabled: true,
        onChanged: (value) {},
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'otp',
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
          return Validate.otpValidator(value!);
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
        onChanged: (value) {},
        keyboardType: TextInputType.text,
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
          return Validate.passwordValidator(value!);
        },
      ),
    );
  }

  Widget _resetPasswordButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: (isLoginSuccess) ? Colors.blue : Colors.blue, // background
          onPrimary: Colors.white, // foreground
        ),
        onPressed: () {
          if (_forgotKey.currentState!.validate()) {
            Navigator.pushNamed(context, LoginScreen.route);
          }
        },
        child: const Text('Reset Password'),
      ),
    );
  }
}
