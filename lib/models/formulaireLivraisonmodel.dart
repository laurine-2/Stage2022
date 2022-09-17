class FormulaireLivraison {
  String? nomRecepteur;
  String? quartier;
  String? dateLivraison;
  String? rue;
  int? tephoneRecepteur;
  String? ville;
  Entreprise? entreprise;

  FormulaireLivraison(
      {this.nomRecepteur,
      this.quartier,
      this.dateLivraison,
      this.rue,
      this.tephoneRecepteur,
      this.ville,
      this.entreprise});

  FormulaireLivraison.fromJson(Map<String, dynamic> json) {
    nomRecepteur = json['nomRecepteur'];
    quartier = json['quartier'];
    dateLivraison = json['dateLivraison'];
    rue = json['rue'];
    tephoneRecepteur = json['tephoneRecepteur'];
    ville = json['ville'];
    entreprise = json['entreprise'] != null
        ? new Entreprise.fromJson(json['entreprise'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nomRecepteur'] = this.nomRecepteur;
    data['quartier'] = this.quartier;
    data['dateLivraison'] = this.dateLivraison;
    data['rue'] = this.rue;
    data['tephoneRecepteur'] = this.tephoneRecepteur;
    data['ville'] = this.ville;
    if (this.entreprise != null) {
      data['entreprise'] = this.entreprise?.toJson();
    }
    return data;
  }
}

class Entreprise {
  int? idEntreprise;

  Entreprise({this.idEntreprise});

  Entreprise.fromJson(Map<String, dynamic> json) {
    idEntreprise = json['idEntreprise'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idEntreprise'] = this.idEntreprise;
    return data;
  }
}
