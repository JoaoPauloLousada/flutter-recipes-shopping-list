import 'package:flutter/material.dart';
import 'package:recipes_shopping_list/modules/ingredients/domain/ingredient_model.dart';
import 'package:recipes_shopping_list/modules/ingredients/domain/units_enum.dart';

class NewIngredientForm extends StatefulWidget {
  NewIngredientForm({Key? key, required this.onSave}) : super(key: key);
  final Function onSave;

  @override
  _NewIngredientFormState createState() => _NewIngredientFormState();
}

class _NewIngredientFormState extends State<NewIngredientForm> {
  final _formKey = GlobalKey<FormState>();
  IngredientUnit? dropdownValue;
  List<IngredientUnit> dropDownOptions = [
    IngredientUnit.GRAMS,
    IngredientUnit.KILOGRAMS,
    IngredientUnit.LITTERS,
  ];

  String? _name;
  IngredientUnit? _unit;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
              decoration: InputDecoration(
                labelText: 'Ingredient name',
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
              }),
          DropdownButtonFormField(
            decoration: InputDecoration(
              labelText: 'Ingredient unit',
            ),
            isExpanded: true,
            itemHeight: 48.0,
            icon: Icon(Icons.arrow_drop_down_outlined),
            value: dropdownValue ?? null,
            onChanged: (IngredientUnit? value) {
              setState(() {
                dropdownValue = value!;
              });
            },
            onSaved: (IngredientUnit? value) {
              _unit = value!;
            },
            validator: (value) {
              if (value == null) {
                return 'Please select unit';
              }
              return null;
            },
            items: dropDownOptions
                .map<DropdownMenuItem<IngredientUnit>>((IngredientUnit value) {
              return DropdownMenuItem(
                value: value,
                child: Text(getIngredientUnit(value)),
              );
            }).toList(),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                widget.onSave(new Ingredient(_name!, _unit!));
              }
            },
            child: Text('Create ingredient'),
          ),
        ],
      ),
    );
  }
}
