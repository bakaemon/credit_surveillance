import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class BalanceTitle extends StatelessWidget {
  const BalanceTitle({super.key, this.value = 0});

  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Balance: ',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
        ),
        AutoSizeText(
          value.toStringAsFixed(2),
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
