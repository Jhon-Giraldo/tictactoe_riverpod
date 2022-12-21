import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widgets/tile_board_game_widget.dart';

class HomePage extends StatefulWidget {
  static const String playerOne = "O";
  static const String playerTwo = "X";

  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String actualPlayer = HomePage.playerOne;

  final List<String> positions = ["", "", "", "", "", "", "", "", ""];

  changeTurn() {
    if (actualPlayer == HomePage.playerOne) {
      actualPlayer = HomePage.playerTwo;
    } else {
      actualPlayer = HomePage.playerOne;
    }
  }

  @override
  Widget build(BuildContext context) {
    final boardGameWidthSize =
        Responsive.distancePercentFromWidth(context, 74.2718);

    return Scaffold(
        backgroundColor: Theme.of(context).primaryColorLight,
        body: Column(
          children: [
            SizedBox(
              height: Responsive.distancePercentFromHeight(context, 17.9372),
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
                    borderRadius: BorderRadius.circular(
                        Responsive.distanceText(context, 2.0)),
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
                  width: Responsive.distancePercentFromWidth(context, 4.8543),
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
                height: Responsive.distancePercentFromHeight(context, 4.9327)),
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
                    children: [
                      InkWell(
                        onTap: () {
                          if (positions[0].isNotEmpty) {
                            return;
                          }
                          setState(() {
                            positions[0] = actualPlayer;
                            changeTurn();
                          });
                        },
                        child: TileBoardGameWidget(
                          right: true,
                          bottom: true,
                          tmp: positions[0],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (positions[1].isNotEmpty) {
                            return;
                          }
                          setState(() {
                            positions[1] = actualPlayer;
                            changeTurn();
                          });
                        },
                        child: TileBoardGameWidget(
                          right: true,
                          bottom: true,
                          tmp: positions[1],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (positions[2].isNotEmpty) {
                            return;
                          }
                          setState(() {
                            positions[2] = actualPlayer;
                            changeTurn();
                          });
                        },
                        child: TileBoardGameWidget(
                          bottom: true,
                          tmp: positions[2],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          if (positions[3].isNotEmpty) {
                            return;
                          }
                          setState(() {
                            positions[3] = actualPlayer;
                            changeTurn();
                          });
                        },
                        child: TileBoardGameWidget(
                          right: true,
                          bottom: true,
                          tmp: positions[3],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (positions[4].isNotEmpty) {
                            return;
                          }
                          setState(() {
                            positions[4] = actualPlayer;
                            changeTurn();
                          });
                        },
                        child: TileBoardGameWidget(
                          right: true,
                          bottom: true,
                          tmp: positions[4],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (positions[5].isNotEmpty) {
                            return;
                          }
                          setState(() {
                            positions[5] = actualPlayer;
                            changeTurn();
                          });
                        },
                        child: TileBoardGameWidget(
                          bottom: true,
                          tmp: positions[5],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          if (positions[6].isNotEmpty) {
                            return;
                          }
                          setState(() {
                            positions[6] = actualPlayer;
                            changeTurn();
                          });
                        },
                        child: TileBoardGameWidget(
                          right: true,
                          tmp: positions[6],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (positions[7].isNotEmpty) {
                            return;
                          }
                          setState(() {
                            positions[7] = actualPlayer;
                            changeTurn();
                          });
                        },
                        child: TileBoardGameWidget(
                          right: true,
                          tmp: positions[7],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (positions[8].isNotEmpty) {
                            return;
                          }
                          setState(() {
                            positions[8] = actualPlayer;
                            changeTurn();
                          });
                        },
                        child: TileBoardGameWidget(
                          tmp: positions[8],
                        ),
                      ),
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
        ));
  }
}