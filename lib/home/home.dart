import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:magazineluiza/models/itens.dart';
import 'package:magazineluiza/provider/itens.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ofertas MagaLu"),
        leading: Image.asset(
          "assets/images/logo.jpg",
          height: 25,
          alignment: Alignment.centerRight,
        ),
        leadingWidth: 50,
      ),
      
      body: ListView.builder(
        itemBuilder: builder,
        itemCount: listOfItens.length,
      ),
    );
  }

  Widget builder(BuildContext context, int index) {
    Itens itens = listOfItens.elementAt(index);
    return ListTile(
        trailing: IconButton(
          icon: Icon(
            (itens.isFavorite) ? Icons.favorite : Icons.favorite_border,
            color: Colors.pink.shade600,
            size: 20,
          ),
          onPressed: () {
            setState(() {
              itens.isFavorite = !itens.isFavorite;
            });
          },
        ),
        title: Row(
          children: [
            ClipPath(
              child: Image.asset(
                itens.photo,
                width: 100,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(itens.title,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 6),
                Text(
                  itens.specifications,
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 20),
                Text(
                  itens.price,
                  style: TextStyle(
                      color: Colors.blue.shade600,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  itens.plots,
                  style: TextStyle(color: Colors.blue.shade600, fontSize: 13),
                )
              ],
            ))
          ],
        ));
  }
}
