import 'package:flutter/material.dart';


//en la carpeta util es para aquellos archivos que podre utilizar a futuro 
//sin importal en que lugar de la app este

final _icons= <String, IconData>{
  'add_alert'     :   Icons.add_alert,
  'accessibility' :   Icons.accessibility,
  'folder_open'   :   Icons.folder_open,
  'donut_large'   :   Icons.donut_large,
  'input'         :   Icons.input,
  'tune'          :   Icons.tune,
  'list'          :   Icons.list,

};


Icon getIcon( String nombreIcono){
  return Icon( _icons[nombreIcono], color: Colors.blue,);
} 