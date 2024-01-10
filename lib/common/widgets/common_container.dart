import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  const CommonContainer({
    super.key,
    this.alignment,
    this.padding,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.width,
    this.height,
    this.constraints,
    this.margin,
    this.transform,
    this.child,
    this.clipBehavior = Clip.none,
    this.elevation = 0,
  });

  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Decoration? decoration;
  final Decoration? foregroundDecoration;
  final double? width;
  final double? height;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final Matrix4? transform;
  final Widget? child;
  final Clip clipBehavior;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      shadowColor: Theme.of(context).colorScheme.shadow,
      surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
      borderRadius: const BorderRadius.all(
        Radius.circular(12),
      ),
      child: Container(
        key: key,
        alignment: alignment,
        padding: padding,
        decoration: decoration ??
            BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
        foregroundDecoration: foregroundDecoration,
        width: width,
        height: height,
        constraints: constraints,
        margin: margin,
        transform: transform,
        clipBehavior: clipBehavior,
        child: child,
      ),
    );
  }
}
