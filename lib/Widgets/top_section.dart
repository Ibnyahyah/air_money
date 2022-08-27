import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 180,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Total Balance(NGN)',
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: const [
                    Text(
                      '#50,000.00',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(Icons.remove_red_eye),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        margin: const EdgeInsets.only(right: 10),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          color: Color.fromARGB(255, 38, 65, 178),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Deposit Cash',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        margin: const EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5),
                          ),
                          border: Border.all(
                            color: const Color.fromARGB(255, 38, 65, 178),
                            width: 1.5,
                          ),
                          // color: Color.fromARGB(255, 38, 65, 178),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/convert-airtime');
                          },
                          child: const Text(
                            'Convert Airtime',
                            style: TextStyle(
                                color: Color.fromARGB(255, 38, 65, 178)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
