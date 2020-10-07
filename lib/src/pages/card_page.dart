import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards')
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0) ,
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
        ],
      ),
    );
  }

  
 Widget _cardTipo1() {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon (Icons.photo_album, color: Colors.blue),
            title: Text('Soy el mero verga'),
            subtitle: Text('esta es mi prrimera app y es para ayudarme a la realizacion de un proyecto de la universidad, esto es un texto largo y pues no se que poner... besos en el pedorro'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end ,
            children: <Widget>[
              FlatButton(
                child: Text('Cancel'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: (){})
            ]
          )
        ],
      ),
    );
  }
}

Widget _cardTipo2(){
  final card = Container(
    // clipBehavior: Clip.antiAlias,
    child: Column(
      children: <Widget>[

        FadeInImage(
          image: NetworkImage('https://images.unsplash.com/photo-1536257104079-aa99c6460a5a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration( milliseconds: 200),
          height: 250.0,
          fit: BoxFit.cover,
        
        ),

        // Image(
        //   image: NetworkImage('https://images.unsplash.com/photo-1536257104079-aa99c6460a5a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80') ,
        // ),
          
          Container(
            padding: EdgeInsets.all(10.0),  
            child: Text('No se que pedo')
          )
      ],
    ),
  );


  return Container(
    
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
          color:  Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0, 10.0)
        )
      ]
    ),
    child: ClipRRect(
      child: card,
      borderRadius: BorderRadius.circular(30.0),
    ),
  );
}