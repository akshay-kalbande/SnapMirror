import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';

class Disabled extends StatelessWidget {
  const Disabled(
    this.child, {
    super.key,
    this.paddingWanted = false,
    this.padding,
    this.color = AppColors.disabledGrey,
  });

  final Color color;
  final Widget child;
  final bool paddingWanted;
  final EdgeInsets? padding;

  @override
  Widget build(final BuildContext context) {
    return IgnorePointer(
      child: Container(
        padding: paddingWanted
            ? (padding ?? const EdgeInsets.all(5))
            : EdgeInsets.zero,
        color: color,
        child: child,
      ),
    );
  }
}
