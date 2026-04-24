import 'package:bazar/confirmaridentidade.dart';
import 'package:bazar/signupScreen.dart';
import 'package:flutter/material.dart';

class ConfirmPhoneScreen extends StatefulWidget {
  final String phoneNumber;

  const ConfirmPhoneScreen({super.key, required this.phoneNumber});

  @override
  _ConfirmPhoneScreenState createState() => _ConfirmPhoneScreenState();
}

class _ConfirmPhoneScreenState extends State<ConfirmPhoneScreen> {
  final TextEditingController _otpController = TextEditingController();

  void _verifyCode() {
    String otp = _otpController.text.trim();

    if (otp.length != 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Insira o código de 6 dígitos')),
      );
      return;
    }else{
      Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ConfirmarIdentidadeScreen()),
                  );
    }

    // Aqui você adiciona a lógica para validar o OTP
    // Por exemplo: chamar sua API para verificar o código
    print('Código digitado: $otp');

    // Se estiver correto, vá para a próxima tela
    // Navigator.push(...);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 4),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  );
                },
                child: Icon(Icons.arrow_back_ios_new, color: Colors.red),
              ),
            ),

            Align(
              alignment: Alignment.center, // central horizontal
              child: Text(
                'Insira o código de verificação',
                style: const TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              textAlign: TextAlign.center,
              controller: _otpController,
              keyboardType: TextInputType.number,
              maxLength: 6,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  // Lógica para reenviar código
                  
                },
                child: const Text(
                  'Reenviar código em 02:00',
                  style: TextStyle(color: Color.fromARGB(255, 110, 106, 106)),
                ),
              ),
            ),

            const SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 40),
                ),
                onPressed: _verifyCode,
                child: const Text('Confirmar'),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
