import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  final void Function()? onTap;
  const ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
   Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(shoe.imagePath),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              shoe.description,
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Ghc ${shoe.price}',
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12.0),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: const Icon(Icons.add, color: Colors.white)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
