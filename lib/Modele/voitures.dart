part of stationnement_voiture;

class voitures extends Concepts {

  Stationnements stationnements;
  marques_voitures marques_voiture;

  voitures.ofStationnement(this.stationnements);

  voitures.ofmarques_voiture(this.marques_voiture);

  void deselect() {
    for (Voiture voiture in this) {
      voiture.selected = false;
    }
  }

  Voiture getSelectedVoiture() {
    for (Voiture voiture in this) {
      if (voiture.selected) {
        return voiture;
      }
    }
    return null;
  }

}

class Voiture extends Concept {

  Stationnements stationnement;
  marque_voitures marques_voitures;

  String orientation;
  int startRow;
  int startColumn;

  int currentRow;
  int currentColumn;
  bool selected = false;

  Voiture.voitures(this.stationnement, this.marques_voitures);

  String toString() {
    return 'Voitures: ${oid.timeStamp} ${orientation} ${startRow} ${startColumn}';
  }

  bool inCell(int row, int column) {
    if (currentRow == row && currentColumn == column) {
      return true;
    } else if (orientation == 'horizontal' && marques_voitures.length == 2) {
      if (currentRow == row && currentColumn == column - 1) {
        return true;
      }
    } else if (orientation == 'horizontal' && marques_voitures.length == 3) {
      if (currentRow == row && (currentColumn == column - 1 || currentColumn == column - 2)) {
        return true;
      }
    } else if (orientation == 'vertical' && marques_voitures.length == 2) {
      if (currentRow == row - 1 && currentColumn == column) {
        return true;
      }
    } else if (orientation == 'vertical' && marques_voitures.length == 3) {
      if ((currentRow == row - 1 || currentRow == row - 2) && currentColumn == column) {
        return true;
      }
    }
    return false;
  }

  bool afterCell(int row, int column) {
    if (orientation == 'horizontal') {
      if (currentRow == row && currentColumn == column + 1) {
        return true;
      }
    } else if (orientation == 'vertical') {
      if (currentRow == row + 1 && currentColumn == column) {
        return true;
      }
    }
    return false;
  }

  bool beforeCell(int row, int column) {
    if (orientation == 'horizontal') {
      if (currentRow == row && marques_voitures.length == 2 && currentColumn == column - 2) {
        return true;
      } else if (currentRow == row && marques_voitures.length == 3 && currentColumn == column - 3) {
        return true;
      }
    } else if (orientation == 'vertical') {
      if (currentRow == row - 2 && marques_voitures.length == 2 && currentColumn == column) {
        return true;
      } else if (currentRow == row - 3 && marques_voitures.length == 3 && currentColumn == column) {
        return true;
      }
    }
    return false;
  }

  bool afterOrBeforeCell(int row, int column) {
    return afterCell(row, column) || beforeCell(row, column);
  }

  moveToOrTowardCell(int row, int column) {
    if (afterCell(row, column)) {
      currentRow = row;
      currentColumn = column;
    } else if (beforeCell(row, column)) {
      if (orientation == 'horizontal') {
        currentColumn = currentColumn + 1;
      } else if (orientation == 'vertical') {
        currentRow = currentRow + 1;
      }
    }
  }

}

