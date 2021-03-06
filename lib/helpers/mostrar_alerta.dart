import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

mostrarAlerta(BuildContext context, String titulo, String subtitulo) {
  if (Platform.isIOS) {
    return showCupertinoDialog(
      context: context,
      builder: (_) => CupertinoAlertDialog(
        title: Text(titulo),
        content: Text(subtitulo),
        actions: <Widget>[
          CupertinoDialogAction(
            isDefaultAction: true,
            child: Text('Aceptar'),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }

  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: Text(titulo),
      content: Text(subtitulo),
      actions: <Widget>[
        MaterialButton(
          child: Text('Aceptar'),
          elevation: 5,
          textColor: Colors.blue,
          onPressed: () => Navigator.pop(context),
        )
      ],
    ),
  );
}
