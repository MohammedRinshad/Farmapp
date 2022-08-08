import 'package:farm/screen/login/forgotScreen.dart';
import 'package:farm/validation/validation.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  static const String route = "/otpScreen";
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _otpKey = GlobalKey<FormState>();
  String username = "";
  bool isLoginSuccess = false;
  TextEditingController phoneNoInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _otpKey,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _createImage(),
                _userPhoneField(),
                _sendOtpButton(context),
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

  Widget _sendOtpButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: (isLoginSuccess) ? Colors.blue : Colors.blue, // background
          onPrimary: Colors.white, // foreground
        ),
        onPressed: () {
          if (_otpKey.currentState!.validate()) {
            Navigator.pushNamed(context, ForgotScreen.route);
          }
        },
        child: const Text('Send Otp'),
      ),
    );
  }
}
