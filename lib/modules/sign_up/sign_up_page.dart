import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final maskFormatter = MaskTextInputFormatter(
    mask: '(##) #####-####',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Builder(
          builder: (context) => Center(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Cadastre-se",
                      style: TextStyle(
                        fontSize: 36,
                      ),
                    ),
                    const SizedBox(height: 100.0),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 24.0,
                        right: 24.0,
                        bottom: 16.0,
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Escreva seu nome",
                          labelText: "Nome",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 3) {
                            return "Preencha com um nome válido";
                          }
                        },
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 24.0,
                        right: 24.0,
                        bottom: 16.0,
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Digite seu telefone",
                          labelText: "Telefone",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 11) {
                            return "Preencha com um telefone válido";
                          }
                        },
                        keyboardType: TextInputType.phone,
                        inputFormatters: [maskFormatter],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 24.0,
                        right: 24.0,
                        bottom: 16.0,
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Insira seu e-mail",
                          labelText: "E-mail",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 5) {
                            return "Preencha com um e-mail válido";
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 24.0,
                        right: 24.0,
                        bottom: 8.0,
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Insira sua senha",
                          labelText: "Senha",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 5) {
                            return "Digite uma senha válida";
                          }
                        },
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (!_formKey.currentState!.validate()) {
                              return;
                            }
                          },
                          child: const Text("Cadastre-se"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 64.0),
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0, bottom: 32),
                      child: Text("Já possui uma conta? | Entrar"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
