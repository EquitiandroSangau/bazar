import 'package:flutter/material.dart';

class history extends StatefulWidget {
  const history({super.key});

  @override
  State<history> createState() => _history();
}

class _history extends State<history> {

  String? selectectOption;

  final List<Map<String, String>> _historyList = [
  
    {"titulo": "Iphone 11 PRO MAX vendido ao Sebastião", "preco": "120.000,00"},

    {"titulo": "SAMSUNG vendido ao Emanuel", "preco": "150.000,00"},
  
  ];

  List<String> history = ['Geral','Vendidos', 'Comprados'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Align(
            alignment: AlignmentGeometry.centerRight,
            child: Row(children: [
              DropdownButton<String>(
              underline: const SizedBox(),
              icon: SizedBox.shrink(),
              hint: Text('Geral', style: TextStyle(color: Colors.red)),
              value: selectectOption,
              items: history.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: value == selectectOption
                      ? Text(value, style: TextStyle(color: Colors.red))
                      : Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectectOption = newValue;
                });
              },
            ),
            Icon(Icons.arrow_drop_down)
            ],)
          ),
          
          SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              itemCount: _historyList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 0),
                  child: Container(
                    color: const Color.fromARGB(104, 170, 168, 168),
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text(_historyList[index]["titulo"]!),
                          subtitle: Text(
                            _historyList[index]["preco"]!,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
