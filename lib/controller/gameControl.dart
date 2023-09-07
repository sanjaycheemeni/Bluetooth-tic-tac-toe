List<String> winCombinations = [
  '123',
  '456',
  '789',
  '147',
  '258',
  '369',
  '159',
  '753'
];

bool isPlayerWin(List<int> list) {
  for (int i = 0; i < 8; i++) {
    if (isMatching(list.join(), winCombinations[i].toString())) {
      return true;
    }
  }
  return false;
}

bool isMatching(String playerMoves, String winCombination) {
  Set<String> playerMovesSet = playerMoves.split('').toSet();

  Set<String> winCombinationSet = winCombination.split('').toSet();

  for (String character in winCombinationSet) {
    if (!playerMovesSet.contains(character)) {
      return false;
    }
  }
  return true;
}
