part of stationnement_voiture;

class Stationnement extends Concepts {

  Aires aire;

  Stationnement();

  Stationnement.ofAire(this.aire);

  Stationnement getStationnementWithinAire(int number) {
    for (Stationnement stationnement in this) {
      if (stationnement.number == number) {
        return stationnement;
      }
    }
    return null;
  }

  Stationnement getStationnement(String code, int number) {
    for (Stationnement stationnement in this) {
      if (stationnement.aire.code == code && stationnement.number == number) {
        return stationnement;
      }
    }
    return null;
  }

}

class Stationnements extends Concept {

  Aires aire;

  int number;

  Voiture voitures;

  Stationnements(this.aire, this.number) {
    voitures = new voiture.ofstationnement(this);
  }

  String toString() {
    return 'Stationnement: ${oid.timeStamp} ${number}';
  }

}

