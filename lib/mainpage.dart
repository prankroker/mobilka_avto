import 'package:flutter/material.dart';
import 'package:mobilka_avto/theme.dart';
import 'package:mobilka_avto/description.dart';

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
        body: SafeArea(
          child: Column(
                children: [
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 72,
                      backgroundImage: AssetImage('assets/auto1.jpeg'),
                  ),
                    const Text("Круте авто"),
                    IconButton(
                        iconSize: 72,
                        icon: const Icon(Icons.arrow_right),
                        onPressed:(){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Description())
                          );
                        },
                    ),
                  ],
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: 72,
                        backgroundImage: AssetImage('assets/auto1.jpeg'),
                      ),
                      const Text("Круте авто"),
                      IconButton(
                        iconSize: 72,
                        icon: const Icon(Icons.arrow_right),
                        onPressed:(){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Description())
                          );
                        },
                      ),
                    ],
                  )
                ],
              ),
          ),
        ),
      );
  }
}