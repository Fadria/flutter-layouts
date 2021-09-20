import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar
    (
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      currentIndex: 1,
      items: 
      [
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined), label: 'Calendario'),
        BottomNavigationBarItem(icon: Icon(Icons.pie_chart_outline_outlined), label: 'Gráfica'),
        BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_outlined), label: 'Usuarios')
      ]
    );
  }
}