import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  const Balance({
    Key? key,
    this.value = 0,
  }) : super(key: key);

  final double value;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      value.toStringAsFixed(2),
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
      presetFontSizes: const [
        28,
        25,
        22,
      ],
    );
  }
}
