import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(50),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: const Icon(
                      Icons.watch_later_outlined,
                      size: 30,
                      color: Color.fromRGBO(255, 75, 58, 1),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Local Beat",
                    style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.titleLarge),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            SizedBox(
              width: double.infinity,
              height: 400,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    right: 0,
                    bottom: -20,
                    child: Image.asset('assets/ToyFaces_Tansparent_BG_29.png'),
                  ),
                  Positioned(
                    left: -80,
                    top: -20,
                    child: Image.asset('assets/ToyFaces_Tansparent_BG_49.png'),
                  ),
                  Positioned(
                    left: 0,
                    bottom: -100,
                    child: Container(
                      width: 500,
                      height: 500,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Color.fromRGBO(255, 75, 58, 1),
                            Color.fromRGBO(255, 74, 58, 0.285),
                            Colors.transparent
                          ],
                          stops: [0.1, 0.55, 0.70],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Get started',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
