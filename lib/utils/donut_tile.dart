import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final dynamic donutColor; //Dynamic porque es tipo Color y también usará[]
  final String imageName;

  //Valor fijo para el borde circular
  final double borderRadius = 24;

  const DonutTile(
      {super.key,
      required this.donutFlavor,
      required this.donutPrice,
      required this.donutColor,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
          decoration: BoxDecoration(
              color: donutColor[50],
              borderRadius: BorderRadius.circular(borderRadius)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: donutColor[100],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(borderRadius),
                            bottomLeft: Radius.circular(borderRadius))),
                    padding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 18),
                    child: Text(
                      '\$$donutPrice',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: donutColor[800]),
                    ),
                  )
                ],
              ),
            //Donut picture
                Padding(padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 0),
                child: Image.asset(imageName),)
                ,Text(donutFlavor, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                const Text('Dunkins', style: TextStyle(fontSize: 15),)
            //Donut flavor text
            //Love icon + add button
            ],

          )),
    );
  }
}
