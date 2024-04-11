import 'package:flutter/material.dart';
import 'package:turf_booking_application_for_admin/view/homescreen/utils/home_widget.dart';

class SmallHomeScreen extends StatelessWidget {
  const SmallHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: HomeWidget().appbar(title: 'Dashboard'),
      drawer: HomeWidget().drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Screen Size: Small',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Width: $screenWidth\nHeight: $screenHeight',
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}