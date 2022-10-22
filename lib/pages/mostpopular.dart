import 'package:flutter/material.dart';

class MostPopular extends StatefulWidget {
  final image;
  String title;

  MostPopular({required this.image , required this.title});

  @override
  State<MostPopular> createState() => _MostPopularState();
}

class _MostPopularState extends State<MostPopular> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        width: 150,
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(12),
          //   color: Colors.white
          // ),
        child: Column(
            children: [
              Expanded(
                  child: AspectRatio(
                    aspectRatio: 4/3,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(widget.image, fit: BoxFit.cover)
                    ),
                  )),

              SizedBox(height: 5),
              Text(widget.title,style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold
              ),)
              ]),
      ),
    );

  }
}
