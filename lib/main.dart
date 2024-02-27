import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Pajakey(),
    );
  }
}

class Pajakey extends StatefulWidget {
  @override
  _PajakeyState createState() => _PajakeyState();
}

class _PajakeyState extends State<Pajakey> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Formulaire',
          style: TextStyle(color: const Color.fromARGB(255, 185, 131, 131)),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 100, 129, 154),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 181, 129, 129),
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _emailController, // Ajout du contrôleur
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: _passwordController, // Ajout du contrôleur
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Mot de passe',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      },
                    ),
                    Text('Save'),
                  ],
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    String email = _emailController.text;
                    String password = _passwordController.text;
                    bool rememberMe = _isChecked;

                    // Example: Print the input values
                    print('Email: $email');
                    print('Password: $password');
                    print('Remember me: $rememberMe');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Couleur de fond du bouton
                    padding: EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30), // Padding du bouton
                  ),
                  child: Text(
                    'Connect',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 178, 119, 119)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
