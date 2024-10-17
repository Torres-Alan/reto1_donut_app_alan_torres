import 'package:flutter/material.dart';
import 'package:reto1_donut_app_alan_torres/utils/my_tab.dart';
import '../tab/burger_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    //donut tab
    const MyTab(iconPath: 'lib/icons/donut.png', name:'Donut'),

    //burger tab
    const MyTab(iconPath: 'lib/icons/burger.png', name:'Buguer'),

    //smoothie tab
    const MyTab(iconPath: 'lib/icons/smoothie.png', name:'Smoothie'),

    //pancakes tab
    const MyTab(iconPath: 'lib/icons/pancakes.png', name:'Pancakes'),

    //pizza tab
    const MyTab(iconPath: 'lib/icons/pizza.png', name:'Pizza'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(Icons.menu, color: Colors.grey[800], size: 36),
              onPressed: () {
                print('Botón de Menú');
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(Icons.person, color: Colors.grey[800], size: 36),
                onPressed: () {
                  print('Botón de Usuario');
                },
              ),
            )
          ],
        ),
        body: Column(children: [
          //TEXTO "I want to eat"
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Row(
              children: [
                Text("I want to ", style: TextStyle(fontSize: 32)),
                Text("Eat",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline)),
              ],
            ),
          ),
          //Tap Bar
          TabBar(tabs: myTabs),
          //Tap bar view
          Expanded(
            child: TabBarView(children: [
              //Donut tab
              DonutTab(),

              //Burger tab
              BurgerTab(),

              //Smoothie tab
              SmoothieTab(),

              //Pancakes tab
              PancakeTab(),

              //Pizza tab
              PizzaTab(),
            ]),
          ),
          // Contenedor del carrito
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // Cambia la posición de la sombra
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Información de items y precio
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2 Items | \$45',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Delivery Charges Included',
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                  ],
                ),
                // Botón "View Cart"
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink, // Color del botón
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    // Acción al presionar el botón
                  },
                  child: Text(
                    'View Cart',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
