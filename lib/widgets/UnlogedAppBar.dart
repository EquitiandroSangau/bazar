import 'package:bazar/signupScreen.dart';
import 'package:flutter/material.dart';

class UnlogedAppBar extends StatefulWidget implements PreferredSizeWidget {
   UnlogedAppBar();

  @override
  State<UnlogedAppBar> createState() => _UnlogedAppBar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _UnlogedAppBar extends State<UnlogedAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      title: const Text('BAZAR'),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupScreen()),
              );
            },
            child: const Text('Convidado'),
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(
          color: Colors.grey,
          height: 1,
        ),
      ),
    );
  }
}
