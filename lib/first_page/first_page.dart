import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_counter_app/first_page/first_page_controller.dart';
import 'package:get_x_counter_app/second_page/second_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  final _controller = Get.put(FirstPageController());

  @override
  Widget build(BuildContext context) {
    log('count=====> ${_controller.count++}');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Counter App',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                Get.to(
                  () => SecondPage(
                    rezult: _controller.number.value,
                  ),
                );
              },
              child: Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey,
                ),
                child: Center(
                  child: Obx(
                    () => Text(
                      'number :  ${_controller.number}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue,
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 35,
                  ),
                  onPressed: () {
                    _controller.remove();
                  },
                ),
              ),
              const SizedBox(
                width: 35,
              ),
              Container(
                height: 60,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue,
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 35,
                  ),
                  onPressed: () {
                    _controller.add();
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
