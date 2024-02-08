import 'package:flutter/material.dart';
import 'package:hw4/screens/cart_screen.dart';

class ProductScreen extends StatefulWidget {
  final String imagePath;
  final String price;
  final String description;
  final String brand;

  const ProductScreen({
    required this.imagePath,
    required this.price,
    required this.description,
    required this.brand,
  });

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool isFavorite = false;
  int itemCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartScreen(),
                ),
              );
            },
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                widget.imagePath,
                width: 200,
                height: 200,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 50),
              Text(
                widget.description,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ToggleButtons(
                    borderRadius: BorderRadius.circular(20),
                    isSelected: const [false, false, false],
                    onPressed: (int index) {
                      setState(() {
                        if (index == 0 && itemCount > 0) {
                          itemCount--;
                        } else if (index == 2) {
                          itemCount++;
                        }
                      });
                    },
                    children: [
                      const Text('-', style: TextStyle(fontSize: 16)),
                      Text('$itemCount', style: const TextStyle(fontSize: 16)),
                      const Text('+', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  Text(
                    widget.price,
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About the Product',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                        height: 10.0), // Add spacing between the title and text
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                      'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
                      'nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in '
                      'reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla ',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : null,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(250, 100),
                  backgroundColor: const Color(0xFFE2CEB6),
                ),
                onPressed: () {},
                child: const Text(
                  "Add to cart",
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
