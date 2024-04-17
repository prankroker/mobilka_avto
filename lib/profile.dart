import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobilka_avto/global/common/toast.dart';
import 'package:mobilka_avto/login.dart';
import 'package:mobilka_avto/theme.dart';

class Profile extends StatelessWidget{
   Profile({super.key});

  final currentUser = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Профіль';
    return Theme(
      data: buildAppTheme(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            const Icon(Icons.person,size: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(currentUser!.email!),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            GestureDetector(
              onTap: (){
                FirebaseAuth.instance.signOut();
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
                showToast(message: 'Successfully signed out');
              },
              child: Container(
              height: 45, width: 120,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const Center(child: Text("Вийти з аккаунта",style: TextStyle(color: Colors.black))),
            ),
            ),
            ],
            ),
          ],
        ),
      ),
    );
  }
}