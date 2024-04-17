import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobilka_avto/registration.dart';
import 'package:mobilka_avto/login.dart';
import 'package:mobilka_avto/theme.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb) {
    await Firebase.initializeApp(options: const FirebaseOptions(apiKey: "AIzaSyAk0JLvnIMKyFGtCKh0jHhA8wa9xvEyuSw", appId: "1:347078480049:web:7cc68b1ec0e19b231a5290", messagingSenderId: "347078480049", projectId: "mobilka-avto"));
  }
  else{
    await Firebase.initializeApp();
  }
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          automaticallyImplyLeading: false,
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
