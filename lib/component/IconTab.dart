import 'package:flutter/material.dart';

class IconTab extends StatefulWidget {
  final String text;
  final String icon;
  final Color color;

  const IconTab(this.text, this.icon, this.color, {super.key})
      : assert(text != null || icon != null || color != null);

  @override
  State<StatefulWidget> createState() {
    return IconTabState();
  }
}

const double _kTextAndIconTabHeight = 53.0;

class IconTabState extends State<IconTab> {
  Widget _buildTitleText() {
    return Text(widget.text,
        softWrap: false,
        overflow: TextOverflow.fade,
        style: TextStyle(color: widget.color));
  }

  @override
  Widget build(BuildContext context) {
    Widget label = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(widget.icon),
          height: 30.0,
          width: 30.0,
        ),
        _buildTitleText()
      ],
    );
    return SizedBox(
        height: _kTextAndIconTabHeight,
        width: _kTextAndIconTabHeight,
        child: label);
  }
}
