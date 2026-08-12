
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:weightly_app/Runtime/theme_view_model.dart';

class MainProviders extends StatelessWidget {
    final Widget mainWidget;

    const MainProviders({super.key, required this.mainWidget});

    @override
    Widget build(BuildContext context) {
        //Build API & Data models first then viewModels
        return MultiProvider(
          providers: [
            ChangeNotifierProvider<ThemeViewModel>(
              create: (_) => ThemeViewModel()
            ),
        ],
        builder: (context, child) {
          return mainWidget;
        },
      );
    }
}