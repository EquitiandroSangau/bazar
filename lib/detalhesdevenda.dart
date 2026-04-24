import 'package:bazar/chat.dart';
import 'package:flutter/material.dart';

class DetalhesDeVenda extends StatelessWidget {
  const DetalhesDeVenda({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detalhes do anúncio',
          style: TextStyle(fontSize: 20),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1, thickness: 1, color: Color(0xFFE7E4E4)),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              // 1️⃣ Imagem com círculo
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: Image.asset(
                      'assets/images/moto.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 10,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: 16,
                      height: 16,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),

              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "AOA 190.000",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text("Motorizada Xexeng, 2018."),
                      SizedBox(height: screenHeight * 0.03),
                      const Text(
                        "Descrição",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      const Text(
                        "Motorizada em bom estado, com pneus novos e motor revisado. "
                        "Ideal para deslocamentos urbanos e viagens curtas. "
                        "Ótima relação custo-benefício para quem busca um meio de transporte eficiente e econômico.",
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      const Text(
                        "Contacto",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      const Text("+244 923 456 789"),

                      SizedBox(height: 80),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0904FE),
                    ),
                    child: GestureDetector(
                      child: const Text(
                        "Enviar mensagem",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Chat(),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 2), // espaçamento entre os botões
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Ligar",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF08A430),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
