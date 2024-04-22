import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Home extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Faça seu Login',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Faça login para continuar nosso aplicativo',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          FormLogin(),
          Container(
            padding: EdgeInsets.only(
                left: 20.0, 
                top: 0.0, 
                right: 20.0, 
                bottom: 20.0,
              ),
            child: Text('Esqueceu a senha?',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                //Aqui colocamos a ação do botão, mas, no meu caso, ele não executa nenhuma ação
              },
              child: Text('Entrar',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Borda arredondada
                ),
              ),
            ),
          ),
          Container(

          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Image.asset('assets/facebook.ico'),
                  onPressed: () async {
                    const url = 'https://pt-br.facebook.com/'; // URL externa a ser aberta
                    if (await canLaunch(url)) {
                    await launch(url); // Abrir o link externo
                    } else {
                    throw 'Não foi possível abrir o link $url';
                    }
                  },
                )
              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
}

class FormLogin extends StatefulWidget {
  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "E-Mail",
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.all(16.0),
              ),
              validator: (value){
                if (value!.isEmpty){
                  return "Preencha corretamente!";
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: "********",
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.all(16.0),
              ),
              validator: (value){
                if (value!.isEmpty){
                  return "Preencha corretamente!";
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}