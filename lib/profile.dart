import 'package:flutter/material.dart';
import 'package:mobilka_avto/theme.dart';

class Profile extends StatelessWidget{
  const Profile({super.key});

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
      ),
    );
  }
}