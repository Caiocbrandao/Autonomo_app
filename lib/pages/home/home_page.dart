import 'package:autonomo_app/components/card.dart';
import 'package:autonomo_app/components/categorias.dart';
import 'package:autonomo_app/components/destaques.dart';
import 'package:autonomo_app/components/pesquisar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const PrimaryColor = const Color(0xff4285f4);
const WhiteColor = const Color(0xfffafafa);
const niceBlue = const Color(0xff0066cb);
const darkBlue = const Color(0xff0f64f2);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    trocaCor();
  }

  void trocaCor() {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    /* SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      systemNavigationBarColor: Colors.blue[800],
      systemNavigationBarDividerColor: null,
      systemNavigationBarIconBrightness: Brightness.light,
      // 0statusBarColor: Colors.transparent, 
      statusBarColor: Colors.blue[700],
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ));
/**/ */
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: niceBlue,
      systemNavigationBarDividerColor: null,
      systemNavigationBarIconBrightness: Brightness.light,
      // 0statusBarColor: Colors.transparent,
      statusBarColor: Colors.blue[700],
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
      // statusBarBrightness: Brightness.dark, only iphone
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Autônomo App",
          style: TextStyle(color: Colors.grey[900]),
        ),
        backgroundColor: WhiteColor,
        centerTitle: true,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.blue,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.blue,
            ),
            tooltip: 'Show Snackbar',
            onPressed: null,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: ListView(
            children: <Widget>[
              Destaques(),
              CardHome(),
              Categorias(),
              Pesquisar(),
            ],
          )),
        ],
      ),
      bottomNavigationBar: Container(
        height: 65,
        child: BottomNavigationBar(
          onTap: null,
          //currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              title: Text('Serviços'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Perfil'))
          ],
          type: BottomNavigationBarType.fixed,
          backgroundColor: niceBlue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.blue[400],
        ),
      ),
    );
  }
}
