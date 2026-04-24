import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversas'),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 9),
                filled: true,
                fillColor: const Color(0xFFE7E4E4),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: 'Pesquisar',
                prefixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/images/moto.png'),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 5,
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text('João'),
                  ],
                ),
                SizedBox(width: 16),
                Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/images/moto.png'),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 5,
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text('João'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4, left: 16, right: 16),
            child: Row(
              children: [
                Chip(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  side: BorderSide.none,
                  label: const Text(
                    'Tudo',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.red,
                ),
                SizedBox(width: 8),
                Chip(
                  side: BorderSide.none,
                  label: const Text(
                    'Não lidas',
                    style: TextStyle(color: Color.fromARGB(255, 145, 143, 143)),
                  ),
                  backgroundColor: const Color(0xFFE7E4E4),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/moto.png'),
                  ),
                  title: Text('João'),
                  subtitle: Text('Olá, estou interessado no produto.'),
                  trailing: Text('12:30 PM'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatScreen()),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/moto.png'),
                  ),
                  title: Text('Maria'),
                  subtitle: Text('Tem mais fotos do produto?'),
                  trailing: Text('11:15 AM'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
