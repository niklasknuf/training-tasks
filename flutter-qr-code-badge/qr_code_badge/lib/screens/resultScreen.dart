//TODO: show result screen of JWT token

import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:qr_code_badge/api/api.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key, required this.token}) : super(key: key);
  final String token;

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Text(
                'Surname: ${JwtDecoder.decode(widget.token)['surname']}',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              Text(
                'Lastname: ${JwtDecoder.decode(widget.token)['lastname']}',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              Text(
                'Role: ${JwtDecoder.decode(widget.token)['role']}',
                style: const TextStyle(fontSize: 20),
              ),
              
              const SizedBox(height: 20),
              Text(
                'Validity: ${JwtDecoder.getExpirationDate(widget.token)}',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              if (JwtDecoder.isExpired(widget.token))
                const Text(
                  'Token is expired',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                )
              else
                const Text(
                  'Token is valid',
                  style: TextStyle(fontSize: 20, color: Colors.green),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
