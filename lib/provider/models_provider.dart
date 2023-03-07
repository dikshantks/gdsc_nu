// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:gdsc_nu/models/gpt_models.dart';

import '../services/api_services.dart';

class ModelsProvider with ChangeNotifier {
  String currentmodel = "ada";
  String get getcurrentmodel {
    return currentmodel;
  }

  void setcurrent(String newmodel) {
    currentmodel = newmodel;
    notifyListeners();
  }

  List<GptModels> modelslist = [];
  List<GptModels> get getmodellist {
    return modelslist;
  }

  Future<List<GptModels>> Allmodels() async {
    modelslist = await APIService.getModels();

    return modelslist;
  }
}
