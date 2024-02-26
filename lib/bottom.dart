import 'package:flutter/material.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book store'),
            actions: [
              IconButton(
                icon: const Icon(Icons.search), onPressed: () {  },
      )
        ],
      ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.grey.shade600,

            items: const[
              BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(Icons.home) ),
              BottomNavigationBarItem(
                  label: 'Catelog',
                  icon: Icon(Icons.home) ),
              BottomNavigationBarItem(
                  label: 'About Us',
                  icon: Icon(Icons.home) ),
              BottomNavigationBarItem(
                  label: 'Contact Us',
                  icon: Icon(Icons.home) )
            ],
          ),
      drawer: Drawer(
        width: 200,
        backgroundColor: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                   fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6),BlendMode.darken),
                    image: const NetworkImage('https://ichef.bbci.co.uk/images/ic/1200x675/p0gl91h1.jpg')
                
              ),
            )
            )
          ],
        ),
      ),
    );
    
  }
}
