import 'package:flutter/material.dart';

class Plato {
  final String Nombre;
  final String Precio;
  final String Imagen;
  
  Plato({required this.Nombre, required this.Precio, required this.Imagen});
}
  
List<Plato> platosMenu = [
  Plato(
    Nombre: 'Causa',
    Precio: '10.00',
    Imagen: "https://www.shutterstock.com/shutterstock/photos/1725218125/display_1500/stock-photo-traditional-peruvian-dish-called-causa-made-of-mashed-potato-with-aji-hot-pepper-and-lime-juice-and-1725218125.jpg"
  ),
  Plato(
    Nombre: 'Lomo Saltado',
    Precio: '10.00',
    Imagen: "https://www.shutterstock.com/shutterstock/photos/2279358967/display_1500/stock-photo-a-vegan-twist-on-the-classic-peruvian-dish-lomo-saltado-made-with-stir-fried-mushrooms-onions-2279358967.jpg"
  ),
   Plato(
    Nombre: 'Arroz verde',
    Precio: '10.00',
    Imagen: "https://www.shutterstock.com/shutterstock/photos/296210192/display_1500/stock-photo-peruvian-cuisine-chicken-and-rice-called-arroz-con-pollo-296210192.jpg"
  ),
   Plato(
    Nombre: 'Pescado frito',
    Precio: '10.00',
    Imagen: "https://www.shutterstock.com/shutterstock/photos/2028329357/display_1500/stock-photo-fried-fish-with-patacones-or-tostones-2028329357.jpg"
  ),
   Plato(
    Nombre: 'Lentejitas',
    Precio: '10.00',
    Imagen: "https://www.shutterstock.com/shutterstock/photos/2363152069/display_1500/stock-photo--typical-peruvian-menu-of-a-dish-of-lentils-with-rice-and-pieces-of-juicy-meat-2363152069.jpg"
  ),
    Plato(
    Nombre: 'Mondonguito',
    Precio: '10.00',
    Imagen: "https://www.shutterstock.com/shutterstock/photos/1041802474/display_1500/stock-photo-italian-cooked-tripe-traditional-dish-of-the-peruvian-gastronomy-called-mondonguito-a-la-italiana-1041802474.jpg"
  ),
   Plato(
    Nombre: 'Aji de gallina',
    Precio: '10.00',
    Imagen: "https://www.shutterstock.com/shutterstock/photos/2313772763/display_1500/stock-photo-comida-peruana-aji-de-gallina-anticucho-2313772763.jpg"
  ),
  Plato(
    Nombre: 'Rocoto relleno',
    Precio: '10.00',
    Imagen: "https://www.shutterstock.com/shutterstock/photos/1156407181/display_1500/stock-photo-peruvian-food-rocoto-relleno-a-filled-pepper-with-meal-and-cheese-1156407181.jpg"
  ),
  Plato(
    Nombre: 'Pollo a la brasa',
    Precio: '10.00',
    Imagen: "https://www.shutterstock.com/shutterstock/photos/1778330294/display_1500/stock-photo-peruvian-dish-pollo-a-la-brasa-1778330294.jpg"
  ),
  Plato(
    Nombre: 'Ceviche',
    Precio: '10.00',
    Imagen: "https://www.shutterstock.com/shutterstock/photos/2090292532/display_1500/stock-photo-peruvian-ceviche-traditional-peruvian-food-2090292532.jpg"
  ),
];


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Carta Menu'),
        ),
        body: ListView.builder(
          itemCount: platosMenu.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Image.network(platosMenu[index].Imagen),
                title: Text(platosMenu[index].Nombre),
                subtitle: Text(platosMenu[index].Precio),
              ),
            );
          },
        ),
      ),
    );
  }
}
