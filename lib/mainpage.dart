import 'package:flutter/material.dart';
import 'package:mobilka_avto/theme.dart';

class MainPage extends StatelessWidget{
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Головна сторінка';

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