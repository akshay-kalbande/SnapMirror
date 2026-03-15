import 'package:flutter/material.dart';

class ScreenLoader extends StatelessWidget {
  final bool isLoading;
  final Widget widget;
  const ScreenLoader({
    super.key,
    required this.isLoading,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget,
        if (isLoading) ...[
          ModalBarrier(dismissible: false, color: Colors.black38),
          Center(child: const CircularProgressIndicator()),
        ],
      ],
    );
  }
}
