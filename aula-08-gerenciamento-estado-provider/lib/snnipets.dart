import 'package:flutter/material.dart';

// Cria uma InputDecoration com bordas arredondadas para campos de texto
InputDecoration roundTextField(String label) => InputDecoration(
  labelText: label,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12)),
  ),
);

// Cria um BoxDecoration com fundo branco semitransparente, bordas arredondadas e sombra
BoxDecoration roundedBoxStyle() => BoxDecoration(
  color: Colors.white.withOpacity(0.6),
  borderRadius: BorderRadius.circular(30),
  border: Border.all(
    color: Colors.grey.shade300,
    width: 1.5,
  ),
  boxShadow: [
    BoxShadow(
      color: Colors.black.withOpacity(0.1),
      blurRadius: 8,
      offset: Offset(0, 4),
    ),
  ],
);

// Cria um BoxDecoration com imagem de fundo ajustada ao tamanho do container
BoxDecoration backgroundImageStyle(String image) => BoxDecoration(
  image: DecorationImage(
    image: AssetImage(image),
    fit: BoxFit.cover,
  ),
);

// Retorna um indicador de carregamento circular centralizado
Widget loadingIndicator() => Center(
  child: CircularProgressIndicator(
    strokeWidth: 3,
    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
  ),
);

// Aguarda o tempo especificado (em segundos) antes de continuar
Future<void> delay(int seconds) async {
  await Future.delayed(Duration(seconds: seconds));
}

// Exibe uma mensagem temporária na parte inferior da tela
void showMessage(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: Duration(seconds: 2),
    ),
  );
}

// Navega dinamicamente para a tela informada, substituindo a tela atual
void goRoute(BuildContext context, Widget destination) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => destination),
  );
}