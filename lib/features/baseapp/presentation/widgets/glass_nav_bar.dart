import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class GlassNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const GlassNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Margen inferior y lateral para que "flote"
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 24), 
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30), // Bordes redondeados estilo Apple
        child: BackdropFilter(
          // El efecto "Liquid Crystal" (Blur)
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              // Fondo semitransparente oscuro
              color: AppColors.darkGreyBar.withOpacity(0.7),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.white.withOpacity(0.1), // Borde sutil brillante
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _NavBarItem(
                  icon: CupertinoIcons.house_fill,
                  label: "Inicio",
                  isSelected: currentIndex == 0,
                  onTap: () => onTap(0),
                ),
                _NavBarItem(
                  icon: CupertinoIcons.search,
                  label: "Explorar",
                  isSelected: currentIndex == 1,
                  onTap: () => onTap(1),
                ),
                _NavBarItem(
                  icon: CupertinoIcons.person_fill,
                  label: "Perfil",
                  isSelected: currentIndex == 2,
                  onTap: () => onTap(2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _NavBarItem({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.all(8),
            decoration: isSelected
                ? BoxDecoration(
                    color: AppColors.neonGreen.withOpacity(0.2), // Glow suave al seleccionar
                    shape: BoxShape.circle,
                  )
                : const BoxDecoration(color: Colors.transparent),
            child: Icon(
              icon,
              size: 26,
              color: isSelected ? AppColors.neonGreenAccent : Colors.grey,
            ),
          ),
          if (isSelected) // Solo muestra el texto si está seleccionado (más limpio)
            Text(
              label,
              style: const TextStyle(
                color: AppColors.textWhite,
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
        ],
      ),
    );
  }
}