import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage({required this.rezult});
  int rezult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Second page',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.grey),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                child: Text('San: $rezult',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 35,
                ))
          ],
        ),
      ),
    );
  }
}
