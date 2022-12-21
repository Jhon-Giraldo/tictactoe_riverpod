import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class TileBoardGameWidget extends StatefulWidget {
  final bool left, right, bottom, top;
  final String tmp;

  const TileBoardGameWidget({
    Key? key,
    this.left = false,
    this.right = false,
    this.bottom = false,
    this.top = false, 
    required this.tmp
  }) : super(key: key);

  @override
  State<TileBoardGameWidget> createState() => _TileBoardGameWidgetState();
}

class _TileBoardGameWidgetState extends State<TileBoardGameWidget> {
  

  @override
  Widget build(BuildContext context) {
    final boardGameWidthSize =
        Responsive.distancePercentFromWidth(context, 74.2718);
    final tileSizeWidth = boardGameWidthSize / 3;
    final BorderSide borderSide = BorderSide(
        width: Responsive.distanceText(context, 0.65),
        color: Theme.of(context).primaryColorDark);

    return Container(
      alignment: Alignment.center,
      width: tileSizeWidth,
      height: tileSizeWidth,
      decoration: BoxDecoration(
        border: Border(
            left: widget.left ? borderSide : BorderSide.none,
            top: widget.top ? borderSide : BorderSide.none,
            right: widget.right ? borderSide : BorderSide.none,
            bottom: widget.bottom ? borderSide : BorderSide.none),
      ),
      child: Text(widget.tmp,
          style: TextStyle(
              color: widget.tmp == 'O' ? Theme.of(context).canvasColor : const Color(0xFF91D8F7),
              fontSize: Responsive.distanceText(context, 7.2))),
    );
  }
}
