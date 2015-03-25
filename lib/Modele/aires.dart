part of stationnement_voiture;

class aires extends Concepts {

  Aires getaire(String code) {
    for (Aires aire in this) {
      if (aire.code == code) {
        return aire;
      }
    }
    return null;
  }

}

class Aires extends Concept {

  String code;

  Stationnement stationnement;

  Aires(this.code) {
    stationnement = new Stationnement.ofAire(this);
  }

  String toString() {
    return 'Aire: ${oid.timeStamp} ${code}';
  }

}
