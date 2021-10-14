import 'package:flutter/material.dart';
import 'package:recipes_shopping_list/core/widgets/layouts/default.dart';
import 'package:recipes_shopping_list/modules/events/domain/event_model.dart';
import 'package:recipes_shopping_list/modules/events/domain/mock_events.dart';
import 'package:recipes_shopping_list/modules/recipes/domain/mock_recipes.dart';
import 'package:recipes_shopping_list/modules/recipes/domain/recipe_model.dart';

class EventsTimelineScreen extends StatefulWidget {
  EventsTimelineScreen({Key? key}) : super(key: key);

  @override
  _EventsTimelineScreenState createState() => _EventsTimelineScreenState();
}

class _EventsTimelineScreenState extends State<EventsTimelineScreen> {
  List<Event> events = mockEventsList;

  @override
  Widget build(BuildContext context) {
    return LayoutDefault(
      body: Center(
        child: ListView.builder(
          itemCount: events.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 12.0),
              child: EventCard(
                event: events[index],
              ),
            );
          },
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  EventCard({Key? key, required this.event}) : super(key: key);
  final Event event;
  // final DateTime date = DateTime.now();
  // final List<Recipe> recipes = mockRecipeList;

  String getDate(DateTime d) {
    return '${d.day}/${d.month}/${d.year} ${d.hour}:${d.minute}';
  }

  String getRecipesNames(List<Recipe> recipes) {
    return recipes.map((recipe) => recipe.name).join(', ').toString() + '.';
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: event.dateTime != null
                ? Text('${getDate(event.dateTime!)} - ${event.meal!.name}')
                : Text(''),
            subtitle: event.recipes != null
                ? Text('${getRecipesNames(event.recipes!)}')
                : Text(''),
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
          ),
        ],
      ),
    );
  }
}
