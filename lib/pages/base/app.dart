import 'package:app/pages/base/base_page_state.dart';
import 'package:app/pages/base/bloc/app_bloc.dart';
import 'package:app/pages/base/themes/material.dart';
import 'package:app/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends BasePageState<App, AppBloc> {
  @override
  Widget buildPage(BuildContext context) {
    return MaterialApp(
      title: 'Credivault',
      darkTheme: materialDark,
      theme: FlexColorScheme.light(
        scheme: FlexScheme.material,
      ).toTheme,
      themeMode: ThemeMode.dark,
      home: const HomePage(),
    );
  }
}
