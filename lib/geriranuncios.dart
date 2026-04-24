import 'package:bazar/widgets/customButtonSheet.dart';
import 'package:flutter/material.dart';


class GerirAnuncios extends StatefulWidget {
  const GerirAnuncios({super.key});

  @override
  State<GerirAnuncios> createState() => _GerirAnunciosState();
}

class _GerirAnunciosState extends State<GerirAnuncios> {
  String? selectectOption;
  List<String> options = ['Ordenar', 'Preço', 'Nome', 'Mais recente'];
  List<Widget> anuncios = [
    ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset('assets/images/cake1.png'),
      title: Text('Bolo de Chocolate'),
      subtitle: Text('AOA 15.000'),
    ),
    ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset('assets/images/cake1.png'),
      title: Text('Pudim a morango'),
      subtitle: Text('AOA 10.000'),
    ),
    ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset('assets/images/cake2.png'),
      title: Text('Bolo de Coco'),
      subtitle: Text('AOA 2.000'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back),
        ),
        title: Text('Gerir Anúncios'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 199, 194, 194),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.search, color: Colors.white, size: 30),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(color: Colors.grey, height: 1),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 20, bottom: 20),
              child: Row(
                children:[
                  DropdownButton<String>(
                    icon: SizedBox.shrink(),
                hint: Text('Ordenar', style: TextStyle(color: Colors.red)),
                value: selectectOption,
                items: options.map((String value) {
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
                ]


              )
            ),
            Expanded(
              child: ListView.builder(
                itemCount: anuncios.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: Key(anuncios[index].toString()),
                    direction: DismissDirection.endToStart,
                    onDismissed: (direction) {},
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) {
                                    return ButtomSheet();
                                  },
                                );
                              },
                              child: anuncios[index],
                            ),
                          ),
                          Icon(Icons.delete, color: Colors.red),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return ButtomSheet();
            },
          );
        },
        backgroundColor: Colors.red,
        icon: Icon(Icons.add, color: Colors.white, size: 30),
        label: Text(
          'Adicionar',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
