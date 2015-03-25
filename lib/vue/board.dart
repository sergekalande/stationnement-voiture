part of stationnement_voiture;

class Board {

  // The board is redrawn every INTERVAL ms.
  static const int INTERVAL = 8;

  static final int LINE_WIDTH = 1;
  static final String LINE_COLOR = '#000000'; // black
  static final int SSS = 8; // selection square size

  static final int ROWS_COUNT = 6;
  static final int COLUMNS_COUNT = 6;

  CanvasElement canvas;
  CanvasRenderingContext2D context;

  int width;
  int height;
  int cellWidth;
  int cellHeight;

  ModeleStationnement_voiture Modelestationnement_voiture;
  Aire _currentAire;
  Stationnements _currentStationnement;

  MenuBar menuBar;
  ActionPanel actionPanel;

  Board(this.canvas, this.Modelestationnement_voiture) {
    context = canvas.getContext('2d');
    width = canvas.width;
    height = canvas.height;
    cellWidth = width ~/ COLUMNS_COUNT;
    cellHeight = height ~/ ROWS_COUNT;
    // border();

    menuBar = new MenuBar(this);
    actionPanel = new ActionPanel(this);

    currentAire = Modelestationnement_voiture.aires.getAire('debutant');
    currentStationnement = currentAire.stationnements.getStationnementWithinaire(1);

    // Canvas event.
    document.querySelector('#canvas').onMouseDown.listen(onMouseDown);
    // Redraw every INTERVAL ms.
    new Timer.periodic(const Duration(milliseconds: INTERVAL), (t) => redraw());
  }

  void set currentaire(Aire aire) {
    _currentaire = aire;
    currentStationnements = aire.stationnements.getStationnementWithinAire(1);
    actionPanel.displayCurrentaire();
  }

  Aire get currentAire {
    return _currentAire;
  }

  void set currentStationnements(Stationnements stationnements) {
    _currentstationnements = Stationnements;
    actionPanel.displayCurrentStationnements();
  }

  Stationnements get currentStationnements {
    return _currentstationnements;
  }

  void redraw() {
    clear();
    displayVoitures();
  }

  void restart() {
    for (Voiture voiture in currentStationnement.cars) {
      voiture.currentRow = voiture.startRow;
      voiture.currentColumn = voiture.startColumn;
      voiture.selected = false;
    }
  }

  void clear() {
    context.clearRect(0, 0, width, height);
    // border();
  }

  void border() {
    context.beginPath();
    context.rect(0, 0, width, height);
    context.lineWidth = LINE_WIDTH;
    context.strokeStyle = LINE_COLOR;
    context.stroke();
    context.closePath();
  }

  void displayVoitures() {
    for (Voiture voiture in currentStationnement.cars) {
      displayVoiture(voiture);
    }
  }

  void displayVoiture(Voiture voiture) {
    context.beginPath();
    int row = voiture.currentRow;
    int column = voiture.currentColumn;
    int x = column * cellWidth;
    int y = row * cellHeight;
    int voitureLength = voiture.marques_voiture.length;
    int voitureWidth = cellWidth;
    int voitureHeight = cellHeight;
    if (voiture.orientation == 'horizontal') {
      voitureWidth = cellWidth * voitureLength;
    } else {
      voitureHeight = cellHeight * voitureLength;
    }
    context.lineWidth = LINE_WIDTH;
    context.strokeStyle = LINE_COLOR;
    context.fillStyle = voiture.marques_voiture.color;
    // context.rect(x, y , voitureWidth, voitureHeight);
    context.fillRect(x, y , voitureWidth, voitureHeight);
    if (voiture.selected) {
      context.rect(x, y, SSS, SSS);
      context.rect(x + voitureWidth - SSS, y, SSS, SSS);
      context.rect(x + voitureWidth - SSS, y + voitureHeight - SSS, SSS, SSS);
      context.rect(x, y + voitureHeight - SSS, SSS, SSS);
    }
    context.stroke();
    context.closePath();
  }

  Voiture getVoitureInCell(int row, int column) {
    for (Voiture voiture in currentStationnement.voitures) {
      if (voiture.inCell(row, column)) {
        return voiture;
      }
    }
    return null;
  }

  Voiture getSelectedCarAfterOrBeforeCell(int row, int column) {
    for (Voiture car in currentStationnement.voitures) {
      if (car.selected && car.afterOrBeforeCell(row, column)) {
        return car;
      }
    }
    return null;
  }

  void onMouseDown(MouseEvent e) {
    int row = e.offset.y ~/ cellHeight;
    int column = e.offset.x ~/ cellWidth;
    Voiture voiture = getVoitureInCell(row, column);
    if (voiture != null) {
      currentStationnement.cars.deselect();
      voiture.selected = true;
    } else {
      voiture = getSelectedCarAfterOrBeforeCell(row, column);
      if (voiture != null) {
        voiture.moveToOrTowardCell(row, column);
        if (voiture.marques_voiture.code == 'X' && voiture.currentColumn == COLUMNS_COUNT - voiture.marques_voiture.length) {
          voiture.currentColumn = COLUMNS_COUNT; // the car exits the parking
        }
      }
    }
  }

}
