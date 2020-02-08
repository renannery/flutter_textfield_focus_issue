import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondPage extends StatelessWidget {
  SecondPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '• if you tap BackButton the issue does not happen\n\n\n• If you drag the page back (iOS behavior), the issue happens and the TextField will not get focus again',
        ),
      ),
    );
  }
}
