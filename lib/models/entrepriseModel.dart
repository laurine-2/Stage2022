class EntrepriseModel {
  int? idEntreprise;
  String? nomEntreprise;
  String? statut;
  String? registreCommerce;
  String? carteContribuable;
  String? nonRedevance;
  String? password;

  EntrepriseModel(
      {this.idEntreprise,
      this.nomEntreprise,
      this.statut,
      this.registreCommerce,
      this.carteContribuable,
      this.nonRedevance,
      this.password});

  EntrepriseModel.fromJson(Map<String, dynamic> json) {
    idEntreprise = json['idEntreprise'];
    nomEntreprise = json['nomEntreprise'];
    statut = json['statut'];
    registreCommerce = json['registreCommerce'];
    carteContribuable = json['carteContribuable'];
    nonRedevance = json['nonRedevance'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idEntreprise'] = this.idEntreprise;
    data['nomEntreprise'] = this.nomEntreprise;
    data['statut'] = this.statut;
    data['registreCommerce'] = this.registreCommerce;
    data['carteContribuable'] = this.carteContribuable;
    data['nonRedevance'] = this.nonRedevance;
    data['password'] = this.password;
    return data;
  }
}
