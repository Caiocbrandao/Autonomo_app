import 'package:flutter/material.dart';

class Pesquisar extends StatefulWidget {
  @override
  _PesquisarState createState() => _PesquisarState();
}

class _PesquisarState extends State<Pesquisar> {
  @override
  Widget build(BuildContext context) {
    return 

      Container(
        child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 0),
                    child: Text(
                      "Pesquisar",
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Digite aqui',
                      ),
                    ),
                  ),
                ],
              ),
      );
  }
}