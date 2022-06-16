import 'package:flutter/material.dart';

class ClassificationPage extends StatefulWidget {
  const ClassificationPage({Key? key}) : super(key: key);

  @override
  State<ClassificationPage> createState() => _ClassificationPageState();
}

class _ClassificationPageState extends State<ClassificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Classificação'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 35.0, left: 35.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nos diga como você está se sentindo',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Preencher essas informações pode te priorizar na fila',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  )),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: SizedBox(
                      width: 180,
                      height: 180,
                      child: Center(
                          child: Text(
                        'Depressão',
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: 180,
                      height: 180,
                      child: Center(
                          child: Text(
                        'Ansiedade',
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: SizedBox(
                      width: 180,
                      height: 180,
                      child: Center(
                          child: Text(
                        'Pensamentos suicídas',
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: 180,
                      height: 180,
                      child: Center(
                          child: Text(
                        'Problemas familiares',
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: SizedBox(
                      width: 180,
                      height: 180,
                      child: Center(
                          child: Text(
                        'Pensamentos suicídas',
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: 180,
                      height: 180,
                      child: Center(
                          child: Text(
                        'Alguma coisa',
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: SizedBox(
                      width: 180,
                      height: 180,
                      child: Center(
                          child: Text(
                        'Mais coisas',
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: 180,
                      height: 180,
                      child: Center(
                          child: Text(
                        'Outras coisas',
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 80.0,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 60),
              primary: Theme.of(context).primaryColor,
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'payment');
            },
            child: const Text('AVANÇAR'),
          ),
        ),
      ),
    );
  }
}
