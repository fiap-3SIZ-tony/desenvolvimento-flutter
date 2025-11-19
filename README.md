# Desenvolvimento Flutter 📱

Este repositório contém projetos desenvolvidos durante o curso de Flutter, explorando diferentes conceitos e técnicas de desenvolvimento mobile.

## 📚 Projetos

### 1. Aula 01 - Revisão Provider
**Contador com Gerenciamento de Estado**

<div align="center">
  <img src="docs/images/app1-counter.png.svg" alt="App Contador" width="300"/>
</div>

Aplicativo simples que demonstra o uso do Provider para gerenciamento de estado em Flutter.

**Conceitos abordados:**
- `ChangeNotifier`
- `Provider` e `context.watch`
- Incremento e decremento de valores
- Arquitetura MVVM (Model-View-ViewModel)

**Estrutura:**
```
lib/
├── main.dart
├── presentation/
│   ├── home.screen.dart
│   └── home.viewmodel.dart
```

---

### 2. Aula 06 - Exploradores do Futuro
**Formulário com TextFormField e ListView**

<div align="center">
  <img src="docs/images/app2-explorers.png.svg" alt="App Exploradores" width="600"/>
</div>

Aplicativo que cadastra exploradores através de um formulário e exibe a lista em tempo real.

**Conceitos abordados:**
- `TextEditingController`
- `ListView.builder`
- `StatefulWidget` e gerenciamento de estado local
- Layout responsivo com `Row` e `Expanded`
- Formulários com validação

**Estrutura:**
```
lib/
├── main.dart
├── explorer.dart (Model)
└── home_screen.dart
```

---

### 3. Aula 08 - Login com Provider
**Gerenciamento de Estado em Tela de Login**

<div align="center">
  <img src="docs/images/app3-login.png.svg" alt="App Login" width="300"/>
</div>

Tela de login com gerenciamento de estado de loading e validação de campos.

**Conceitos abordados:**
- Provider para controle de loading
- `context.read` e `context.watch`
- Validação de formulários
- Feedback visual (SnackBar)
- Delays assíncronos
- BoxDecoration com imagens de fundo

**Estrutura:**
```
lib/
├── main.dart
├── constants.dart
├── snnipets.dart (Helpers)
└── screen/
    ├── home.screen.dart
    └── login.state.dart
```

---

### 4. Aula 12 - Daily Tasks
**Persistência de Dados com SQLite**

<div align="center">
  <img src="docs/images/app4-tasks.png.svg" alt="App Tasks" width="300"/>
</div>

Aplicativo de lista de tarefas com persistência em banco de dados local usando SQLite.

**Conceitos abordados:**
- SQLite com package `sqflite`
- CRUD completo (Create, Read, Update, Delete)
- Provider com `MultiProvider`
- Service layer para acesso ao banco
- ViewModel para lógica de negócios
- Modal Bottom Sheet

**Estrutura:**
```
lib/
├── main.dart
├── constants.dart
├── task.dart (Model)
├── task.screen.dart
├── task.view_model.dart
└── task_database.service.dart
```

**Operações do banco:**
- Criação automática do banco
- Insert, Update, Delete de tarefas
- Listagem com mapeamento de objetos

---

## 🛠️ Tecnologias Utilizadas

- **Flutter SDK** - Framework de desenvolvimento
- **Provider** - Gerenciamento de estado
- **SQLite (sqflite)** - Banco de dados local
- **Path** - Gerenciamento de caminhos de arquivos

## 📦 Packages Principais

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0
  sqflite: ^2.0.0
  path: ^1.8.0
```

## 🚀 Como Executar

1. Clone o repositório:
```bash
git clone https://github.com/seu-usuario/desenvolvimento-flutter.git
```

2. Entre na pasta do projeto desejado:
```bash
cd aula-XX-nome-do-projeto
```

3. Instale as dependências:
```bash
flutter pub get
```

4. Execute o aplicativo:
```bash
flutter run
```

## 📱 Requisitos

- Flutter SDK 3.0 ou superior
- Dart 2.19 ou superior
- Android Studio / VS Code com extensões Flutter
- Emulador Android/iOS ou dispositivo físico

## 📖 Padrões e Boas Práticas

- **MVVM Architecture** - Separação entre View, ViewModel e Model
- **Service Layer** - Camada de serviços para acesso a dados
- **Provider Pattern** - Gerenciamento de estado reativo
- **Clean Code** - Código limpo e organizado
- **Responsividade** - Layouts que se adaptam a diferentes tamanhos de tela

## 🎯 Próximos Passos

- [ ] Implementar navegação entre telas
- [ ] Adicionar testes unitários
- [ ] Integração com APIs REST
- [ ] Implementar autenticação
- [ ] Adicionar animações

## 👨‍💻 Autor

Desenvolvido durante o curso de Desenvolvimento Flutter

## 📄 Licença

Este projeto é de código aberto para fins educacionais.

---

**Desenvolvido com 💜 em Flutter**
