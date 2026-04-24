import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  final ValueChanged<int> onTap;
  final int index;

  const CustomBottomNav({super.key, required this.onTap, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey, width: 1)),
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        selectedItemColor:  Colors.red ,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 10,
        elevation: 0,
        currentIndex: index,
        onTap: onTap,
        items: [
          
          BottomNavigationBarItem(
           icon: SizedBox(
    width: double.infinity,
    child: Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Positioned(
          top: -7,
          left: 0,
          right: 0,
          child: Container(
            height: 2,
            color: index == 0 ? Colors.red : Colors.transparent,
          ),
        ),
        Icon(
          Icons.campaign, 
          size: 28, 
          color: index == 0 ? Colors.red : Colors.grey
        ),
      ],
    ),
  ),
  label: 'Anúncios',
 
),
          BottomNavigationBarItem(
           icon: SizedBox(
    width: double.infinity,
    child: Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Positioned(
          top: -7,
          left: 0,
          right: 0,
          child: Container(
            height: 2,
            color: index == 1 ? Colors.red : Colors.transparent,
          ),
        ),
        Icon(
          Icons.settings, 
          size: 28, 
          color: index == 1 ? Colors.red : Colors.grey
        ),
      ],
    ),
  ),
  label: 'Gerir Anúncios',
),
          BottomNavigationBarItem(
           icon: SizedBox(
    width: double.infinity,
    child: Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Positioned(
          top: -7,
          left: 0,
          right: 0,
          child: Container(
            height: 2,
            color: index == 2 ? Colors.red : Colors.transparent,
          ),
        ),
        Icon(
          Icons.hourglass_bottom_outlined, 
          size: 28, 
          color: index == 2 ? Colors.red : Colors.grey
        ),
      ],
    ),
  ),
  label: 'Históricos',
),
          BottomNavigationBarItem(
           icon: SizedBox(
    width: double.infinity,
    child: Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Positioned(
          top: -7,
          left: 0,
          right: 0,
          child: Container(
            height: 2,
            color: index == 3 ? Colors.red : Colors.transparent,
          ),
        ),
        Icon(
          Icons.menu, 
          size: 28, 
          color: index == 3 ? Colors.red : Colors.grey
        ),
      ],
    ),
  ),
  label: 'Menu',
),

        ],
      ),
    );
  }
}
