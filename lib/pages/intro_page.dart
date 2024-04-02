import 'package:ecommerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset('assets/images/logo.png',
                color: Colors.white,
                height: 240,
                ),
              ),
                const SizedBox(
                    height: 48,
                  ),
                  const Text(
                    'Just Do It',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'Brand new sneakers and custom kicks made with premium quality',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomePage())),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(25),
                    child: const Center(
                      child: Text(
                        'Shop Now',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
          ],),
        ),
      ),
    );
  }
}