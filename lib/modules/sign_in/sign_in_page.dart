import 'package:flutter/material.dart';
import 'package:level_up_03/shared/widgets/social_login/google_button/google_button.dart';
import 'package:level_up_03/shared/widgets/social_login/twitter_button/twitter_button.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Entrar",
                style: TextStyle(
                  fontSize: 36,
                ),
              ),
              const SizedBox(height: 100.0),
              const Padding(
                padding: EdgeInsets.only(
                  left: 24.0,
                  right: 24.0,
                  bottom: 16.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Insira seu e-mail",
                    labelText: "E-mail",
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 24.0,
                  right: 24.0,
                  bottom: 8.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Insira sua senha",
                    labelText: "Senha",
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Entrar"),
                  ),
                ],
              ),
              const SizedBox(height: 64.0),
              const Padding(
                padding: EdgeInsets.only(top: 16.0, bottom: 32),
                child: Text("Não possui uma conta? | Cadastre-se"),
              ),
              Center(
                child: GoogleButton(onTap: () {}),
              ),
              const SizedBox(height: 8),
              Center(
                child: TwitterButton(onTap: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
