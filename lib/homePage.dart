import 'package:bazar/detalhesdevenda.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selectedValueLocation;
  String? selectedValueCategory;
  bool userLoged = false;

  List<String> opcoes1 = ['Localização','Lobito', 'Benguela', 'Catumbela'];
  List<String> opcoes2 = ['Categoria','Eletrônicos', 'Automóveis', 'Moda'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                  DropdownButton<String>(
                    icon: SizedBox.shrink(),
                    hint: Text(
                      'Localização',
                      style: TextStyle(color: Colors.red),
                    ),
                    value: selectedValueLocation,
                    items: opcoes1.map((String value) {
                      return DropdownMenuItem<String>(
                        
                        value: value,
                        child: value == selectedValueLocation
                        ? Text(value, style: TextStyle(color: Colors.red))
                        : Text(value),
                        
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValueLocation = newValue;
                      });
                    },
                  ),
                  Icon(Icons.arrow_drop_down)
                  ],),

                  Row(children: [
                  DropdownButton<String>(
                     
                    icon: SizedBox.shrink(),
                    hint: Text(
                      'Categoria',
                      style: TextStyle(color: Colors.red),
                    ),
                    value: selectedValueCategory,
                    items: opcoes2.map((String value) {
                      return DropdownMenuItem<String>(
                        
                        value: value,
                        child: value == selectedValueCategory
                        ? Text(value, style: TextStyle(color: Colors.red))
                        : Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValueCategory = newValue;
                      });
                    },
                  ),
                  Icon(Icons.arrow_drop_down)
                  ],),
                  

            
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    ListTile(
                      leading: Image.asset('assets/images/macbook.png'),
                      title: Text('Macbook Pro 16'),
                      subtitle: Text('190.000 AOA'),
                    ),
                    ListTile(
                      leading: Image.asset('assets/images/moto.png'),
                      title: Text('Motorizada Xexeng'),
                      subtitle: Text('400.000 AOA'),
                    ),
                    ListTile(
                      leading: Image.asset('assets/images/samsung.png'),
                      title: Text('Samsung S23 Ultra'),
                      subtitle: Text('600.000 AOA'),
                    ),
                    ListTile(
                      leading: Image.asset('assets/images/carro.png'),
                      title: Text('Toyota Yaris 2020'),
                      subtitle: Text('6.000.000 AOA'),
                    ),
                    ListTile(
                      leading: Image.asset('assets/images/ps4.png'),
                      title: Text('PlayStation 4 Pro'),
                      subtitle: Text('400.000 AOA'),
                    ),
                    ListTile(
                      leading: Image.asset('assets/images/sapato.png'),
                      title: Text('Sapatos do Boyka'),
                      subtitle: Text('30.000 AOA'),
                    ),
                    ListTile(
                      leading: Image.asset('assets/images/chinela.png'),
                      title: Text('Chinelas Havaianas'),
                      subtitle: Text('4.000 AOA'),
                    ),
                    ListTile(
                      leading: Image.asset('assets/images/macbook.png'),
                      title: Text('Macbook Pro 16'),
                      subtitle: Text('190.000 AOA'),
                    ),
                    ListTile(
                      leading: Image.asset('assets/images/ps4.png'),
                      title: Text('PlayStation 4 Pro'),
                      subtitle: Text('400.000 AOA'),
                    ),
                    ListTile(
                      leading: Image.asset('assets/images/moto.png'),
                      title: Text('Motorizada Xexeng'),
                      subtitle: Text('400.000 AOA'),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetalhesDeVenda(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}
