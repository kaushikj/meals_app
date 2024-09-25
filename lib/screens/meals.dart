import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    required this.title,
    required this.meals,
    required this.onToggleFavorite
  });

  final String title;
  final List<Meal> meals;
  final void Function(Meal meal) onToggleFavorite;
  
  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: meals.length, // Specify the number of items in the list
      itemBuilder: (ctx, index) => MealItem(
        meal: meals[index],
        onToggleFavorite: onToggleFavorite,
      ),
    );

    if (meals.isEmpty) {
      content = Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Uh oh...nothing here!',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
          const SizedBox(height: 16),
          Text(
            'Try Selecting a different category!',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ],
      ));
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: content);
  }
}
