import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:home_page/models/formulaireLivraisonmodel.dart';

import '../constants.dart';

class FormulaireServices {
  String _apikey = '$SERVER_IP/api/formulaireLivraison';
  final Dio _dio = new Dio();

  Future<dynamic> sendFormulaire(
      {required String nomRecepteur,
      required String quartier,
      required String date,
      required String telephone,
      required String ville,
      required String rue,
      required String id}) async {
    var params = {
      "nomRecepteur": "$nomRecepteur",
      "quartier": "$quartier",
      "dateLivraison": "$date",
      "rue": "$rue",
      "tephoneRecepteur": telephone,
      "ville": "$ville",
      "entreprise": {"idEntreprise": id}
    };
    print(jsonEncode(params));
    try {
      Response loginData = await _dio.post(
        _apikey,
        // options: Options(headers: {
        //   HttpHeaders.contentTypeHeader: "application/json",
        // }),
        data: jsonEncode(params),
      );
      print(loginData.data);
      print('STATUS: ${loginData.statusCode}');
      return loginData.data;

      // return CurentUserDataData.data.runtimeType(CurentUserData);
      // return List<Categorie>.from(((categorieData.data) as List).map((json) {
      //   return Categorie.fromJson(json);
      // }));
    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
        return e.response?.statusCode;
      } else {
        // Error due to setting up or sending the request
        print("\n \n \n  ");
        print('Erreurr sending request!');
        print("\n \n \n  ");
        print(e.message);
        return "Connexion Internet";
      }
    }
  }
}
