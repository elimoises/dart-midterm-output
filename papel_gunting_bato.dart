//CC 206 dart_midterm_output

import 'dart:io';
import 'dart:math';

void main() {
  var i = 1;
  while (true) {
    //main game loop
    print("Round $i:");
    String playerMove = getPlayerMove();

    if (playerMove == "Quit") {
      return; //returning from void function exits it
    }
    //increments every round
    i++;
    print("You: $playerMove");
    String computerMove = getComputerMove();
    print("Bot: $computerMove");
    print(results(playerMove, computerMove));
  }
}

//takes player input
String getPlayerMove() {
  print(
      "Papel, Gunting, Bato! What's your pick? (P)Papel, (G)Gunting, (B)Bato");
  String selection = stdin.readLineSync().toUpperCase();

  switch (selection) {
    case "P":
      return "Papel";
      break;
    case "G":
      return "Gunting";
      break;
    case "B":
      return "Bato";
      break;
    default: //if anything but R, P, or S
      return "Quit";
      break;
  }
}

//generate random choice among three objects
String getComputerMove() {
  Random rand = new Random();
  int move = rand.nextInt(3); //random int from 0 to 2

  switch (move) {
    case 0:
      return "Papel";
      break;
    case 1:
      return "Gunting";
      break;
    case 2:
      return "Bato";
      break;
    default:
      break;
  }
}

//determines if who's the winner or if it's a tie
String results(String playerMove, String computerMove) {
  if (playerMove == computerMove) {
    //if the same, it's a tie
    return "Tie";
  } else if (playerMove == "Bato" && computerMove == "Gunting") {
    //print rock emoji
    return "🗿: You Win!";
  } else if (playerMove == "Gunting" && computerMove == "Papel") {
    //print scissors emoji
    return "✂️: You Win!";
  } else if (playerMove == "Papel" && computerMove == "Bato") {
    //print paper emoji
    return "📃: You Win!";
  } else if (computerMove == "Bato" && playerMove == "Gunting") {
    //if it's not a tie and you didn't win, computer won
    return "🗿: Bot Wins!​​​";
  } else if (computerMove == "Gunting" && playerMove == "Papel") {
    //if it's not a tie and you didn't win, computer won
    return "✂️: Bot Wins!​​​";
  } else if (computerMove == "Papel" && playerMove == "Bato") {
    //if it's not a tie and you didn't win, computer won
    return "📃: Bot Wins!​​​";
  }
}
