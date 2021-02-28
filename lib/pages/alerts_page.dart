import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  void showAlert(BuildContext saltado){
    showDialog(
        context: saltado,
      builder: (saltado){
          return AlertDialog(
            title: Text("aqui va el titulo"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("contenido del dialogo"),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
          );
      }
    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("alertas"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            showAlert(context);


          },
          child: Text("mostrar alerta"),
        ),
      ),
    );
  }


}
