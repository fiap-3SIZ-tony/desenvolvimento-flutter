import 'package:aula_08_gerenciamento_estado/constants.dart';
import 'package:aula_08_gerenciamento_estado/screen/login.state.dart';
import 'package:aula_08_gerenciamento_estado/snnipets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _loading = false;

  // _changeLoading() => setState(() {
  //   _loading = !_loading;
  // });

  _login() async {
    final controller = context.read<LoginController>();
    controller.toggleLoading();
    // _changeLoading();

    final email = _emailController.text;
    final password = _passwordController.text;

    await delay(2);

    if (!mounted) return;

    if (email.isNotEmpty && password.isNotEmpty) {
      showMessage(context, "Login realizado com sucesso!");
    } else {
      showMessage(context, "Informe todos os dados para o login!");
    }

    // _changeLoading();
    controller.toggleLoading();
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<LoginController>();
    final loading  = controller.loading;

    return Scaffold(
      body: Stack(
        children: [
          Container(decoration: backgroundImageStyle(background)),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height - 100,
              padding: EdgeInsets.all(24),
              decoration: roundedBoxStyle(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Login", style: TextStyle(fontSize: 20)),
                  SizedBox(height: 20),
                  TextField(
                    controller: _emailController,
                    decoration: roundTextField("Informe o e-mail"),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _passwordController,
                    decoration: roundTextField("Informe o password"),
                  ),
                  SizedBox(height: 20),
                  loading
                      ? loadingIndicator()
                      : ElevatedButton(
                        onPressed: () {
                          _login();
                        },
                        child: Text("Entrar"),
                      ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
