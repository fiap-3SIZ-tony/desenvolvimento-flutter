import 'package:aula_0608_revisao_conteudo/presentation/home.viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final viewModel = context.watch<HomeViewModel>();

    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                viewModel.decrement();
              },
              child: Text("-"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text("${viewModel.count}"),
            ),
            ElevatedButton(
              onPressed: () {
                viewModel.increment();
              },
              child: Text("+"),
            ),
          ],
        ),
      ),
    );
  }
}
