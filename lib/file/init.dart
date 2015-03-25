part of stationnement_voiture;

ModeleStationnement_voiture modele;

init(ModeleStationnement_voiture ModeleStationnement_voiture) {
  modele = ModeleStationnement_voiture;
  initAires();
  initmarques_voiture();
  initstationnements();
}

initAires() {
  Aire aireDebutant = new Aire('debutant');
  modele.aires.add(aireDebutant);

  Aire aireIntermediaire = new Aire('intermediaire');
  modele.aires.add(aireIntermediaire);
}

initmarques_voiture() {
  marque_voitures marques_voitureA = new marque_voitures('A');
  marques_voitureA.length = 2;
  marques_voitureA.colorName = 'green';
  marques_voitureA.color = '#66CC99';
  marques_voitureA.red = 102;
  marques_voitureA.green = 204;
  marques_voitureA.blue = 153;
  modele.marques_voiture.add(marques_voitureA);

  marques_voiture marques_voitureB = new marques_voiture('B');
  marques_voitureB.length = 2;
  marques_voitureB.colorName = 'orange';
  marques_voitureB.color = '#FFCC66';
  marques_voitureB.red = 255;
  marques_voitureB.green = 204;
  marques_voitureB.blue = 102;
  modele.marques_voiture.add(marques_voitureB);

  marques_voiture marques_voitureC = new marques_voiture('C');
  marques_voitureC.length = 2;
  marques_voitureC.colorName = 'cyan';
  marques_voitureC.color = '#00FFFF';
  marques_voitureC.red = 0;
  marques_voitureC.green = 255;
  marques_voitureC.blue = 255;
  modele.marques_voiture.add(marques_voitureC);

  marques_voiture marques_voitureD = new marques_voiture('D');
  marques_voitureD.length = 2;
  marques_voitureD.colorName = 'light pink';
  marques_voitureD.color = '#FF99CC';
  marques_voitureD.red = 255;
  marques_voitureD.green = 153;
  marques_voitureD.blue = 204;
  modele.marques_voiture.add(marques_voitureD);

  marques_voiture marques_voitureE = new marques_voiture('E');
  marques_voitureE.length = 2;
  marques_voitureE.colorName = 'dark magenta';
  marques_voitureE.color = '#660033';
  marques_voitureE.red = 102;
  marques_voitureE.green = 0;
  marques_voitureE.blue = 51;
  modele.carBrands.add(marques_voitureE);

  marques_voiture marques_voitureF = new marques_voiture('F');
  marques_voitureF.length = 2;
  marques_voitureF.colorName = 'dark green';
  marques_voitureF.color = '#009966';
  marques_voitureF.red = 0;
  marques_voitureF.green = 153;
  marques_voitureF.blue = 102;
  modele.carBrands.add(marques_voitureF);

  marques_voiture marques_voitureG = new marques_voiture('G');
  marques_voitureG.length = 2;
  marques_voitureG.colorName = 'gray';
  marques_voitureG.color = '#BEBEBE';
  marques_voitureG.red = 190;
  marques_voitureG.green = 190;
  marques_voitureG.blue = 190;
  modele.marques_voitures.add(marques_voitureG);

  marques_voiture marques_voitureH = new marques_voiture('H');
  marques_voitureH.length = 2;
  marques_voitureH.colorName = 'peach';
  marques_voitureH.color = '#FF9966';
  marques_voitureH.red = 255;
  marques_voitureH.green = 153;
  marques_voitureH.blue = 102;
  modele.marques_voitures.add(marques_voitureH);

  CarBrand carBrandI = new CarBrand('I');
  carBrandI.length = 2;
  carBrandI.colorName = 'light gray';
  carBrandI.color = '#D3D3D3';
  carBrandI.red = 211;
  carBrandI.green = 211;
  carBrandI.blue = 211;
  model.carBrands.add(carBrandI);

  CarBrand carBrandJ = new CarBrand('J');
  carBrandJ.length = 2;
  carBrandJ.colorName = 'brown';
  carBrandJ.color = '#996600';
  carBrandJ.red = 153;
  carBrandJ.green = 102;
  carBrandJ.blue = 0;
  model.carBrands.add(carBrandJ);

  CarBrand carBrandK = new CarBrand('K');
  carBrandK.length = 2;
  carBrandK.colorName = 'mustard';
  carBrandK.color = '#CC9900';
  carBrandK.red = 204;
  carBrandK.green = 153;
  carBrandK.blue = 0;
  model.carBrands.add(carBrandK);

  CarBrand carBrandO = new CarBrand('O');
  carBrandO.length = 3;
  carBrandO.colorName = 'light yellow';
  carBrandO.color = '#FFFF99';
  carBrandO.red = 255;
  carBrandO.green = 255;
  carBrandO.blue = 153;
  model.carBrands.add(carBrandO);

  CarBrand carBrandP = new CarBrand('P');
  carBrandP.length = 3;
  carBrandP.colorName = 'magenta';
  carBrandP.color = '#993366';
  carBrandP.red = 153;
  carBrandP.green = 51;
  carBrandP.blue = 102;
  model.carBrands.add(carBrandP);

  CarBrand carBrandQ = new CarBrand('Q');
  carBrandQ.length = 3;
  carBrandQ.colorName = 'gray blue';
  carBrandQ.color = '#6699CC';
  carBrandQ.red = 102;
  carBrandQ.green = 153;
  carBrandQ.blue = 204;
  model.carBrands.add(carBrandQ);

  CarBrand carBrandR = new CarBrand('R');
  carBrandR.length = 3;
  carBrandR.colorName = 'deep sky blue';
  carBrandR.color = '#00BFFF';
  carBrandR.red = 0;
  carBrandR.green = 191;
  carBrandR.blue = 255;
  model.carBrands.add(carBrandR);

  CarBrand carBrandX = new CarBrand('X');
  carBrandX.length = 2;
  carBrandX.colorName = 'red';
  carBrandX.color = '#CC0033';
  carBrandX.red = 204;
  carBrandX.green = 0;
  carBrandX.blue = 51;
  model.carBrands.add(carBrandX);
}

