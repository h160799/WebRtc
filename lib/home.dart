import 'package:flutter/material.dart';
import 'package:web_rtc_flutter/rtc.dart';

class Home extends StatelessWidget {
  final _ip = TextEditingController();

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter-WebRTC'),
        ),
        body: Column(
          children: [
            TextFormField(
              controller: _ip,
              decoration: const InputDecoration(
                labelText: 'Enter server IP',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Connect'),
              onPressed: () {
                final host = _ip.text;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Rtc(
                      host: host,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
