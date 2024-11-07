import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF1C1C1E),
      selectedItemColor: const Color.fromARGB(255, 141, 195, 239),
      unselectedItemColor: Colors.white70,
      type:
          BottomNavigationBarType.fixed, // Tambahkan agar 4 item tersusun rata
      showSelectedLabels: false, // Hilangkan label
      showUnselectedLabels: false, // Hilangkan label
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.pentagon_outlined),
          label: '', // Label kosong
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_view),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.hexagon_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: '',
        ),
      ],
    );
  }
}
