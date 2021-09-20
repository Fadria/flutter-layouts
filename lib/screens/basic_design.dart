import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column
      (
        children: 
        [
          // Imagen
          Image(image: AssetImage('assets/landscape.jpg')),

          // Titulo
          Title(),

          // Bottom Section
          ButtomSection(),

          // Descripción
          Container
          ( margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
            child: Text(
              'Aute ut qui adipisicing dolore commodo ut. Magna reprehenderit laborum occaecat mollit adipisicing irure ad laborum cillum proident. Qui commodo voluptate deserunt ex exercitation dolor elit ut. Ad minim mollit incididunt eiusmod labore est qui.', 
              textAlign: TextAlign.justify
            ))
        ],
      )
   );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row
      (
        children: 
        [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: 
            [
              Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45)),
            ]),

          Expanded(child: Container()),//Toma todo el espacio para que cada elemento quede en un extremo de la fila
          Icon(Icons.star, color: Colors.red),
          Text('41')
        ],
      ),
    );
  }
}

class ButtomSection extends StatelessWidget {
  const ButtomSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row
      (
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: 
        [
          CustomButton(icon: Icons.call, text: 'Call'),
          CustomButton(icon: Icons.map_sharp, text: 'Route'),
          CustomButton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;
  
  const CustomButton({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column
    (
      children: 
      [
        Icon(this.icon, color: Colors.blue, size: 30),
        Text(this.text, style: TextStyle(color: Colors.blue))
      ],
    );
  }
}