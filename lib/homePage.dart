import 'package:bazar/signupScreen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selectedValueLocation;
  String? selectedValueCategory;

  List<String> opcoes = ['Opção 1', 'Opção 2', 'Opção 3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       backgroundColor: Colors.white,
       surfaceTintColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('BAZAR'),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(builder:  (context) => SignupScreen())
                  );
              },
              child: Text('Convidado', style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
       shape: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownButton<String>(
                    hint: Text('Localização',
                    style: TextStyle(color: Colors.red),
                    ),
                    value: selectedValueLocation,
                    items: opcoes.map((String value){
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValueLocation = newValue;
                      });
                    },
                  ),

                  DropdownButton<String>(
                    hint: Text('Categoria',
                    style: TextStyle(color: Colors.red),
                    ),
                    value: selectedValueCategory,
                    underline: SizedBox(),
                    items: opcoes.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValueCategory = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
            Expanded(child: 
            Center(
              
              child:
            ListView(
              scrollDirection: Axis.vertical,
              children: [ 
                ListTile(
                  leading: Image.asset('assets/images/macbook.png'),
                  title: Text('Macbook Pro 16'),
                  subtitle: Text('190.000 AOA'),
                ),
                Divider(),
                ListTile(
                  leading: Image.asset('assets/images/moto.png'),
                  title: Text('Motorizada Xexeng'),
                  subtitle: Text('400.000 AOA'),
                ),
                Divider(),
                ListTile(
                  leading: Image.asset('assets/images/samsung.png'),
                  title: Text('Samsung S23 Ultra'),
                  subtitle: Text('600.000 AOA'),
                ),
                Divider(),
                ListTile(
                  leading: Image.asset('assets/images/carro.png'),
                  title: Text('Toyota Yaris 2020'),
                  subtitle: Text('6.000.000 AOA'),
                ),
                Divider(),
                ListTile(
                  leading: Image.asset('assets/images/ps4.png'),
                  title: Text('PlayStation 4 Pro'),
                  subtitle: Text('400.000 AOA'),
                ),
                Divider(),
                ListTile(
                  leading: Image.asset('assets/images/sapato.png'),
                  title: Text('Sapatos do Boyka'),
                  subtitle: Text('30.000 AOA'),
                ),
                Divider(),
                ListTile(
                  leading: Image.asset('assets/images/chinela.png'),
                  title: Text('Chinelas Havaianas'),
                  subtitle: Text('4.000 AOA'),
                ),
                Divider(),
                ListTile(
                  leading: Image.asset('assets/images/macbook.png'),
                  title: Text('Macbook Pro 16'),
                  subtitle: Text('190.000 AOA'),
                ),
                Divider(),
                ListTile(
                  leading: Image.asset('assets/images/ps4.png'),
                  title: Text('PlayStation 4 Pro'),
                  subtitle: Text('400.000 AOA'),
                ),
                Divider(),
                ListTile(
                  leading: Image.asset('assets/images/moto.png'),
                  title: Text('Motorizada Xexeng'),
                  subtitle: Text('400.000 AOA'),
                ),
              ],
            )
            
            ,)
            )
          ],
        ),
      ),
    );
  }
}
