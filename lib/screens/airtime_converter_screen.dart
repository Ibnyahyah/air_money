import 'package:flutter/material.dart';

import '../Widgets/airtime_button.dart';

class AirtimeCoverterScreen extends StatelessWidget {
  const AirtimeCoverterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Convert Airtime to Cash'),
        backgroundColor: const Color.fromARGB(255, 38, 65, 178),
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Airtime Converter',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AirtimeButton('assets/icons/mtn.png', () {}, 0),
                  AirtimeButton('assets/icons/glo.jpg', () {}, 10.0),
                  AirtimeButton('assets/icons/airtel.jpg', () {}, 10.0),
                  AirtimeButton('assets/icons/9mobile.png', () {}, 10.0),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15, bottom: 5),
                    child: const Text(
                      'Phone Number',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: '+234 812 941 8741',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15, bottom: 5),
                    child: const Text(
                      'Amount',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: '5,000.00',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.only(top: 200),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(255, 38, 65, 178),
              ),
              child: RaisedButton(
                onPressed: () {},
                color: const Color.fromARGB(0, 38, 65, 178),
                textColor: Colors.white,
                elevation: 0,
                child: const Text(
                  'Convert to cash',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
