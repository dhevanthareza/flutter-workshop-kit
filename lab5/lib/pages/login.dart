import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  InputDecoration textFieldDecoration(String label) {
    return InputDecoration(
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        borderSide: BorderSide(
          color: Color(0xFF141414),
          width: 2.0,
        ),
      ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        borderSide: BorderSide(
          color: Color(0xFF141414),
          width: 2.0,
        ),
      ),
      labelText: label,
      labelStyle: const TextStyle(
        color: Color(0xFF141414),
      ),
    );
  }

  void handleLoginButtonClick() {}

  void handleSignupButtonClick() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 150,
              ),
              const Text(
                "Halo,\nSilahkan Masuk",
                style: TextStyle(
                  color: Color(0xFF141414),
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              TextField(
                cursorColor: const Color(0xFF141414),
                decoration: textFieldDecoration('Email'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                cursorColor: const Color(0xFF141414),
                decoration: textFieldDecoration('Password'),
              ),
              const SizedBox(
                height: 35,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF141414),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Radius border (10.0)
                    ),
                  ),
                  onPressed: () {
                    handleLoginButtonClick();
                  },
                  child: const Text('Login'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: "Belum memiliki akun?",
                          style: TextStyle(
                            color: Color(0xFF141414),
                          ),
                        ),
                        TextSpan(
                          text: " Daftar",
                          style: const TextStyle(
                            color: Color(0xFF141414),
                            fontWeight: FontWeight.w500,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = handleSignupButtonClick,
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
