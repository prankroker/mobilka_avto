import 'package:flutter/material.dart';
import 'package:mobilka_avto/login.dart';
import 'package:mobilka_avto/theme.dart';

class Registration extends StatelessWidget{
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Реєстрація';
    return Theme(
      data: buildAppTheme(),
    child: Scaffold(
      appBar: AppBar(
        title: const Text(appTitle),
        centerTitle: true,
      ),
      body: const InputForms(),
    ),
    );
  }
}

class InputForms extends StatefulWidget {
  const InputForms({super.key});

  @override
  State<InputForms> createState() => _InputForms();
}

class _InputForms extends State<InputForms> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Padding(
          padding: const EdgeInsets.all(16),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                labelText: 'Введіть юзернейм',
              ),
            ),
            const SizedBox(height: 20,),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Введіть пошту',
                ),
              ),
            const SizedBox(height: 20,),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Введіть пароль'
              ),
            ),
            const SizedBox(height: 20,),
            //треба буде зробити неактивною доки не введено інформацію в текстові поля
            TextButton(
              onPressed:(){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login())
                );
              },
              child: const Text("Далі"),
            )
            ],
          ),
        ),
      ),
    );
  }
}