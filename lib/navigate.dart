import 'package:bazar/geriranuncios.dart';
import 'package:bazar/homePage.dart';
import 'package:bazar/widgets/LogedAppBar.dart';
import 'package:bazar/widgets/UnlogedAppBar.dart';
import 'package:bazar/widgets/navigatorButton.dart';
import 'package:flutter/material.dart';

class navigate extends StatefulWidget {
  const navigate({super.key});

  @override
  State<navigate> createState() => _navigate();
}

class _navigate extends State<navigate> {
  int _currentIndex=0;
  bool userLoged = true;
  final PageController _controler = PageController();
  final _pages = [HomePage(), GerirAnuncios()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: userLoged ? LogedAppBar() : UnlogedAppBar(),
        body: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _pages.length,
          controller: _controler,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          
          itemBuilder: (context, index) {
            return _pages[index];
          },
        ),
        bottomNavigationBar: CustomBottomNav(
        index: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            switch (index) {
              case 0:
                break;
              case 1:
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GerirAnuncios()),
                );
                    _currentIndex = 0; 
                
                break;
              case 2:
                // Ação para o terceiro item
                break;
            }
          });
        },
      ),
      ),
    );
  }
}
