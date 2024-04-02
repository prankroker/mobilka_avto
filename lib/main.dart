import 'package:flutter/material.dart';
import 'package:mobilka_avto/registration.dart';
import 'package:mobilka_avto/login.dart';
import 'package:mobilka_avto/theme.dart';

void main() => runApp(const MyHome());

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildAppTheme(),
      home: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Оренда авто';// назва в шапці
      return Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Registration()),
                    );
                  },
                  child: const Text("Зареєструватися"),
              ),
              const SizedBox(height: 20),
              TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  child: const Text("Увійти"),
              )
            ],
          ),
        ),
      );
  }

}
