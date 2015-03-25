part of stationnement_voiture;

class ModeleStationnement_voiture {

  aires Aires;
  marques_voitures Marques_voiture;
  Stationnement stationnement;

  ModeleStationnement_voiture() {
    Aires = new aires() ;
    Marques_voiture = new marques_voitures();
    stationnement = new Stationnement();
    init(this);
  }

}