import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opc =  ['uno', 'dos', 'tres', 'cuatro', 'cinco'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        //children: _crearItems()
        children: _crearItemsCorta(),
      ),
    );
  
  }


  List <Widget> _crearItems(){
    
    List<Widget> lista = new List<Widget>();

    for (String opciones in opc) {
      
      final tempWidget = ListTile(
        title: Text(opciones),
      );

      lista..add ( tempWidget  )
           ..add( Divider() );
      
    }

  return lista;

  }

  List<Widget> _crearItemsCorta(){

    return opc.map( (item) {
        return Column(
          children: <Widget>[
            ListTile(
              title: Text(item + '!'),
              subtitle: Text('Hola'),
              leading: Icon(Icons.airport_shuttle),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){},
            ),
            Divider()
          ],
        );
     }).toList();
     
  }


}

