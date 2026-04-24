import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Image(image: AssetImage('assets/images/back.png')),
        ),
        title: const ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/moto.png'),
          ),
          title: Text('Vendedor'),
          subtitle: Text('Online'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.call, color: Colors.red),
            onPressed: () {},
          ),
        ],
      ),

      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8, left: 5, right: 5),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.handshake, color: Colors.red),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.camera_alt, color: Colors.red),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.photo, color: Colors.red),
              ),
              Expanded(
                child: SizedBox(
                  height: 30,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Aa',
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 8,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.mic, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