initParkings() {
  Area beginnerArea = model.areas.getArea('beginner');
  if (beginnerArea != null) {
    beginnerArea.parkings = new Parkings.ofArea(beginnerArea);
    initParkingsOfBeginnerArea(beginnerArea);
  }
  Area intermediateArea = model.areas.getArea('intermediate');
  if (intermediateArea != null) {
    intermediateArea.parkings = new Parkings.ofArea(intermediateArea);
    initParkingsOfIntermediateArea(intermediateArea);
  }

}

initParkingsOfBeginnerArea(Area area) {
  if (area.code == 'beginner') {
    Parking parking1 = new Parking(area, 1);
    model.parkings.add(parking1);
    area.parkings.add(parking1);
    initCarsOfParking1OfBeginnerArea(area, parking1);

    Parking parking2 = new Parking(area, 2);
    model.parkings.add(parking2);
    area.parkings.add(parking2);
    initCarsOfParking2OfBeginnerArea(area, parking2);
  }
}

initParkingsOfIntermediateArea(Area area) {
  if (area.code == 'intermediate') {
    Parking parking1 = new Parking(area, 1);
    model.parkings.add(parking1);
    area.parkings.add(parking1);
    initCarsOfParking1OfIntermediateArea(area, parking1);

    Parking parking2 = new Parking(area, 2);
    model.parkings.add(parking2);
    area.parkings.add(parking2);
    initCarsOfParking2OfIntermediateArea(area, parking2);
  }
}

