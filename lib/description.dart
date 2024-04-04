import 'package:flutter/material.dart';
import 'package:mobilka_avto/theme.dart';

class Description extends StatelessWidget{
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Опис';

    return Theme(
      data: buildAppTheme(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          centerTitle: true,
        ),
        body: const Text("Опис"),
      ),
    );
  }

}