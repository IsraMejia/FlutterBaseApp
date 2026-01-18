import 'package:auto_route/auto_route.dart';
import 'package:baseapp/core/router/app_router.dart';
import 'package:flutter/material.dart'; 
// Importa tu nuevo widget
import '../widgets/glass_nav_bar.dart'; 

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        SearchRoute(),
        ProfileRoute(),
      ],
      // 1. ESTO ES CLAVE: Permite que el contenido baje hasta el fondo de la pantalla
      extendBody: true, 
      
      // 2. Aquí usamos nuestro GlassNavBar
      bottomNavigationBuilder: (_, tabsRouter) {
        return GlassNavBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
        );
      },
    );
  }
}