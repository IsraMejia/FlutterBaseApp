import 'package:auto_route/auto_route.dart';
import 'package:baseapp/core/theme/app_colors.dart';
import 'package:flutter/material.dart'; 
 


@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DASHBOARD")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.dashboard_customize_outlined, size: 80, color: AppColors.neonGreen),
            const SizedBox(height: 20),
            Text(
              "Home Module",
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: AppColors.neonGreenAccent,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}