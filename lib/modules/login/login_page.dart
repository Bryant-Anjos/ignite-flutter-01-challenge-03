import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:split_it/modules/login/widgets/social_button.dart';
import 'package:split_it/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Container(
                  width: 236,
                  child: Text(
                    "Divida suas contas com seus amigos",
                    style: AppTheme.textStyles.title,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/emoji.png",
                  ),
                  title: Text(
                    "Faça seu login com uma das contas abaixo",
                    style: AppTheme.textStyles.button,
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: SocialButtonWidget(
                  imagePath: "assets/images/google.png",
                  label: "Entrar com Google",
                  onTap: () async {
                    GoogleSignIn _googleSignIn = GoogleSignIn(
                      scopes: ['email'],
                    );
                    try {
                      final response = await _googleSignIn.signIn();
                      print(response);
                    } catch (error) {
                      print(error);
                    }
                  },
                ),
              ),
              SizedBox(
                height: 12,
              ),
              //TODO NEEDS TO DO THE APPLE CONFIGURATION
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 32),
              //   child: SocialButtonWidget(
              //     imagePath: "assets/images/apple.png",
              //     label: "Entrar com Apple",
              //     onTap: () async {
              //       try {
              //         final credential =
              //             await SignInWithApple.getAppleIDCredential(
              //           scopes: [
              //             AppleIDAuthorizationScopes.email,
              //             AppleIDAuthorizationScopes.fullName,
              //           ],
              //         );

              //         print(credential);
              //       } catch (e) {
              //         print(e);
              //       }
              //     },
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
