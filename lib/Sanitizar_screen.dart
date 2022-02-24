import 'package:flutter/material.dart';

class SanitizarScreen extends StatefulWidget {
  _SanitizarScreenState createState() => _SanitizarScreenState();
}

class _SanitizarScreenState extends State<SanitizarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sanitizar'),
      ),
      body: Center(
        child: Text(
          'Sanitizar page',
        ),
      ),
    );
  }
}
