
import 'package:flutter/material.dart';
import 'contact_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ABOUT US'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(22),
        child: Column(
          children: [
            const SizedBox(height: 25),

            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: const Color(0xFFDCE8F8),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Icon(
                Icons.lightbulb_rounded,
                size: 65,
                color: Color(0xFF2457A7),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'About Our Application',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Color(0xFF102B50),
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              'About Page',
              style: TextStyle(
                fontSize: 17,
                color: Color(0xFF4778BD),
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(23),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.07),
                    blurRadius: 15,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Who We Are',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF102B50),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'This application is designed to demonstrate '
                    'a simple and modern Flutter user interface. '
                    'It contains three pages with easy navigation '
                    'and a clean design.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.7,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            _featureCard(
              Icons.design_services_rounded,
              'Modern Design',
              'A clean and organized user interface.',
            ),

            _featureCard(
              Icons.navigation_rounded,
              'Easy Navigation',
              'Move between pages easily.',
            ),

            _featureCard(
              Icons.phone_android_rounded,
              'Flutter Application',
              'Built using Flutter and Dart.',
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContactPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.contact_mail_rounded),
                label: const Text(
                  'Contact Us',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2457A7),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _featureCard(IconData icon, String title, String description) {
    return Container(
      margin: const EdgeInsets.only(bottom: 13),
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(icon, size: 32, color: const Color(0xFF2457A7)),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF102B50),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: const TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
