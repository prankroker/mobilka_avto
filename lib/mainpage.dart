import 'package:flutter/material.dart';
import 'package:mobilka_avto/profile.dart';
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
          automaticallyImplyLeading: false,
          title: const Text(appTitle),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.person),
              onPressed:(){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile())
                );
              },
            )
          ],
        ),
        body: ListView(
                children: <Widget> [
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 72,
                      backgroundImage: AssetImage('assets/BMW x5.jpg'),
                  ),
                    const Text("BMW X5"),
                    IconButton(
                        iconSize: 72,
                        icon: const Icon(Icons.arrow_right),
                        onPressed:(){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Description(data: 1))
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
                        backgroundImage: AssetImage('assets/clio.jpg'),
                      ),
                      const Text("Renault Clio"),
                      IconButton(
                        iconSize: 72,
                        icon: const Icon(Icons.arrow_right),
                        onPressed:(){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Description(data: 2))
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
                        backgroundImage: AssetImage('assets/golf.jpg'),
                      ),
                      const Text("VolksWagen Golf"),
                      IconButton(
                        iconSize: 72,
                        icon: const Icon(Icons.arrow_right),
                        onPressed:(){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Description(data: 3))
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
                        backgroundImage: AssetImage('assets/hyundai.jpg'),
                      ),
                      const Text("Hyundai Venue"),
                      IconButton(
                        iconSize: 72,
                        icon: const Icon(Icons.arrow_right),
                        onPressed:(){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Description(data: 4))
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
                        backgroundImage: AssetImage('assets/logan.jpg'),
                      ),
                      const Text("Renault Logan"),
                      IconButton(
                        iconSize: 72,
                        icon: const Icon(Icons.arrow_right),
                        onPressed:(){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Description(data: 5))
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
                        backgroundImage: AssetImage('assets/tucson.jpg'),
                      ),
                      const Text("Hyundai Tucson"),
                      IconButton(
                        iconSize: 72,
                        icon: const Icon(Icons.arrow_right),
                        onPressed:(){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Description(data: 6))
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
          ),
        );
  }
}