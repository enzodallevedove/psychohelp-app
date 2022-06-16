import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Principal'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(),
            ),
            const ListTile(
              title: Text('Histórico'),
            ),
            const ListTile(
              title: Text('Cartão'),
            ),
            const ListTile(
              title: Text('Trabalhe conosco'),
            ),
          ],
        ),
      ),
      body: Center(
          child: Container(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Card(
          child: SizedBox(
            height: 240,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Olá, seja bem-vindo',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(height: 30.0),
                  const Text(
                    'Sinta-se livre para utilizar nossos serviços, esperamos que se sinta melhor e lembre-se: vai dar tudo certo!',
                  ),
                  const SizedBox(height: 15.0),
                  const Text(
                    'É importante lembrar que não somos uma plataforma de atendimento agendado, ao buscar uma consulta você será atendido pelo primeiro psicólogo disponível!',
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(350, 60),
              primary: Theme.of(context).primaryColor),
          onPressed: () {
            Navigator.pushNamed(context, 'classification');
          },
          child: const Text('BUSCAR'),
        ),
      ),
    );
  }
}