initCarsOfParking1OfBeginnerArea(Area area, Parking parking) {
  if (area.code == 'beginner' && parking.number == 1) {
    CarBrand carBrandA = model.carBrands.getCarBrand('A');
    if (carBrandA != null) {
      Car car1A = new Car(parking, carBrandA);
      car1A.orientation = 'horizontal';
      car1A.startRow = 0;
      car1A.startColumn = 0;
      parking.cars.add(car1A);
      carBrandA.cars.add(car1A);
    }

    CarBrand carBrandB = model.carBrands.getCarBrand('B');
    if (carBrandB != null) {
      Car car1B = new Car(parking, carBrandB);
      car1B.orientation = 'vertical';
      car1B.startRow = 4;
      car1B.startColumn = 0;
      parking.cars.add(car1B);
      carBrandB.cars.add(car1B);
    }

    CarBrand carBrandC = model.carBrands.getCarBrand('C');
    if (carBrandC != null) {
      Car car1C = new Car(parking, carBrandC);
      car1C.orientation = 'horizontal';
      car1C.startRow = 4;
      car1C.startColumn = 4;
      parking.cars.add(car1C);
      carBrandC.cars.add(car1C);
    }

    CarBrand carBrandO = model.carBrands.getCarBrand('O');
    if (carBrandO != null) {
      Car car1O = new Car(parking, carBrandO);
      car1O.orientation = 'vertical';
      car1O.startRow = 0;
      car1O.startColumn = 5;
      parking.cars.add(car1O);
      carBrandO.cars.add(car1O);
    }

    CarBrand carBrandP = model.carBrands.getCarBrand('P');
    if (carBrandP != null) {
      Car car1P = new Car(parking, carBrandP);
      car1P.orientation = 'vertical';
      car1P.startRow = 1;
      car1P.startColumn = 0;
      parking.cars.add(car1P);
      carBrandP.cars.add(car1P);
    }

    CarBrand carBrandQ = model.carBrands.getCarBrand('Q');
    if (carBrandQ != null) {
      Car car1Q = new Car(parking, carBrandQ);
      car1Q.orientation = 'vertical';
      car1Q.startRow = 1;
      car1Q.startColumn = 3;
      parking.cars.add(car1Q);
      carBrandQ.cars.add(car1Q);
    }

    CarBrand carBrandR = model.carBrands.getCarBrand('R');
    if (carBrandR != null) {
      Car car1R = new Car(parking, carBrandR);
      car1R.orientation = 'horizontal';
      car1R.startRow = 5;
      car1R.startColumn = 2;
      parking.cars.add(car1R);
      carBrandR.cars.add(car1R);
    }

    CarBrand carBrandX = model.carBrands.getCarBrand('X');
    if (carBrandX != null) {
      Car car1X = new Car(parking, carBrandX);
      car1X.orientation = 'horizontal';
      car1X.startRow = 2;
      car1X.startColumn = 1;
      parking.cars.add(car1X);
      carBrandX.cars.add(car1X);
    }

    for (Car car in parking.cars) {
      car.currentRow = car.startRow;
      car.currentColumn = car.startColumn;
    }
  }
}

