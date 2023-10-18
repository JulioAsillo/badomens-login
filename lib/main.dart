import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('BAD OMENS'),
        actions: [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.purple,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage("lib/assets/badomen.jpeg"),
            fit: BoxFit.cover,
            color: Colors.black45,
            colorBlendMode: BlendMode.colorDodge,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: 120.00,
              ),
              Form(
                  child: Theme(
                    data: ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.blue,
                      inputDecorationTheme: InputDecorationTheme(
                        labelStyle: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 20.00
                        )
                      )
                    ),
                    child: Container(
                      padding: EdgeInsets.all(25.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Enter email: "
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Enter password: "

                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                        ],
                      ),
                    ),
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}


