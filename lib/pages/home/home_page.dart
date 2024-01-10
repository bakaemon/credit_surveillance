import 'package:app/common/widgets/common_container.dart';
import 'package:app/pages/base/base_page_state.dart';
import 'package:app/pages/base/themes/material.dart';
import 'package:app/pages/home/bloc/home_bloc.dart';
import 'package:app/pages/home/widgets/balance_title.dart';
import 'package:app/pages/home/widgets/home_app_bar.dart';
import 'package:app/shared/widgets/app_page.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BasePageState<HomePage, HomeBloc> {
  late ThemeData theme;

  @override
  void initState() {
    super.initState();
    theme = materialDark;
  }

  @override
  Widget buildPage(BuildContext context) {
    return AppPage(
      onRefresh: () async {},
      scrollable: true,
      title: const Text(
        'Credivault',
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('Account overview'),
            const SizedBox(height: 12),
            CommonContainer(
              elevation: 1,
              width: double.infinity,
              // color: theme.colorScheme.outlineVariant,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText.rich(TextSpan(
                      text: '0',
                      style: materialDark.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    )),
                    const SizedBox(height: 8),
                    Text(
                      'Total balance',
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
          ])),
    );
  }
}
