import "package:flutter/material.dart";

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Bố đây'),
      ),
      
      body: const Center(
        child: Text('Hello, Scaffold!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action when button is pressed
          print(" Floating Action Button Pressed ");
        },
        child: const Icon(Icons.add_a_photo),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Chat"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),

      ]  ),
      
    );
  }
}