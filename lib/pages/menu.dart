import 'package:flutter/material.dart';
import 'package:restaurants/pages/profile.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Menu',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Usama.png'),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    // controller: searchController,
                    decoration: InputDecoration(
                        prefixIcon:
                        Icon(Icons.search, color: Colors.grey[500]),
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        hintText: 'Search Food',
                        border: InputBorder.none),
                  )),

            ])));
  }
}
