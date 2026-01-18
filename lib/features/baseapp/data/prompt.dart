// Vamos a hacer una app base en flutter  que use riverpod, clean architecture , autoroute y un menu en la parte inferior  para navegar entre 3 pantallas genericas.class

// Las dependencias que tenemos ahorita son :class


// baseapp/pubspec.yaml
// name: baseapp
// description: "A new Flutter project." 
// publish_to: 'none'  
// version: 1.0.0+1

// environment:
//   sdk: ^3.10.4
 
// dependencies:
//   flutter:
//     sdk: flutter
    
//   cupertino_icons: ^1.0.8 
//   flutter_riverpod: ^2.5.1
//   auto_route: ^8.1.3 


// dev_dependencies:
//   flutter_test:
//     sdk: flutter
  
//   flutter_lints: ^6.0.0
//   build_runner: ^2.4.9
//   auto_route_generator: ^8.1.0



// flutter:
//   uses-material-design: true

//   # To add assets to your application, add an assets section, like this:
//   # assets:
//   #   - images/a_dot_burr.jpeg
//   #   - images/a_dot_ham.jpeg

//   # An image asset can refer to one or more resolution-specific "variants", see
//   # https://flutter.dev/to/resolution-aware-images

//   # For details regarding adding assets from package dependencies, see
//   # https://flutter.dev/to/asset-from-package

//   # To add custom fonts to your application, add a fonts section here,
//   # in this "flutter" section. Each entry in this list should have a
//   # "family" key with the font family name, and a "fonts" key with a
//   # list giving the asset and other descriptors for the font. For
//   # example:
//   # fonts:
//   #   - family: Schyler
//   #     fonts:
//   #       - asset: fonts/Schyler-Regular.ttf
//   #       - asset: fonts/Schyler-Italic.ttf
//   #         style: italic
//   #   - family: Trajan Pro
//   #     fonts:
//   #       - asset: fonts/TrajanPro.ttf
//   #       - asset: fonts/TrajanPro_Bold.ttf
//   #         weight: 700
//   #
//   # For details regarding fonts from package dependencies,
//   # see https://flutter.dev/to/font-from-package


// Los colores que quiero que use la app a modo de diseno futurista austero en tema oscuro sofisticado es : 
// baseapp/lib/core/theme/app_colors.dart

// import 'package:flutter/material.dart';

// class AppColors {
//   // Colores Neon
//   static const Color neonGreen = Color.fromARGB(255, 64, 148, 84); // rgb(64, 148, 84)
//   static const Color neonGreenAccent = Color.fromARGB(255, 72, 240, 129); // rgb(72, 240, 129)
  
//   // Colores de UI
//   static const Color darkGreyBar = Color.fromARGB(255, 37, 37, 37); // rgb(37, 37, 37)
//   static const Color mapBackground = Colors.black; // El fondo oscuro del mapa
// }

// Dame el codigo del 
// baseapp/lib/main.dart

// Asi como de los archivos relacionados considera que tenemos el siguiente estructura de carpetas actualmente , falta tambien los archivos base de repositorio, datasource use cases , etc de clean architecture. 
// Todo el codigo que generes tiene que seguir las mejores practicas del desarrollo de software como si fueras un desarrollador Sr


// El sistema de carpetas que estaba pensando usar era algo asi: 

// lib/
// ├── core/
// │   ├── error/                  🆕 (Manejo de errores global)
// │   │   ├── exceptions.dart
// │   │   └── failures.dart
// │   ├── router/
// │   │   ├── app_router.dart
// │   │   └── app_router.gr.dart
// │   ├── theme/
// │   │   └── app_colors.dart
// │   └── usecases/               🆕 (Interfaz base para casos de uso)
// │       └── usecase.dart
// │
// ├── features/
// │   └── baseapp/                (Feature principal detectada en la imagen)
// │       │
// │       ├── data/               (Capa de Datos: Implementación)
// │       │   ├── datasources/    🆕 (Fuentes de datos: API, DB local)
// │       │   │   ├── baseapp_local_data_source.dart
// │       │   │   └── baseapp_remote_data_source.dart
// │       │   ├── models/         🆕 (DTOs: Extienden entidades y parsean JSON)
// │       │   │   └── baseapp_model.dart
// │       │   └── repositories/   🆕 (Implementación del contrato del dominio)
// │       │       └── baseapp_repository_impl.dart
// │       │
// │       ├── domain/             🆕 (Capa de Dominio: Reglas de negocio puras)
// │       │   ├── entities/       (Objetos de negocio puros)
// │       │   │   └── prompt.dart (Tu archivo original, movido aquí si es una entidad)
// │       │   ├── repositories/   (Contratos / Interfaces abstractas)
// │       │   │   └── baseapp_repository.dart
// │       │   └── usecases/       (Acciones específicas que hace el usuario)
// │       │       └── get_prompt_usecase.dart
// │       │
// │       └── presentation/       (Capa de Presentación: UI y Estado)
// │           ├── providers/      (Gestión de estado, e.g., Riverpod/Bloc)
// │           │   └── baseapp_provider.dart
// │           ├── screens/        (Páginas completas)
// │           │   └── baseapp_screen.dart
// │           └── widgets/        (Componentes reutilizables de la UI)
// │               └── custom_input_field.dart
// │
// └── main.dart