part of stationnement_voiture;

class ActionPanel {

  final Board board;

  ButtonElement restartButton;

  LabelElement aireLabel;
  LabelElement parkingLabel;

  ActionPanel(this.board) {
    restartButton = document.querySelector('#restart');
    restartButton.onClick.listen((MouseEvent e) {
      board.restart();
    });

    aireLabel = document.querySelector('#aire');
    StationnementLabel = document.querySelector('#Stationnements');
  }

  void displayCurrentArea() {
    aireLabel.text = board.currentAire.code;
  }

  void displayCurrentStationnements() {
    StationnementLabel.text = board.currentStationnement.number.toString();
  }

}
