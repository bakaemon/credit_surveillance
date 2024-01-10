import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'balance.dart';

class HomeAppBar extends StatelessWidget {
  final EdgeInsetsGeometry? padding;

  const HomeAppBar({
    Key? key,
    this.headerText = 'Welcome',
    this.padding = const EdgeInsets.only(
      left: 15,
      right: 15,
      top: 40,
    ),
  }) : super(key: key);

  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: AutoSizeText(
                        headerText,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                        presetFontSizes: const [
                          28,
                          25,
                          22,
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Balance(
                          value: 100,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
