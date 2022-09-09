import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:qr_code_badge/api/api.dart';
import 'package:qr_code_badge/api/api.dart';
import 'package:qr_code_badge/screens/resultScreen.dart';
//TODO: Create a QR Code screen flutter

//Max JWT example (expired): eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoidmlzaXRvciIsInN1cm5hbWUiOiJNYXgiLCJsYXN0bmFtZSI6Ik11c3RlcmZyYXUiLCJzdWIiOiIxMjM0NTY3ODkxMCIsImV4cCI6MTYxNjIzOTAyMiwiaWF0IjoxNTE2MjM5MDIyfQ.bj59M_2ohvIMQCMvByOE3pmxA-k-v073jwC1Jlu-gR
//Niklas JWT example (valid): eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoidmlzaXRvciIsInN1cm5hbWUiOiJNYXgiLCJsYXN0bmFtZSI6Ik11c3RlcmZyYXUiLCJzdWIiOiIxMjM0NTY3ODkxMCIsImV4cCI6MTY5NDE4NzMwNiwiaWF0IjoxNTE2MjM5MDIyfQ.oUmc6xHpRa6H4zaGHxyWBvbg-Oi_PVyGySEp_Sp-SLA
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR-Code Badge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'QR-Code Badge'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SafeArea(
            child: Center(
          child: RaisedButton(
            onPressed: () {
              //Paste JWT Token here!
              const String yourToken =
                  "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoidmlzaXRvciIsInN1cm5hbWUiOiJNYXgiLCJsYXN0bmFtZSI6Ik11c3RlcmZyYXUiLCJzdWIiOiIxMjM0NTY3ODkxMCIsImV4cCI6MTY5NDE4NzMwNiwiaWF0IjoxNTE2MjM5MDIyfQ.oUmc6xHpRa6H4zaGHxyWBvbg-Oi_PVyGySEp_Sp-SLA";
              print("Token is valid");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ResultScreen(token: yourToken),
                  ));
            },
            child: const Text('Scan QR Code'),
          ),
        )));
  }
}
