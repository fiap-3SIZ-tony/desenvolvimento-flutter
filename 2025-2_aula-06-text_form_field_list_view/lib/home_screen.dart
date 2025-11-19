import 'package:aula_10_09_list_view/explorer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String title;

  const HomeScreen({super.key, required this.title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _nameController;
  late TextEditingController _ageController;
  final List<Explorer> explores = [];
  final GlobalKey _formKey = GlobalKey();

  @override
  void initState() {
    _nameController = TextEditingController();
    _ageController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  void save() {
    final name = _nameController.text;
    final age = _ageController.text;
    final explorer = Explorer(name: name, age: age);
    setState(() {
      explores.add(explorer);
    });
    clear();
  }

  void clear() {
    _nameController.clear();
    _ageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Formulário"),
                  SizedBox(height: 20),
                  Form(
                    child: Column(
                      key: _formKey,
                      children: [
                        TextFormField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            label: Text("Informe o nome do explorador"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: _ageController,
                          decoration: InputDecoration(
                            label: Text("Informe a idade do explorador"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            save();
                          },
                          child: Text("Salvar"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.yellow,
              child: Column(
                children: [
                  Text("Exploradores"),
                  Expanded(
                    child: ListView.builder(
                      itemCount: explores.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            title: Text(explores[index].presenterName()),
                            subtitle: Text(explores[index].presenterAge()));
                      },
                    ),
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
