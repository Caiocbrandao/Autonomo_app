import 'package:autonomo_app/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class Categorias extends StatefulWidget {
  @override
  _CategoriasState createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10, top: 0),
            alignment: Alignment.centerLeft,
            child: Text(
              "Categorias",
              style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.w400,
                fontSize: 24,
              ),
            ),
          ),

// view
          SizedBox(
            height: 240,
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              scrollDirection: Axis.horizontal,
              itemCount: 9,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  // color: Colors.redAccent,
                  height: 120,
                  width: 120,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Card(
                        color: darkBlue,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 120,
                              width: 250,
                              child: Container(
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      bottom: 50,
                                      left: 35,
                                      child: Icon(
                                        Icons.apps,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 25,
                                      left: 25,
                                      child: FittedBox(
                                        // fit: BoxFit.scaleDown,
                                        // alignment: Alignment.center,
                                        child: Text(
                                          "items",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 22,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
// vieew
        ],
      ),
    );
  }
}
