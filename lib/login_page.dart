import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f6f7),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          left: 38,
          right: 38,
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 54,
                bottom: 18,
              ),
              child: SvgPicture.asset(
                "lib/assets/svg/welcome.svg",
                // semanticsLabel: 'Dart Logo',
                width: 100,
                height: 100,
              ),
            ),
            Text(
              "Welcome back!",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 32,
                color: Colors.black.withOpacity(0.8),
              ),
            ),
            Text(
              "Log in to your existant account",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 25,
                bottom: 25,
              ),
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Username",
                  fillColor: Colors.white,
                  hoverColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                filled: true,
                hintText: "Password",
                fillColor: Colors.white,
                hoverColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Icon(Icons.visibility_off_outlined),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 12,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forget Password?",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color(0xFFFF640D),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 52,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFFF640D)),
                    child: Center(
                      child: Text(
                        "LOG IN",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 21,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 25,
                bottom: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Or connect using",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buttonApp(
                  icon: FontAwesomeIcons.google,
                  title: "Google",
                ),
                _buttonApp(
                  icon: FontAwesomeIcons.facebook,
                  title: "Facebook",
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 21,
                top: 22,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Sing Up",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color(0xFFFF9800),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buttonApp({
    required IconData icon,
    required String title,
  }) {
    return Container(
      width: 114,
      height: 36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xFFFF640D),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 9,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 17,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
