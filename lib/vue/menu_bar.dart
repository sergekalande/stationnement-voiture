part of stationnement_voiture;

class MenuBar {

  final Board board;

  // Aire
  ButtonElement debutantAireButton;
  ButtonElement intermediaireAireButton;

  // Stationnement
  ButtonElement stationnements1Button;
  ButtonElement stationnements2Button;

  MenuBar(this.board) {
    debutantAireButton = document.querySelector('#debutant');
    intermediaireAireButton = document.querySelector('#intermediaire');

    stationnements1Button = document.querySelector('#stationnements1');
    stationnements2Button = document.querySelector('#stationnements2');

    debutantAireButton.onClick.listen((MouseEvent e) {
      board.currentAires = board.Modelestationnement_voiture.Aires.getaires('debutant');
    });
    intermediaireAireButton.onClick.listen((MouseEvent e) {
      board.currentAires = board.Modelestationnement_voiture.Aires.getaires('intermediaire');
    });

    stationnements1Button.onClick.listen((MouseEvent e) {
      board.currentStationnements = board.currentAire.stationnements.getStationnementWithinAire(1);
    });
    stationnements2Button.onClick.listen((MouseEvent e) {
      board.currentStationnements = board.currentAire.stationnements.getStationnementgWithinAire(2);
    });
  }

}
