import 'package:flutter/material.dart';
import 'package:hw4/screens/cart_screen.dart';
import 'package:hw4/widget/container_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff6f6f6),
        appBar: AppBar(
          backgroundColor: const Color(0xfff6f6f6),
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
            )
          ],
        ),
        body: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(10),
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.7,
          children: const [
            ContainerWidget(
              imagePath: 'media/headphone.jpg',
              price: '300 SR',
              description: 'Beats Headphone',
              brand: 'Unbranded',
            ),
            ContainerWidget(
              imagePath: 'media/drone.jpg',
              price: '3000 SR',
              description: 'drone with the longest flite time',
              brand: 'Unbranded',
            ),
            ContainerWidget(
              imagePath: 'media/earbuds.jpg',
              price: '500 SR',
              description: 'earbuds pro',
              brand: 'Unbranded',
            ),
            ContainerWidget(
              imagePath: 'media/Speakers.jpg',
              price: '2000 SR',
              description: 'Maga Speaker ',
              brand: 'Unbranded',
            ),
            ContainerWidget(
              imagePath: 'media/iPhone14pro.jpg',
              price: '4000 SR',
              description: 'iPhone 14 pro',
              brand: 'apple',
            ),
            ContainerWidget(
              imagePath: 'media/samsung_s22.jpg',
              price: '3500 SR',
              description: 'samsung s22',
              brand: 'samsung',
            ),
            ContainerWidget(
              imagePath: 'media/apple_watch.jpg',
              price: '1400 SR',
              description: 'apple watch pro',
              brand: 'apple',
            ),
          ],
        ),
      ),
    );
  }
}
