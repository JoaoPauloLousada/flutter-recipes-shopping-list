import 'package:flutter/material.dart';
import 'package:recipes_shopping_list/modules/meal/domain/meal_model.dart';

class NewMealForm extends StatefulWidget {
  NewMealForm({Key? key, required this.onSave}) : super(key: key);
  final Function onSave;

  @override
  _NewMealFormState createState() => _NewMealFormState();
}

class _NewMealFormState extends State<NewMealForm> {
  final _formKey = GlobalKey<FormState>();
  String? _name;

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
              _name = value ?? '';
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                widget.onSave(new Meal(_name!));
              }
            },
            child: Text('Create Meal'),
          ),
        ],
      ),
    );
  }
}
