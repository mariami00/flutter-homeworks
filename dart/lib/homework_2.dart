import 'dart:io';
import 'dart:math';

void main() {
  print("Welcome to Dice Game\nType 'exit' to stop the game");
  final random = Random();
  List<int> a = [1,2,3,4,5,6];

  int user = 0;
  int comp = 0;

  while (true) {
    int dice1 = a[random.nextInt(a.length)];
    int dice2 = a[random.nextInt(a.length)];
    int dice3 = a[random.nextInt(a.length)];
    int dice4 = a[random.nextInt(a.length)];

    int compCoice = dice1 + dice2;
    int userChoice = dice3 + dice4;

    stdout.write("\nif you want to roll a dice write yes: ");
    String userAnswer = stdin.readLineSync()!.toLowerCase();

    if (userAnswer == "exit") {
      print("\nYou: $user Computer: $comp\nBye!");
      break;
    }

    if (userAnswer != "yes" ) {
      print("incorrect answer");
      continue;
    } else if (compCoice == userChoice) {
      print("we have a tie");
    } else if (compCoice > userChoice) {
      print("computer wins: $compCoice vs $userChoice");
      comp += 1;
    } else if (userChoice > compCoice) {
      print("you win: $userChoice vs $compCoice");
      user += 1;
    }

  }

}
