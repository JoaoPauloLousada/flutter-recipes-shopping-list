import 'package:flutter/material.dart';

class NewRecipeForm extends StatefulWidget {
  NewRecipeForm({Key? key}) : super(key: key);

  @override
  _NewRecipeFormState createState() => _NewRecipeFormState();
}

class _NewRecipeFormState extends State<NewRecipeForm> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _description;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Nome',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            onSaved: (value) {
              print('name: $value');
              _description = value ?? '';
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Descrição',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            onSaved: (value) {
              print('name: $value');
              _name = value ?? '';
            },
          ),
        ],
      ),
    );
  }
}
