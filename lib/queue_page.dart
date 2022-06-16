import 'package:flutter/material.dart';

class QueuePage extends StatefulWidget {
  const QueuePage({Key? key}) : super(key: key);

  @override
  State<QueuePage> createState() => _QueuePageState();
}

class _QueuePageState extends State<QueuePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(color: Color(0xFF6200EE)),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'PROCURANDO...',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SizedBox(
              child: DecoratedBox(
                decoration:
                    BoxDecoration(color: Theme.of(context).primaryColor),
              ),
              width: double.infinity,
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 60),
                      side: BorderSide(width: 1.0, color: Colors.white)),
                  onPressed: () {
                    // Navigator.pushNamed(context, 'payment');
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
