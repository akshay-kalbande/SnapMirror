import 'package:flutter/material.dart';

class AppPage extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  const AppPage({super.key, required this.isLoading, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading) ...[
          ModalBarrier(dismissible: false, color: Colors.black38),
          Center(child: const CircularProgressIndicator()),
        ],
      ],
    );
  }
}
