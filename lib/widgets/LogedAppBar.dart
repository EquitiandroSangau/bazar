import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogedAppBar extends StatefulWidget implements PreferredSizeWidget {
  const LogedAppBar();

  @override
  State<LogedAppBar> createState() => _LogedAppBarState();
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _LogedAppBarState extends State<LogedAppBar>{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: PreferredSize(preferredSize: Size.fromHeight(1), 
      child: Container(
        color: Colors.grey,
        height: 1,
      ),),
      backgroundColor: Colors.white,
      title: Text('Bazar', style: TextStyle(fontSize:30),),
      actions: [
       Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          
          shape: BoxShape.circle,
          color: const Color(0xFFB9B9B9)
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -4,
              right: -6,
              child: Container(
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red
                ),
                child:  Padding(padding: EdgeInsetsGeometry.only(left: 3, right: 3),
                child: Text(
                    '9+',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  
                ),
                )
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: SizedBox(
                width: 10,
                height: 10,
                child: Icon(
                  CupertinoIcons.bell_fill,
                  size: 18,
                  color: Colors.black,
                )
              ),
            )
          ],
        ),
       ),
        SizedBox(width: 8),
         Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xFFB9B9B9)
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -4,
              right: -6,
              child: Container(
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red
                ),
                child:  Padding(padding: EdgeInsetsGeometry.only(left: 3, right: 3),
                child: Text(
                    '2',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  
                ),
                )
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: SizedBox(
                width: 10,
                height: 10,
                child: Icon(
                  Icons.message,
                  size: 18,
                  color: Colors.black,
                )
              ),
            )
          ],
        ),
       ),
       SizedBox(width: 8),
        Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xFFB9B9B9)
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: SizedBox(
                width: 10,
                height: 10,
                child: Icon(
                  CupertinoIcons.search,
                  size: 18,
                  color: Colors.black,
                )
              ),
            ),
          ],
        ),
       ),
       SizedBox(width: 8)
      ],
    );
  }
}

