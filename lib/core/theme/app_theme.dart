import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.mapBackground,
      primaryColor: AppColors.neonGreen,
      
      // Configuración de la AppBar por defecto
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.mapBackground,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: AppColors.textWhite,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
        iconTheme: IconThemeData(color: AppColors.neonGreenAccent),
      ),

      // Configuración de la BottomNavBar (Estilo Austero)
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.darkGreyBar,
        selectedItemColor: AppColors.neonGreenAccent,
        unselectedItemColor: AppColors.textGrey,
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
      
      // Textos
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: AppColors.textWhite),
        bodyLarge: TextStyle(color: AppColors.textWhite),
      ),
    );
  }
}