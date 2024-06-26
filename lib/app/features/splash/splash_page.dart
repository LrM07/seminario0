import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:puc_minas1/app/core/constants/app_assets.dart';
import 'package:puc_minas1/app/core/constants/app_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.onepiece)
                .animate()
                .scaleXY(begin: 0, end: 1, duration: 3.seconds)
                .flip(
                  begin: 1,
                  end: 4,
                  duration: 2.seconds,
                  direction: Axis.horizontal,
                )
                .fade(begin: 0, end: 1, duration: 2.seconds),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.login,
                );
              },
              child: const Text('ENTRAR'),
            )
          ],
        ),
      ),
    );
  }
}
