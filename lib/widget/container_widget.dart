import 'package:flutter/material.dart';
import 'package:hw4/screens/product_screen.dart';

class ContainerWidget extends StatelessWidget {
  final String imagePath;
  final String price;
  final String description;
  final String brand;

  const ContainerWidget({
    Key? key,
    required this.imagePath,
    required this.price,
    required this.description,
    required this.brand,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductScreen(
              imagePath: imagePath,
              price: price,
              description: description,
              brand: brand,
            ),
          ),
        );
      },
      child: Container(
        width: 200,
        height: 400,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 20,),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 20,),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 20,),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  brand,
                  style: const TextStyle(
                    fontSize: 8,
                    color: Colors.grey,
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
