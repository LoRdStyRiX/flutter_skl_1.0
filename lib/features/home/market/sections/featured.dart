import 'package:flutter/material.dart';

class FeaturedContent extends StatelessWidget {
  const FeaturedContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 14),
            Image.asset(
              'assets/img/market_carousel.png', // Path to your asset
              fit: BoxFit.fitWidth, // Adjust the fit (optional)
              width: 375, // Optional width
              height: 250, // Optional height
            ),
            const SizedBox(height: 14),
            // Render content based on selected category
            // const Expanded(
            //   child: _buildSelectedContent(), // Method to switch between content
            // ),
      ]
    );
  }
}
