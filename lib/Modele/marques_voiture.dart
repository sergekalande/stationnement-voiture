part of stationnement_voiture;

class marques_voitures extends Concepts {

  marque_voitures getmarques_voitures(String code) {
    for (marque_voitures marques_voitures in this) {
      if (marques_voitures.code == code) {
        return marques_voitures;
      }
    }
    return null;
  }

}

class marque_voitures extends Concept {

  String code;
  int length;
  String colorName;
  String color;
  int red;
  int green;
  int blue;

  voitures voitures;

  marque_voitures(this.code) {
    voitures = new Voitures.ofmarques_voiture(this);
  }

  String toString() {
    return 'marques_voitures: ${oid.timeStamp} ${code} ${length} ${colorName}';
  }

}


