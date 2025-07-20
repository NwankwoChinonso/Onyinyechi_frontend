import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFC107), // Gold/Amber background
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.grid_view),
          onPressed: () {},
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black.withOpacity(0.2),
                elevation: 0,
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.add, color: Colors.black),
              label: const Text(
                "Get Premium",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          // Onyinyechi Image
          Center(
            child: Image.asset(
              'assets/onyinyechi_face.png', // <-- Save your black face image here
              height: 120,
            ),
          ),
          const SizedBox(height: 20),
          // Welcome Text
          const Text(
            "Hi, I'm Onyinyechi.",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'YourCustomFont', // optional
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "What can I do for you?",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 30),

          // Services Grid
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 20,
              runSpacing: 20,
              children: [
                serviceItem(Icons.public, "Real world problems"),
                serviceItem(Icons.build, "Real World Skills"),
                serviceItem(Icons.school, "Find scholarships"),
                serviceItem(Icons.search, "Find Post-Graduate programs"),
                serviceItem(Icons.map, "Career Roadmaps"),
                serviceItem(Icons.work, "Professional portfolio"),
                serviceItem(Icons.business_center, "Tailored job finder"),
                serviceItem(Icons.description, "Professional CVs"),
                serviceItem(Icons.mail, "Application Letters"),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black.withOpacity(0.1),
        child: Row(
          children: [
            const SizedBox(width: 10),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/onyinyechi_face.png'),
              radius: 15,
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Text(
                "Message Onyinyechi",
                style: TextStyle(fontSize: 16),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.mic),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to create service items
  Widget serviceItem(IconData icon, String text) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 30, color: Colors.black),
        const SizedBox(height: 8),
        SizedBox(
          width: 80,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}
