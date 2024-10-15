import 'package:flutter/material.dart';
import 'package:flutter_skl_1/features/details/product_details.dart';
import 'package:flutter_skl_1/features/inbox/inbox_page.dart';
import 'package:flutter_skl_1/preference/icons.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  int selectedIndex = 0;

  // List of categories
  List<String> categories = [
    'All',
    'Sustainable',
    'Nike',
    'Casual',
    'Lacoste',
    'Adidas',
    'Vintage',
    'Gucci',
    'Modern',
    'Puma',
    'Louis Vuitton',
    'Fendi',
    'Prada',
    'Balenciaga',
    'Versace',
    'Mizuno',
    'Burberry',
    'Dior',
    'Casio',
  ];

  // Dynamic data for the cards
  final List<Map<String, dynamic>> items = [
    {
      'name': 'Nike Dunk High Custom',
      'price': '150.00',
      'images': [
        'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png',
        'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/cbddd67b-444b-4a7c-b458-20643ab89b1b/custom-nike-dunk-high-by-you-shoes.png',
        'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/d1924c98-854b-461b-960c-e05e67f6308f/custom-nike-dunk-high-by-you-shoes.png',
        'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/5f054da9-907a-4153-a025-48bb64bf8520/custom-nike-dunk-high-by-you-shoes.png',
        'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/39c54a4a-bcff-4aaf-b599-3cd07b8a0a05/custom-nike-dunk-high-by-you-shoes.png',
        'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/a799a997-19d9-474e-93a5-e68691b4c151/custom-nike-dunk-high-by-you-shoes.png'
      ],
      'category': 'Nike',
    },
    {
      'name': 'Nike Dunk Low Panda',
      'price': '180.00',
      'images': [
        'https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/af53d53d-561f-450a-a483-70a7ceee380f/W+NIKE+DUNK+LOW.png'
      ],
      'category': 'Nike',
    },
    {
      'name': 'Nike Air Max SYSTM',
      'price': '110.00',
      'images': [
        'https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/21a31d67-31d9-47cd-bb16-23b2d22bc9d0/NIKE+AIR+MAX+SYSTM.png'
      ],
      'category': 'Nike',
    },
    {
      'name': 'Nike Air Max SC',
      'price': '95.00',
      'image':
          'https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/b00277c3-a26b-4d49-bb4d-96745e07f4ee/WMNS+NIKE+AIR+MAX+SC.png',
      'category': 'Nike',
    },
    {
      'name': 'Nike Air Force 1 \'07 ',
      'price': '650.00',
      'category': 'Nike',
      'image':
          'https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/51a183a0-6e1b-4de7-a1ca-ba88b9bbb36f/AIR+FORCE+1+%2707.png',
    },
    {
      'name': 'Nike Dunk Low Grey',
      'price': '1000.00',
      'category': 'Nike',
      'image':
          'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/05856ac7-0129-4395-bd6e-2fe2669025fb/custom-nike-dunk-low-by-you-su24.png',
    },
    {
      'name': 'Nike Air Max Plus',
      'price': '895.00',
      'category': 'Nike',
      'image':
          'https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/lx0owmisj943sr59emb8/AIR+MAX+PLUS.png',
    },
    {
      'name': 'Nike Cortez Leather',
      'price': '950.00',
      'category': 'Nike',
      'image':
          'https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/3f6f52e9-f18a-4eb2-8788-61bc06f08a5a/NIKE+CORTEZ.png',
    },
    {
      'name': 'Saola Shoes Sport',
      'price': '120.00',
      'image':
          'https://saola.com/cdn/shop/files/men-tsavo-2.0-wool-black-steel-grey-SAO2114-117-right-side-saola-low-logo-NEW_85db723c-ef73-498c-92c0-5f320daf6deb.jpg?v=1725543290&width=1080',
      'category': 'Sustainable',
    },
    {
      'name': 'Saola Shoes Womens',
      'price': '511.00',
      'image':
          'https://saola.com/cdn/shop/files/women-tsavo-2.0-wool-black-steel-grey-SAO5125-117-right-side-saola-low-logo-NEW.jpg?v=1723621981&width=1080',
      'category': 'Sustainable',
    },
    {
      'name': 'Saola Shoes Casual',
      'price': '234.00',
      'image':
          'https://saola.com/cdn/shop/files/men-tsavo-2.0-wool-ultimate-grey-SAO2114-115-right-side-saola-low-logo-NEW_5f296778-c868-43ad-a648-b350ad8f0647.jpg?v=1723621952&width=1080',
      'category': 'Sustainable',
    },
    {
      'name': 'Oxford Dress Shoe',
      'price': '1234.00',
      'image': 'https://vhny.us/cdn/shop/products/x366A1074.jpg?v=1679747198',
      'category': 'Casual',
    },
    {
      'name': 'Chairman Shoes',
      'price': '1234.00',
      'image':
          'https://thursdayboots.com/cdn/shop/files/1024x1024-Men-Chairman-Black-051323-3.4_1024x1024.jpg?v=1685967834',
      'category': 'Casual',
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredItems = items.where((item) {
      if (selectedIndex == 0) return true;
      return item['category'] == categories[selectedIndex];
    }).toList();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 23.0),
          child: IconButton(
            icon: const Icon(Icons.inbox_outlined, color: Color(0xff3e3e40)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const InboxPage(product: {},),
                ),
              );
            },
          ),
        ),
        title: const Text(
          'Feed',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 23.0),
            child: IconButton(
              icon: const Icon(CustomIcon.search),
              color: const Color(0xff3e3e40),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 15),
          SizedBox(
            height: 52,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34.0),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                separatorBuilder: (context, index) => const SizedBox(width: 12),
                itemBuilder: (context, index) {
                  var isSelected = selectedIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          categories[index],
                          style: TextStyle(
                            fontSize: 16,
                            color: isSelected
                                ? const Color(0xff272728)
                                : const Color(0xff868687),
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                        const SizedBox(height: 4),
                        if (isSelected)
                          Container(
                            width: 6,
                            height: 6,
                            decoration: const BoxDecoration(
                              color: Color(0xff6C5ECF),
                              shape: BoxShape.circle,
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          FeedContent(items: filteredItems),
        ],
      ),
    );
  }
}

class FeedContent extends StatelessWidget {
  const FeedContent({super.key, required this.items});

  final List<Map<String, dynamic>> items;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.75,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            List<dynamic> images = item['images'] ?? ['https://via.placeholder.com/150'];

            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailPage(product: item),
                  ),
                );
              },
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(12),
                          bottom: Radius.circular(12),
                        ),
                        child: Image.network(
                          images[0],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          errorBuilder: (context, error, stackTrace) => Container(
                            color: Colors.grey[200],
                            child: const Center(
                              child: Text('Image not available'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['name'] ?? 'Unknown Item',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '\$${item['price'] ?? 'N/A'}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: FeedPage()));
}
