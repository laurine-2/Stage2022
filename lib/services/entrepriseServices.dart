import 'dart:convert';

import 'package:dio/dio.dart';

import '../constants.dart';

class FormulaireEntreprise {
  String _apikey = '$SERVER_IP/api/entreprise';
  String _apikey2 = '$SERVER_IP/api/connexion';
  final Dio _dio = new Dio();

  Future<String> inscription({
    required String nomEntreprise,
    required String registreCommerce,
    required String carteContribuable,
    required String nonRedevance,
    required String password,
  }) async {
    var params = {
      "nomEntreprise": "$nomEntreprise",
      "statut": "active",
      "registreCommerce": "$registreCommerce",
      "carteContribuable": "$carteContribuable",
      "nonRedevance": "$nonRedevance",
      "password": "$password"
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
      return loginData.statusCode.toString();

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
        return e.response!.statusCode.toString();
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

  Future<String> connexion({
    required String nomEntreprise,
    required String password,
  }) async {
    var params = {"username": "$nomEntreprise", "password": "$password"};
    print(jsonEncode(params));
    try {
      Response loginData = await _dio.post(
        _apikey2,
        // options: Options(headers: {
        //   HttpHeaders.contentTypeHeader: "application/json",
        // }),
        data: jsonEncode(params),
      );
      print(loginData.data);
      print('STATUS: ${loginData.statusCode}');
      return loginData.statusCode.toString();

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
        return e.response!.statusCode.toString();
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
