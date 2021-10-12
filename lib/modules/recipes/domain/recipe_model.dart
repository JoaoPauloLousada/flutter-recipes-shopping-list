import 'package:recipes_shopping_list/modules/interfaces/ingredient_interface.dart';

class Recipe {
  Recipe(this._name, this._description, this._ingredients);

  String _name = '';
  String _description = '';
  List<IIgredient> _ingredients = [];

  String get name {
    return this._name;
  }

  set name(String n) {
    this._name = n;
  }

  String get description {
    return this._description;
  }

  set description(String d) {
    this._description = d;
  }

  List<IIgredient> get ingredients {
    return this._ingredients;
  }

  set ingredients(List<IIgredient> i) {
    this._ingredients = i;
  }
}
