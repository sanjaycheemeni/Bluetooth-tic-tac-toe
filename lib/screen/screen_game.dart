import 'package:bluetooth_tictactoe/constants/Colors.dart';
import 'package:flutter/material.dart';

import '../controller/gameControl.dart';
import '../widgets/inputContainer.dart';

class GameHome extends StatefulWidget {
  GameHome({super.key});

  @override
  State<GameHome> createState() => _GameHomeState();
}

class _GameHomeState extends State<GameHome> {
  List<String> marks = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];
  List<int> player1_moves = [];
  List<int> player2_moves = [];
  String winText = '';

  bool isPlayer1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //title
          Text(
            'tic.tac.toe',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: textColor),
          ),

          //GameArea
          Center(
            child: SizedBox(
                height: 320,
                width: MediaQuery.of(context).size.width - 100,
                child: GridView.builder(
                    physics: ClampingScrollPhysics(),
                    itemCount: 9,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          mark(index);
                          isPlayer1 = !isPlayer1;
                        },
                        child: InputBoxWithDecor(
                          id: index,
                          mark: marks[index],
                        ),
                      );
                    })),
          ),

          //uiBalancing widget
          Text(
            winText,
            style: const TextStyle(
                color: Color.fromARGB(255, 133, 255, 149), fontSize: 29),
          )
        ],
      )),
    );
  }

  void mark(int index) {
    if (isPlayer1) {
      player1_moves.add(index + 1);
      print(player1_moves);
    } else {
      player2_moves.add(index + 1);
      print(player2_moves);
    }
    setState(() {
      if (marks[index] == '') {
        marks[index] = (isPlayer1) ? 'x' : 'o';
      }

      winText = winCheck(isPlayer1 ? player1_moves : player2_moves,
          isPlayer1 ? 'player 1' : 'player 2');
    });
  }
}

String winCheck(List<int> list, String player) {
  if (isPlayerWin(list)) {
    return (player + ' wins!!');
  }
  return '';
}
