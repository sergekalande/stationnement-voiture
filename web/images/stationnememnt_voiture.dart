import 'dart:html';

import 'package:stationnement_voiture/stationnement_voiture.dart';

void main() {
  Modelestationnements_voitures ModeleStationnement_voiture = new modelestationnements_voitures();
  // printmodele(ModeleStationnement_voiture);

  // Get a reference to the canvas.
  CanvasElement canvas = document.querySelector('#canvas');
  Board board = new Board(canvas, ModeleStationnement_voiture);
}


