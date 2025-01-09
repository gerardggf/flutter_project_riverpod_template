import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_template/app/core/utils/extensions/theme_mode_extension.dart';
import 'package:riverpod_template/app/presentation/shared/controllers/theme_controller.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  static const String routeName = 'home';

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  Widget build(BuildContext context) {
    // final state = ref.watch(homeControllerProvider);
    // final notifier = ref.read(homeControllerProvider.notifier);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              IconButton(
                onPressed: () {
                  ref
                      .read(themeControllerProvider)
                      .updateTheme(!ref.read(themeControllerProvider).darkMode);
                },
                icon: Icon(
                  context.isDarkMode ? Icons.dark_mode : Icons.light_mode,
                ),
              ),
              const TextField(
                decoration: InputDecoration(label: Text('helo')),
              ),
              Switch(
                value: true,
                onChanged: (v) {},
              ),
              const LinearProgressIndicator(
                value: 0.4,
              ),
              TextButton(
                onPressed: () {
                  showDatePicker(
                    // builder: (context, child) {
                    //   return AppTheme.datePickerStyle(context, child!);
                    // },
                    context: context,
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2026),
                  );
                },
                child: const Text('eeeeee'),
              ),
              ElevatedButton(
                onPressed: () {
                  showTimePicker(
                    // builder: (context, child) {
                    //   return AppTheme.timePickerStyle(context, child!);
                    // },
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                },
                child: const Text('eeeeee'),
              ),
              DropdownButton(
                value: 0,
                items: const [
                  DropdownMenuItem(
                    value: 0,
                    child: Text('0'),
                  ),
                  DropdownMenuItem(
                    value: 1,
                    child: Text('1'),
                  )
                ],
                onChanged: (v) {},
              ),
            ],
          ),
        ));
  }
}
