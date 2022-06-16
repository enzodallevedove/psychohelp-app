import 'package:flutter/material.dart';

class JoinCallPage extends StatefulWidget {
  const JoinCallPage({Key? key}) : super(key: key);

  @override
  State<JoinCallPage> createState() => _JoinCallPageState();
}

class _JoinCallPageState extends State<JoinCallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const SizedBox(
              width: 160,
              height: 284,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.mic_off),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    minimumSize: const Size(60, 60),
                    primary: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.videocam_off),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    minimumSize: const Size(60, 60),
                    primary: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'call');
                  },
                  child: const Text('ENTRAR'),
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    minimumSize: const Size(140, 60),
                    primary: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 150,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 20, left: 20, bottom: 20, top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Color(0xFFD9D9D9),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(300.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Enzo Dal Evedove',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const SizedBox(height: 5),
                        const Text('4.8 *'),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFDADADA),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('ENVIAR'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(80, 60),
                        primary: Theme.of(context).primaryColor,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
