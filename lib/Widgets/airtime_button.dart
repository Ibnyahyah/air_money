import 'package:flutter/material.dart';

class AirtimeButton extends StatelessWidget {
  final String label;
  final double _margin;
  final Function handleChange;
  const AirtimeButton(this.label, this.handleChange, this._margin, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 70,
        margin: EdgeInsets.only(left: _margin),
        child: OutlinedButton(
          onPressed: () => handleChange,
          child: Image(
            image: AssetImage(label),
            fit: BoxFit.contain,
            width: 40,
          ),
        ),
      ),
    );
  }
}
