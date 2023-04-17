import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';

import 'package:gestion_achat/Models/client.dart';

class ClientFormPage extends StatefulWidget {
  @override
  _ClientFormPageState createState() => _ClientFormPageState();
}

class _ClientFormPageState extends State<ClientFormPage> {
  final _formKey = GlobalKey<FormState>();
  final _client = Client(nom: "", sexe: "", login: "", password: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Créer un client'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Nom',
                ),
                validator: (value) {
                  if (value == true) {
                    return 'Veuillez entrer un nom';
                  }
                  return null;
                },
                onSaved: (value) {
                  _client.nom = value.toString();
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Sexe',
                ),
                validator: (value) {
                  if (value == true) {
                    return 'Veuillez entrer un sexe';
                  }
                  return null;
                },
                onSaved: (value) {
                  _client.sexe = value.toString();
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Login',
                ),
                validator: (value) {
                  if (value == true) {
                    return 'Veuillez entrer un login';
                  }
                  return null;
                },
                onSaved: (value) {
                  _client.login = value.toString();
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
                validator: (value) {
                  if (value == true) {
                    return 'Veuillez entrer un mot de passe';
                  }
                  return null;
                },
                onSaved: (value) {
                  _client.password = value.toString();
                },
                obscureText: true,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
               child:  ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Enregistrer le client dans la base de données ou dans un fichier
                      // ou faire autre chose avec les données
                    }
                  },
                  child: Text('Créer'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
