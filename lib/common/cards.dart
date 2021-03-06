import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  final Widget child;

  Card(this.child);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      constraints: BoxConstraints(minHeight: 70),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        border: Border.all(color: Theme.of(context).cardTheme.color),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Material(
        color: Colors.transparent,
        child: Center(child: child),
      ),
    );
  }
}

class Tip extends StatelessWidget {
  final String value;

  Tip(this.value);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: true,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 11, horizontal: 13),
            constraints: BoxConstraints(maxWidth: 253),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              border: Border.all(color: Theme.of(context).primaryColor),
              borderRadius: BorderRadius.all(Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 4,
                    offset: Offset(0, 2)),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: Center(
                  child: Text(
                value,
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(color: Colors.white, fontSize: 14),
              )),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 127,
            child: SizedBox(
              width: 10,
              height: 10,
              child: Transform(
                transform: Matrix4.diagonal3Values(0.8, 1.2, 0)..rotateZ(0.8),
                child: Material(
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  color: Theme.of(context).primaryColor.withAlpha(250),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
