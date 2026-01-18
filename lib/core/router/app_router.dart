import 'package:auto_route/auto_route.dart';

// Importa tus pantallas
import '../../features/baseapp/presentation/screens/dashboard_screen.dart';
import '../../features/baseapp/presentation/screens/home_screen.dart';
import '../../features/baseapp/presentation/screens/search_screen.dart';
import '../../features/baseapp/presentation/screens/profile_screen.dart';

// -----------------------------------------------------------
// ¡ESTA ES LA LÍNEA CLAVE! (Usa 'part', NO 'import')
part 'app_router.gr.dart';
// -----------------------------------------------------------

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: DashboardRoute.page,
      initial: true, // Ruta inicial
      children: [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: SearchRoute.page),
        AutoRoute(page: ProfileRoute.page),
      ],
    ),
  ];
}