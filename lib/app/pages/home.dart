import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<FormState> _formKey = GlobalKey<HomeState>();
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Form(
          key: _formKey,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Informe o seu nome",
            ),
            validator: (value) {
              if (value!.isEmpty){
                return "Preencha corretamente!";
              }
            }
          )),
      ),
      
    );
  }
}