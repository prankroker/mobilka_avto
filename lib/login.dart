import 'package:flutter/material.dart';
import 'package:mobilka_avto/mainpage.dart';
import 'package:mobilka_avto/theme.dart';

class Login extends StatelessWidget{
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Логін';

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

class InputForms extends StatefulWidget{
  const InputForms({super.key});

  @override
  State<InputForms> createState() => _InputForms();
}

class _InputForms extends State<InputForms>{
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: 'Введіть юзернейм або пошту',
                ),
              ),
              const SizedBox(height: 20,),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Введіть пароль',
                ),
              ),
              const SizedBox(height: 20,),
              //треба зробити неактивною доки не введено інформацію в текстові поля
              TextButton(
                  onPressed:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MainPage())
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