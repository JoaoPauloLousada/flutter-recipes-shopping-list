import 'package:recipes_shopping_list/modules/events/domain/meal_interface.dart';

class Event {
  IMeal? _meal;
  DateTime? _dateTime;

  IMeal? get meal {
    return this._meal;
  }

  set meal(IMeal? m) {
    this._meal = m;
  }

  DateTime? get dateTime {
    return this._dateTime;
  }

  set dateTime(DateTime? d) {
    this._dateTime = d;
  }
}