initCarsOfParking2OfBeginnerArea(Area area, Parking parking) {
  if (area.code == 'beginner' && parking.number == 2) {
    CarBrand carBrandA = model.carBrands.getCarBrand('A');
    if (carBrandA != null) {
      Car car1A = new Car(parking, carBrandA);
      car1A.orientation = 'vertical';
      car1A.startRow = 0;
      car1A.startColumn = 0;
      parking.cars.add(car1A);
      carBrandA.cars.add(car1A);
    }

    CarBrand carBrandB = model.carBrands.getCarBrand('B');
    if (carBrandB != null) {
      Car car1B = new Car(parking, carBrandB);
      car1B.orientation = 'vertical';
      car1B.startRow = 1;
      car1B.startColumn = 3;
      parking.cars.add(car1B);
      carBrandB.cars.add(car1B);
    }

    CarBrand carBrandC = model.carBrands.getCarBrand('C');
    if (carBrandC != null) {
      Car car1C = new Car(parking, carBrandC);
      car1C.orientation = 'vertical';
      car1C.startRow = 2;
      car1C.startColumn = 4;
      parking.cars.add(car1C);
      carBrandC.cars.add(car1C);
    }

    CarBrand carBrandD = model.carBrands.getCarBrand('D');
    if (carBrandD != null) {
      Car car1D = new Car(parking, carBrandD);
      car1D.orientation = 'vertical';
      car1D.startRow = 4;
      car1D.startColumn = 2;
      parking.cars.add(car1D);
      carBrandD.cars.add(car1D);
    }

    CarBrand carBrandE = model.carBrands.getCarBrand('E');
    if (carBrandE != null) {
      Car car1E = new Car(parking, carBrandE);
      car1E.orientation = 'horizontal';
      car1E.startRow = 4;
      car1E.startColumn = 4;
      parking.cars.add(car1E);
      carBrandE.cars.add(car1E);
    }

    CarBrand carBrandF = model.carBrands.getCarBrand('F');
    if (carBrandF != null) {
      Car car1F = new Car(parking, carBrandF);
      car1F.orientation = 'horizontal';
      car1F.startRow = 5;
      car1F.startColumn = 0;
      parking.cars.add(car1F);
      carBrandF.cars.add(car1F);
    }

    CarBrand carBrandG = model.carBrands.getCarBrand('G');
    if (carBrandG != null) {
      Car car1G = new Car(parking, carBrandG);
      car1G.orientation = 'horizontal';
      car1G.startRow = 5;
      car1G.startColumn = 3;
      parking.cars.add(car1G);
      carBrandG.cars.add(car1G);
    }

    CarBrand carBrandO = model.carBrands.getCarBrand('O');
    if (carBrandO != null) {
      Car car1O = new Car(parking, carBrandO);
      car1O.orientation = 'horizontal';
      car1O.startRow = 0;
      car1O.startColumn = 3;
      parking.cars.add(car1O);
      carBrandO.cars.add(car1O);
    }

    CarBrand carBrandP = model.carBrands.getCarBrand('P');
    if (carBrandP != null) {
      Car car1P = new Car(parking, carBrandP);
      car1P.orientation = 'vertical';
      car1P.startRow = 1;
      car1P.startColumn = 5;
      parking.cars.add(car1P);
      carBrandP.cars.add(car1P);
    }

    CarBrand carBrandQ = model.carBrands.getCarBrand('Q');
    if (carBrandQ != null) {
      Car car1Q = new Car(parking, carBrandQ);
      car1Q.orientation = 'horizontal';
      car1Q.startRow = 3;
      car1Q.startColumn = 0;
      parking.cars.add(car1Q);
      carBrandQ.cars.add(car1Q);
    }

    CarBrand carBrandX = model.carBrands.getCarBrand('X');
    if (carBrandX != null) {
      Car car1X = new Car(parking, carBrandX);
      car1X.orientation = 'horizontal';
      car1X.startRow = 2;
      car1X.startColumn = 0;
      parking.cars.add(car1X);
      carBrandX.cars.add(car1X);
    }

    for (Car car in parking.cars) {
      car.currentRow = car.startRow;
      car.currentColumn = car.startColumn;
    }
  }
}

initCarsOfParking1OfIntermediateArea(Area area, Parking parking) {
  if (area.code == 'intermediate' && parking.number == 1) {
    CarBrand carBrandA = model.carBrands.getCarBrand('A');
    if (carBrandA != null) {
      Car car1A = new Car(parking, carBrandA);
      car1A.orientation = 'horizontal';
      car1A.startRow = 0;
      car1A.startColumn = 1;
      parking.cars.add(car1A);
      carBrandA.cars.add(car1A);
    }

    CarBrand carBrandB = model.carBrands.getCarBrand('B');
    if (carBrandB != null) {
      Car car1B = new Car(parking, carBrandB);
      car1B.orientation = 'vertical';
      car1B.startRow = 3;
      car1B.startColumn = 2;
      parking.cars.add(car1B);
      carBrandB.cars.add(car1B);
    }

    CarBrand carBrandE = model.carBrands.getCarBrand('E');
    if (carBrandE != null) {
      Car car1E = new Car(parking, carBrandE);
      car1E.orientation = 'vertical';
      car1E.startRow = 4;
      car1E.startColumn = 5;
      parking.cars.add(car1E);
      carBrandE.cars.add(car1E);
    }

    CarBrand carBrandO = model.carBrands.getCarBrand('O');
    if (carBrandO != null) {
      Car car1O = new Car(parking, carBrandO);
      car1O.orientation = 'vertical';
      car1O.startRow = 0;
      car1O.startColumn = 0;
      parking.cars.add(car1O);
      carBrandO.cars.add(car1O);
    }

    CarBrand carBrandP = model.carBrands.getCarBrand('P');
    if (carBrandP != null) {
      Car car1P = new Car(parking, carBrandP);
      car1P.orientation = 'vertical';
      car1P.startRow = 0;
      car1P.startColumn = 3;
      parking.cars.add(car1P);
      carBrandP.cars.add(car1P);
    }

    CarBrand carBrandQ = model.carBrands.getCarBrand('Q');
    if (carBrandQ != null) {
      Car car1Q = new Car(parking, carBrandQ);
      car1Q.orientation = 'horizontal';
      car1Q.startRow = 3;
      car1Q.startColumn = 3;
      parking.cars.add(car1Q);
      carBrandQ.cars.add(car1Q);
    }

    CarBrand carBrandR = model.carBrands.getCarBrand('R');
    if (carBrandR != null) {
      Car car1R = new Car(parking, carBrandR);
      car1R.orientation = 'horizontal';
      car1R.startRow = 5;
      car1R.startColumn = 2;
      parking.cars.add(car1R);
      carBrandR.cars.add(car1R);
    }

    CarBrand carBrandX = model.carBrands.getCarBrand('X');
    if (carBrandX != null) {
      Car car1X = new Car(parking, carBrandX);
      car1X.orientation = 'horizontal';
      car1X.startRow = 2;
      car1X.startColumn = 1;
      parking.cars.add(car1X);
      carBrandX.cars.add(car1X);
    }

    for (Car car in parking.cars) {
      car.currentRow = car.startRow;
      car.currentColumn = car.startColumn;
    }
  }
}

