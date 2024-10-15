import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductDetailPage extends StatelessWidget {
  final Map<String, dynamic> product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    // Fallback for the images list if it's null
    List<dynamic> images = product['images'] ?? [];

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, // Change your color here
        ),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Image Carousel or Fallback
            if (images.isNotEmpty)
              SizedBox(
                height: 300, // Set the height for the carousel
                child: CarouselSlider.builder(
                  itemCount: images.length, // Number of images
                  itemBuilder: (context, index, realIndex) {
                    return ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                      child: Image.network(
                        images[index], // Access each image from the list
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                                  : null,
                            ),
                          );
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: const Center(child: Text('Failed to load image')),
                          );
                        },
                      ),
                    );
                  },
                  options: CarouselOptions(
                    height: 300,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
              )
            else
              // Fallback if there are no images
              Container(
                height: 300,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                ),
                child: const Text(
                  'No images available',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            const SizedBox(height: 40),
            Text(
              product['name'] ?? 'Unknown Item',
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            ),
            const SizedBox(height: 8),
            Text(
              '\$${product['price'] ?? 'N/A'}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: const Color(0xfff3f3f3),
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        minimumSize: const Size.fromHeight(48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        side: const BorderSide(
                          color: Color(0xffe7e7e8),
                          style: BorderStyle.solid,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        '🔵 Blue',
                        style: TextStyle(
                            color: Color(0xffb7b7b8),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: const Color(0xffffffff),
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        minimumSize: const Size.fromHeight(48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        side: const BorderSide(
                          color: Color(0xffe7e7e8),
                          style: BorderStyle.solid,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Size',
                        style: TextStyle(
                            color: Color(0xff3e3e40),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 52),
            const Text(
              'Details',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff272728)),
            ),
            const SizedBox(height: 16),
            const Text(
              'Description',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(height: 5),
            const Text(
              'This is a detailed description of the product. It will have more information about the product, including features, materials, and more.',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff575758)),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
