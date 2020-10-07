import 'package:componentes/src/pages/alert_pages.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('components'),
      ),
      body: _lista(),
    );
  }

  Widget _lista(){
    
    //menuProvider.cargarData()
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot <List <dynamic> > snapshot){

        return ListView(
          children: _listaItems( snapshot.data, context ),
        );

      },
      );


 
  }

  List<Widget> _listaItems(List <dynamic> data, BuildContext context) {
   final List <Widget> opt = [];
   
   data.forEach(  (opciones)  {

     final widgetTemp = ListTile(
       title: Text( opciones['texto']),
       leading: getIcon(opciones['icon']),
       trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue,),
       onTap: (){
        
        Navigator.pushNamed(context, opciones['ruta']);
        
//        final route = MaterialPageRoute(
//          builder: ( context ) => AlertPage()
          
//        );



//         Navigator.push(context, route);

       },
     );

    opt..add(widgetTemp)
       ..add(Divider());

   });
  return opt;
  
  }

   


}