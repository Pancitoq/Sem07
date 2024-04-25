import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> menuOptions = [
    {
      'title': 'Home',
      'subtitle': 'Home',
      'image': 'https://cdn-icons-png.flaticon.com/512/25/25694.png',
    },
    {
      'title': 'Profile',
      'subtitle': 'Profile',
      'image':
          'https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTAxL3JtNjA5LXNvbGlkaWNvbi13LTAwMi1wLnBuZw.png',
    },
    {
      'title': 'Chat',
      'subtitle': 'Chat',
      'image':
          'https://static.vecteezy.com/system/resources/thumbnails/005/337/802/small/icon-symbol-chat-outline-illustration-free-vector.jpg',
    },
    {
      'title': 'Youtube',
      'subtitle': 'Youtube',
      'image':
          'https://static.vecteezy.com/system/resources/thumbnails/011/998/173/small_2x/youtube-icon-free-vector.jpg',
    },
    {
      'title': 'WhatsApp',
      'subtitle': 'Whatsapp',
      'image':
          'https://cdn-icons-png.flaticon.com/512/1384/1384023.png',
    },
    {
      'title': 'Twitter',
      'subtitle': 'Twitter',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQn-60toIeGj6TrhbNJSgrgsT5elu7rmPE8ViB_TqzHdw&s',
    },
    {
      'title': 'Google',
      'subtitle': 'Google',
      'image':
          'https://cdn-icons-png.flaticon.com/512/300/300221.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu Personalizado',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menu hamburguesa'),
        ),
        body: ListView.builder(
          itemCount: menuOptions.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Image.network(
                  menuOptions[index]['image'],
                  width: 50,
                  height: 50,
                ),
                title: Text(menuOptions[index]['title']),
                subtitle: Text(menuOptions[index]['subtitle']),
                onTap: () {
                  print('Seleccionaste ${menuOptions[index]['title']}');
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
