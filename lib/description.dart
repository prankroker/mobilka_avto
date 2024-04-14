import 'package:flutter/material.dart';
import 'package:mobilka_avto/theme.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Description extends StatefulWidget {
  final int data;

  const Description({super.key, required this.data});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {

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
          body: StreamBuilder(
              stream: FirebaseFirestore.instance.collection('Description').snapshots(),
              builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if(snapshot.connectionState == ConnectionState.waiting){
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                // Отримуємо перший документ зі списку документів
                var document = snapshot.data?.docs[widget.data - 1];
                // Отримуємо значення поля 'text' з обраного документа
                var text = document?['Description'];

                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if(widget.data == 1)
                      Image.asset('assets/BMW x5.jpg'),
                    if(widget.data == 2)
                      Image.asset('assets/clio.jpg'),
                    if(widget.data == 3)
                      Image.asset('assets/golf.jpg'),
                    if(widget.data == 4)
                      Image.asset('assets/hyundai.jpg'),
                    if(widget.data == 5)
                      Image.asset('assets/logan.jpg'),
                    if(widget.data == 6)
                      Image.asset('assets/tucson.jpg'),
                    // Текст
                    Text(text),
                  ],
                );
              }
          )
      ),
    );
  }
}