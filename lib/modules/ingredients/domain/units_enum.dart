enum IngredientUnit { GRAMS, KILOGRAMS, LITTERS }

Map<IngredientUnit, String> ingredientUnit = {
  IngredientUnit.GRAMS: "g",
  IngredientUnit.KILOGRAMS: "Kg",
  IngredientUnit.LITTERS: "L",
};

String getIngredientUnit(IngredientUnit unit) =>
    ingredientUnit[unit].toString();
