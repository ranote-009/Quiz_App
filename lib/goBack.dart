import 'package:flutter/material.dart';

class GoBack extends StatelessWidget {
  final VoidCallback selectHandler;
  GoBack(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.grey,
        child: Text('Restart'),
        onPressed: selectHandler,
      ),
    );
  }
}