initCarsOfParking2OfIntermediateArea(Area area, Parking parking) {
  if (area.code == 'intermediate' && parking.number == 2) {
    CarBrand carBrandA = model.carBrands.getCarBrand('A');
    if (carBrandA != null) {
      Car car1A = new Car(parking, carBrandA);
      car1A.orientation = 'vertical';
      car1A.startRow = 0;
      car1A.startColumn = 0;
      parking.cars.add(car1A);
      carBrandA.cars.add(car1A);
    }

    CarBrand carBrandB = model.carBrands.getCarBrand('B');
    if (carBrandB != null) {
      Car car1B = new Car(parking, carBrandB);
      car1B.orientation = 'horizontal';
      car1B.startRow = 0;
      car1B.startColumn = 1;
      parking.cars.add(car1B);
      carBrandB.cars.add(car1B);
    }

    CarBrand carBrandC = model.carBrands.getCarBrand('C');
    if (carBrandC != null) {
      Car car1C = new Car(parking, carBrandC);
      car1C.orientation = 'vertical';
      car1C.startRow = 4;
      car1C.startColumn = 4;
      parking.cars.add(car1C);
      carBrandC.cars.add(car1C);
    }

    CarBrand carBrandO = model.carBrands.getCarBrand('O');
    if (carBrandO != null) {
      Car car1O = new Car(parking, carBrandO);
      car1O.orientation = 'vertical';
      car1O.startRow = 0;
      car1O.startColumn = 5;
      parking.cars.add(car1O);
      carBrandO.cars.add(car1O);
    }

    CarBrand carBrandP = model.carBrands.getCarBrand('P');
    if (carBrandP != null) {
      Car car1P = new Car(parking, carBrandP);
      car1P.orientation = 'vertical';
      car1P.startRow = 1;
      car1P.startColumn = 2;
      parking.cars.add(car1P);
      carBrandP.cars.add(car1P);
    }

    CarBrand carBrandQ = model.carBrands.getCarBrand('Q');
    if (carBrandQ != null) {
      Car car1Q = new Car(parking, carBrandQ);
      car1Q.orientation = 'horizontal';
      car1Q.startRow = 3;
      car1Q.startColumn = 3;
      parking.cars.add(car1Q);
      carBrandQ.cars.add(car1Q);
    }

    CarBrand carBrandR = model.carBrands.getCarBrand('R');
    if (carBrandR != null) {
      Car car1R = new Car(parking, carBrandR);
      car1R.orientation = 'horizontal';
      car1R.startRow = 5;
      car1R.startColumn = 0;
      parking.cars.add(car1R);
      carBrandR.cars.add(car1R);
    }

    marques_voiture marques_voitureX = modele.marques_voiture.getMarques_voiture('X');
    if (marques_voitureX != null) {
      Voiture voiture1X = new Voiture(Stationnements, marques_voitureX);
      voiture1X.orientation = 'horizontal';
      voiture1X.startRow = 2;
      voiture1X.startColumn = 0;
      Stationnements.Voiture.add(voiture1X);
      marques_voitureX.cars.add(voiture1X);
    }

    for (Voiture voiture in Stationnements.Voiture) {
      voiture.currentRow = voiture.startRow;
      Voiture.currentColumn = voiture.startColumn;
    }
  }
}
