import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';

// 1. Instanciamos el router FUERA de la clase para que sea persistente (Singleton simple)
final appRouter = AppRouter();

void main() {
  // 2. Aseguramos que el motor de Flutter esté listo antes de correr la app
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Base App Flutter',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      
      // 3. Conectamos la configuración del router global
      routerConfig: appRouter.config(),
    );
  }
}