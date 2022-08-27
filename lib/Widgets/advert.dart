import 'package:flutter/material.dart';

class AdvertWidget extends StatelessWidget {
  const AdvertWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 6, right: 6, top: 10),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/network.webp'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 150,
      child: Card(
        color: const Color.fromARGB(32, 38, 66, 178),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'SWEET RATE \nGIFTCARDS',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            RaisedButton(
              onPressed: () {},
              color: Colors.white,
              padding: const EdgeInsets.all(15),
              child: const Text(
                'Buy Gift Cards',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
