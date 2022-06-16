import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enzo Dal Evedove'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: SizedBox(
                width: 200,
                height: 355,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.call_end),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    minimumSize: const Size(80, 80),
                    primary: Theme.of(context).primaryColor,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.mic_off),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    minimumSize: const Size(80, 80),
                    primary: Theme.of(context).primaryColor,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.videocam_off),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    minimumSize: const Size(80, 80),
                    primary: Theme.of(context).primaryColor,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.more_vert),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    minimumSize: const Size(80, 80),
                    primary: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
