import 'dart:async';

import 'package:flutter/material.dart';

import '../../core/app_service.dart';
import '../../core/route/app_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    if (AppService.instance.initialSplashShown) return;
    _controller.forward();

    Future.delayed(const Duration(milliseconds: 1600), () {
      AppService.instance.initialSplashShown = true;
      AppRouterListenable.notify();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final logo = Image.asset('assets/images/logo_snapmirror.png', width: 200);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: AppService.instance.initialSplashShown
                ? logo
                : FadeTransition(opacity: _fadeAnimation, child: logo),
          ),
          if (!AppService.instance.initialSplashShown)
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'from',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Akshay Kalbande',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
