// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _primeiroNumeroController = TextEditingController();
  final TextEditingController _segundoNumeroController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title:  Center(
          child: Text(
            'Conversor de Moedas',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body:  Padding(
        padding: EdgeInsets.all(16,),
        child: Column(
          children: [
            TextField(
              controller: _primeiroNumeroController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _segundoNumeroController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      )
    );
  }
}
