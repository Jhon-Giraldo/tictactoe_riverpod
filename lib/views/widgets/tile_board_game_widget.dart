import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class TileBoardGameWidget extends StatelessWidget {
  final bool left, right, bottom, top;
  final bool? isPlayerOne;

  const TileBoardGameWidget(
      {Key? key,
      this.left = false,
      this.right = false,
      this.bottom = false,
      this.top = false,
      this.isPlayerOne})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String tmp = '';
    if (isPlayerOne != null) {
      tmp = isPlayerOne == true? 'O' : 'X';
    }

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
            left: left ? borderSide : BorderSide.none,
            top: top ? borderSide : BorderSide.none,
            right: right ? borderSide : BorderSide.none,
            bottom: bottom ? borderSide : BorderSide.none),
      ),
      child: Text(tmp,
          style: TextStyle(
              color: Theme.of(context).canvasColor,
              fontSize: Responsive.distanceText(context, 7.2))),
    );
  }
}
