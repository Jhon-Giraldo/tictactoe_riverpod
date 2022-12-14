import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widgets/tile_board_game_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final boardGameWidthSize = 
      Responsive.distancePercentFromWidth(context, 74.2718);
    
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      body: Column(
        children: [
          SizedBox(
            height: Responsive.distancePercentFromHeight(
              context, 17.9372),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: Responsive.distancePercentFromHeight(context, 4.4843),
                width: Responsive.distancePercentFromWidth(context, 34.9514),
                decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor, 
                  borderRadius: BorderRadius.circular(Responsive.distanceText(context, 2.0)),
                ),
                child: Text(
                  'Jugador 1 O', 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Responsive.distanceText(context, 1.8),
                    color: Theme.of(context).primaryColorDark,
                  ),
                ),
              ),
              SizedBox(
                width: Responsive.distancePercentFromWidth(
                  context, 4.8543),
              ),
              Container(
                alignment: Alignment.center,
                height: Responsive.distancePercentFromHeight(context, 4.4843),
                width: Responsive.distancePercentFromWidth(context, 34.9514),
                decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor, 
                  borderRadius: BorderRadius.circular(100),
                  
                ),
                child: Text(
                  'Jugador 2 X', 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Responsive.distanceText(context, 1.8),
                    color: Theme.of(context).primaryColorDark,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: Responsive.distancePercentFromHeight(context, 4.9327)
          ),
          Text(
            'Inicia la partida', 
            style: TextStyle(
              fontSize: Responsive.distanceText(context, 2.6),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: Responsive.distancePercentFromHeight(context, 6.2780),
          ),

          //BoardGame
          SizedBox(
            width: boardGameWidthSize,
            height: boardGameWidthSize,
            child: Column(
              children: [
                Row(
                  children: const [
                    TileBoardGameWidget(right: true, bottom: true),
                    TileBoardGameWidget(right: true, bottom: true),
                    TileBoardGameWidget(bottom: true),

                  ],
                ),
                Row(
                  children: const [
                    TileBoardGameWidget(right: true, bottom: true),
                    TileBoardGameWidget(right: true, bottom: true, isPlayerOne: false),
                    TileBoardGameWidget(bottom: true, isPlayerOne: false),

                  ],
                ),
                Row(
                  children: const [
                    TileBoardGameWidget(right: true),
                    TileBoardGameWidget(right: true),
                    TileBoardGameWidget(),

                  ],
                ),
              ],
            ),
          ),

          const Expanded(
            child: SizedBox.shrink(),
          ),
          SizedBox(
            height: Responsive.distancePercentFromHeight(context, 5.9417),
            width: Responsive.distancePercentFromWidth(context, 83.4951),
            child: Image.asset('assets/patrocina.png'),
          ),
          SizedBox(
            height: Responsive.distancePercentFromHeight(context, 3.1390),
          ),
        ],
      )
    );
  }
}

    
