import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

class ButtomSheet extends StatefulWidget {
  const ButtomSheet({super.key});

  @override
  State<ButtomSheet> createState() => _ButtomSheetState();
}

class _ButtomSheetState extends State<ButtomSheet> {
  String selected = "Condições/Estado";

  void _showDropDown(BuildContext context, TapDownDetails details) async {
    final position = RelativeRect.fromLTRB(
      details.globalPosition.dx,
      details.globalPosition.dy,
      details.globalPosition.dx,
      details.globalPosition.dy,
    );

    final result = await showMenu<String>(
      context: context,
      position: position,
      items: [
        PopupMenuItem(value: "Novo", child: Text("Novo")),
        PopupMenuItem(value: "Usado", child: Text("Usado")),
        PopupMenuItem(
          value: "Usado/Em bom estado",
          child: Text("Usado/Em bom estado"),
        ),
        PopupMenuItem(value: "Aceitavel", child: Text("Aceitavel")),
        PopupMenuItem(value: "Reciclagem", child: Text("Reciclagem")),
      ],
    );

    setState(() {
      selected = result ?? selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // height: MediaQuery.of(context).size.height * 0.7,
        width: double.infinity,
        padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 94,
              height: 94,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 175, 173, 173),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.camera_alt, color: Colors.white, size: 30),
                    SizedBox(height: 4),
                    Text('Adicionar', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),

            TextField(
              decoration: InputDecoration(
                hintText: "Nome",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(16),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [
                CurrencyInputFormatter(
                  leadingSymbol: 'AOA ',
                  thousandSeparator: ThousandSeparator.Period,
                     ),

              ],
              decoration: InputDecoration(
                hintText: "Preço",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(16),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey),
              ),
              child: GestureDetector(
                onTapDown: (details) {
                  _showDropDown(context, details);
                },
                child: Padding(
                  padding: EdgeInsetsGeometry.only(right: 16, left: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(selected),
                      Icon(Icons.arrow_downward_outlined),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              maxLength: 150,
              maxLines: 2,
              decoration: InputDecoration(
                hintText: "Descricao",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Salvar Anúncio",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
