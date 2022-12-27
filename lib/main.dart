import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//const primaryColor = Color(0xFF607D8B);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Business Card',
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/avatar.jfif')),
              Text(
                'Micael Muniz',
                style: TextStyle(
                  fontFamily: 'RubikGlitch',
                  fontSize: 37.0,
                  color: Colors.blueGrey[100],
                ),
              ),
              Text(
                'FULLSTACK DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[50],
                ),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.blueGrey[200],
                ),
              ),
              InkWell(
                onTap: () {
                  Clipboard.setData(ClipboardData(text: '+55 75 99270-9130'));
                  final snackBar = SnackBar(
                      content:
                          Text('Número copiado para área de transferência.'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                  child: ListTile(
                    leading: Icon(Icons.phone, color: Colors.blueGrey[900]),
                    title: Text(
                      '+55 75 99270-9130',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Source Sans Pro',
                        color: Colors.blueGrey[900],
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Clipboard.setData(
                      ClipboardData(text: 'contato@micaelmuniz.tech'));
                  final snackBar = SnackBar(
                      content:
                          Text('E-mail copiado para área de transferência.'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                  child: ListTile(
                    leading: Icon(Icons.email, color: Colors.blueGrey[900]),
                    title: Text(
                      'contato@micaelmuniz.tech',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Source Sans Pro',
                        color: Colors.blueGrey[900],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
