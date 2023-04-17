import 'dart:ffi';
class produit {
  Short codeproduit;
  String label;
  double   pu;
  int qteseuil;


  produit({
    required this.codeproduit,
    required this.label,
    required this.pu,
    required this.qteseuil,
    
  });
}
