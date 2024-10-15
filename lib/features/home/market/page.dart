// market_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_skl_1/features/home/market/sections/collections.dart';
import 'package:flutter_skl_1/features/home/market/sections/featured.dart';
import 'package:flutter_skl_1/features/home/market/sections/stores.dart';
import 'package:flutter_skl_1/features/home/market/sections/tags.dart';


class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  int _selectedIndex = 0;

  // List of categories
  List<String> categories = ['Featured', 'Collections', 'Stores', 'Tags'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffffdad1),
        leading: Padding(
          padding: const EdgeInsets.only(left: 23.0),
          child: IconButton(
            icon: const Icon(Icons.inbox_outlined, color: Color(0xff3e3e40)),
            onPressed: () {
              // Handle menu button press
            },
          ),
        ),
        title: const Text(
          'Your package is almost there!',
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Market',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const SizedBox(height: 29),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  // TextField
                  Expanded(
                    child: TextField(
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xfff3f3f3),
                        hintText: 'Search on Market',
                        hintStyle: const TextStyle(color: Color(0xff6e6e70)),
                        suffixIcon: const Icon(Icons.search,
                            color: Color(0xff6e6e70)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  // Square button
                  SizedBox(
                    width: 48, // Square shape
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: OutlinedButton.styleFrom(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Color(0xfff3f3f3)),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        backgroundColor: Colors.white,
                      ),
                      child: const Center(
                        child: Text(
                          'W',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(4, (index) {
                return Column(
                  children: [
                    GestureDetector(
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            _selectedIndex =
                                index; // Update the selected button index
                          });
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: _selectedIndex == index
                              ? Colors.black
                              : Colors.grey, // Change color when selected
                          splashFactory: NoSplash
                              .splashFactory, // Disable splash effect
                        ),
                        child: Text(
                          categories[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: _selectedIndex == index
                                ? Colors.black
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Icon(
                        Icons.circle, // Dot under the selected button
                        size: 8,
                        color: _selectedIndex == index
                            ? const Color(0xff6C5ECF)
                            : Colors.transparent, // Visible only for selected
                      ),
                    ),
                  ],
                );
              }),
            ),
            _buildSelectedContent()
          ],
        ),
      ),
    );
  }

  // Method to return the selected category's content
  Widget _buildSelectedContent() {
    switch (_selectedIndex) {
      case 0:
        return const FeaturedContent();
      case 1:
        return const CollectionsContent();
      case 2:
        return const StoresContent();
      case 3:
        return const TagsContent();
      default:
        return const SizedBox.shrink();
    }
  }
}
