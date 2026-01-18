import 'package:auto_route/auto_route.dart';
import 'package:baseapp/core/router/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 

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
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Inicio'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), label: 'Buscar'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: 'Perfil'),
          ],
        );
      },
    );
  }
}