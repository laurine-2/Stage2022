import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:home_page/home/widgets/display.dart';
import 'package:home_page/models/formulaireLivraisonmodel.dart';
import 'package:home_page/services/formulaireLivraison.dart';

class FormulaireDemande extends StatefulWidget {
  const FormulaireDemande({Key? key}) : super(key: key);

  @override
  State<FormulaireDemande> createState() => _FormulaireDemandeState();
}

class _FormulaireDemandeState extends State<FormulaireDemande> {
  String? phpMsg;
  String? regInfo;

  TextEditingController nom = new TextEditingController();
  TextEditingController date = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  TextEditingController telephone = new TextEditingController();
  TextEditingController ville = new TextEditingController();
  TextEditingController quartier = new TextEditingController();
  TextEditingController rue = new TextEditingController();

  TextEditingController _controller1 = new TextEditingController();

  String _valueChanged1 = '';
  String _valueToValidate1 = '';
  String _valueSaved1 = '';
  String _valueChanged2 = '';

  displayDialog(BuildContext context, String numero) {
    Size size = MediaQuery.of(context).size;
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Container(
              constraints: BoxConstraints(maxHeight: 180),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FutureBuilder(
                          future: FormulaireServices().sendFormulaire(
                              nomRecepteur: nom.text,
                              quartier: quartier.text,
                              date: _valueChanged1,
                              telephone: numero,
                              ville: ville.text,
                              id: "1",
                              rue: rue.text),
                          builder: (context, snapshot) {
                            if (!snapshot.hasData) {
                              return Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            } else if (snapshot.hasError) {
                              Navigator.pop(context);
                              return Text("");
                              // displayDialog2(
                              //   context,
                              //   "Probleme avec le serveur , veillez Essayer plus tard",
                              // );
                            } else if (snapshot.data == "500") {
                              Navigator.pop(context);
                              return Text("");
                              // displayDialog2(
                              //   context,
                              //   "Probleme avec le serveur , veillez Essayer plus tard",
                              // );
                            } else {
                              Navigator.pop(context);
                              return Text("");
                              // displayDialog2(
                              //     context, "Envoie effecctuer avec succes");
                            }
                          })
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.deepOrange.shade900),
          backgroundColor: Colors.deepOrange.shade200,
          elevation: 0,
          centerTitle: false,
          title: Container(
            child: Text("Demande de livraison"),
          ),
        ),
        body: Container(
          height: size.height,
          child: SingleChildScrollView(
              child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                child: Container(
                  height: size.height,
                  child: ListView(
                    children: <Widget>[
                      Text("Entrez le nom du recepteur"),
                      TextFormField(
                        controller: nom,
                        decoration: InputDecoration(
                            hintText: "Mbogning",
                            border: OutlineInputBorder(),
                            labelText: ''),
                      ),
                      Text("                    "),
                      Text("Entrez le numero de téléphone du recepteur"),
                      TextFormField(
                        controller: telephone,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "+ 237 6........ ",
                            border: OutlineInputBorder(),
                            labelText: ''),
                      ),
                      Text("                    "),
                      Text("Entrez ca ville de residence"),
                      TextFormField(
                        controller: ville,
                        decoration: InputDecoration(
                            hintText: "Yaounde",
                            border: OutlineInputBorder(),
                            labelText: ''),
                      ),
                      Text("                    "),
                      Text("Entrez son quartier de residence"),
                      TextFormField(
                        controller: quartier,
                        decoration: InputDecoration(
                            hintText: "Nkolanga",
                            border: OutlineInputBorder(),
                            labelText: ''),
                      ),
                      Text("                    "),
                      Text("Entrez la rue l'envoie"),
                      TextFormField(
                        controller: rue,
                        decoration: InputDecoration(
                            hintText: "005 Carrefour ",
                            border: OutlineInputBorder(),
                            labelText: ''),
                      ),
                      Text("                    "),
                      Text("Entrez la date de l'envoie"),
                      DateTimePicker(
                        type: DateTimePickerType.date,
                        dateMask: 'yyyy-MM-d',
                        controller: _controller1,
                        //initialValue: _initialValue,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                        dateLabelText: 'Date',
                        timeLabelText: "Hour",
                        //use24HourFormat: false,
                        //locale: Locale('pt', 'BR'),
                        selectableDayPredicate: (date) {
                          if (date.weekday == 6 || date.weekday == 7) {
                            return false;
                          }
                          return true;
                        },
                        onChanged: (val) {
                          print(val);
                          setState(() => _valueChanged1 = val);
                        },
                        validator: (val) {
                          setState(() => _valueToValidate1 = val ?? '');
                          return null;
                        },
                        onSaved: (val) =>
                            setState(() => _valueSaved1 = val ?? ''),
                      ),
                      Text("                    "),
                      InkWell(
                        onTap: () {
                          var numero = telephone.text;
                          print("ok");
                          displayDialog(context, numero);
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.deepOrange.shade900,
                                borderRadius: BorderRadius.circular(15)),
                            padding: EdgeInsets.all(1),
                            width: size.width * 0.4,
                            height: 60,
                            child: Center(
                              child: Text(
                                'Valider la livraison',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 85))
                    ],
                  ),
                ),
                // Column is a vertical, linear layout.
              )
            ],
          )),
        ));
  }
}
