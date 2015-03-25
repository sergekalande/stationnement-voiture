part of stationnement_voiture;

printAiresStationnementsVoitures(ModeleStationnement_voiture ModeleStationnement_voiture) {
  print('-----------------------');
  print('-Aires, Stationnement, Voitures-');
  print('-----------------------');
  Aires aires = ModeleStationnements_voiture.Aires;
  for (Aires aire in aires) {
    aire.display();
    Stationnements stationnements = aire.stationnements;
    for (Stationnement stationnement in Stationnement) {
      stationnement.display();
      Voiture voitures = stationnement.voitures;
      for (Voiture voiture in voitures) {
        voiture.display();
        voiture.marques_voitures.display();
      }
    }
  }
}

printmarques_voituresvoitures(ModeleStationnement_voiture ModeleStationnement_voiture) {
  print('-----------------');
  print('-marques_voiture, Voitures-');
  print('-----------------');
   marques_voitures = marques_voitures.marques_voitures;
  for (marques_voitures marque_voiture in marques_voitures) {
    marques_voitures.display();
    Voiture voitures = marques_voiture.voiture;
    for (Voiture voiture in voitures) {
      voiture.display();
      voiture.stationnement.display();
    }
  }
}

printStationnementVoiture(ModeleStationnement_voiture ModeleStationnement_voiture) {
  print('----------------');
  print('-Stationnement, Voitures-');
  print('----------------');
  Stationnement stattionnement = ModeleStationnement_voiture.stationnements;
  for (Stationnement stationnement in stationnements) {
    stationnement.display();
    stationnement.aire.display();
    Voiture voitures = stationnement.voiture;
    for (Voiture voiture in voitures) {
      voiture.display();
      voiture.marques_voitures.display();
    }
  }
}

printmodele(ModeleStationnement_voiture ModeleStationnement_voiture) {
  printairestationnementvoitures(ModeleStationnement_voiture);
  printmarques_voituresvoitures(ModeleStationnement_voiture);
  printStationnementVoiture(ModeleStationnement_voiture);
}

