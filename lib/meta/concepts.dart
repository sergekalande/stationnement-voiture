part of stationnement_voiture;

class Concepts {

  List<Concept> list;

  Concepts() {
    list = new List<Concept>();
  }

  void add(Concept concept) {
    list.add(concept);
  }

  Iterator<Concept> get iterator => list.iterator;

}
