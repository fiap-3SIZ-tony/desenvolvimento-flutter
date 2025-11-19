import 'package:aula_08_gerenciamento_estado/screen/login.state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/home.screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => LoginController(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
        home: const LoginScreen(),
      ),
    ),
  );
}
