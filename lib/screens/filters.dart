import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/providers/filters_provider.dart';


class FiltersScreen extends ConsumerWidget {

  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filtersStatus = ref.watch(filtersProvider);
    return Scaffold(
      appBar: AppBar(title: Text("Your filters")),
      body: Column(
          children: [
            SwitchListTile(
              value: filtersStatus[Filters.glutenFree]!,
              onChanged: (isChecked) {
                ref.watch(filtersProvider.notifier).setFilter(Filters.glutenFree, isChecked);
              },
              title: Text(
                "Gluten-free",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              subtitle: Text(
                "Only includes gluten-free meals.",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface
                ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: EdgeInsets.only(left: 34, right: 28),
            ),
            SwitchListTile(
              value: filtersStatus[Filters.lactoseFree]!,
              onChanged: (isChecked) {
                ref.watch(filtersProvider.notifier).setFilter(Filters.lactoseFree, isChecked);
              },
              title: Text(
                "Lactose-free",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              subtitle: Text(
                "Only includes lactose-free meals.",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface
                ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: EdgeInsets.only(left: 34, right: 28),
            ),
            SwitchListTile(
              value: filtersStatus[Filters.vegeterian]!,
              onChanged: (isChecked) {
                ref.watch(filtersProvider.notifier).setFilter(Filters.vegeterian, isChecked);
              },
              title: Text(
                "Vegeterian",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              subtitle: Text(
                "Only includes vegeterian meals.",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface
                ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: EdgeInsets.only(left: 34, right: 28),
            ),
            SwitchListTile(
              value: filtersStatus[Filters.vegan]!,
              onChanged: (isChecked) {
                ref.watch(filtersProvider.notifier).setFilter(Filters.vegan, isChecked);
              },
              title: Text(
                "Vegan",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              subtitle: Text(
                "Only includes vegan meals.",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface
                ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: EdgeInsets.only(left: 34, right: 28),
            ),
          ],
        ),
    );
  }
}
