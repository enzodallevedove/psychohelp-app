import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

enum AppointmentType { chat_appointment, video_appointment }

class _PaymentPageState extends State<PaymentPage> {
  AppointmentType? _appointmentType = AppointmentType.chat_appointment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                ListTile(
                  title: const Text('Consulta por chat'),
                  leading: Radio<AppointmentType>(
                    value: AppointmentType.chat_appointment,
                    groupValue: _appointmentType,
                    onChanged: (AppointmentType? value) {
                      setState(() {
                        _appointmentType = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Consulta por vídeo'),
                  leading: Radio<AppointmentType>(
                    value: AppointmentType.video_appointment,
                    groupValue: _appointmentType,
                    onChanged: (AppointmentType? value) {
                      setState(() {
                        _appointmentType = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Center(
              child: Text(
                'R\$ 80,00',
                style: TextStyle(fontSize: 50),
              ),
            ),
            const SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Número do cartão',
                      suffixIcon: Icon(
                        Icons.credit_card,
                      ),
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Nome do titular',
                      suffixIcon: Icon(
                        Icons.person,
                      ),
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Mês',
                            enabledBorder: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Flexible(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Ano',
                            enabledBorder: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'CVV',
                      suffixIcon: Icon(Icons.password),
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'CPF',
                      suffixIcon: Icon(Icons.perm_identity),
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(350, 60),
              primary: Theme.of(context).primaryColor,
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'queue');
            },
            child: const Text('Buscar'),
          ),
        ),
      ),
    );
  }
}
