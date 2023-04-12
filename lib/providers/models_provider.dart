import 'package:flutter/material.dart';
import 'package:guide/models/models_model.dart';
import 'package:guide/services/api_service.dart';

class ModelsProvider with ChangeNotifier {
  //String currentModel = "text-davinci-003";
  // let say in case ushobora kuzongera gukoresha davinci for purpose testing
  String currentModel = "gpt-3.5-turbo-0301";

  String get getCurrentModel {
    return currentModel;
  }

  void setCurrentModel(String newModel) {
    currentModel = newModel;
    notifyListeners();
  }

  List<ModelsModel> modelsList = [];

  List<ModelsModel> get getModelsList {
    return modelsList;
  }

  Future<List<ModelsModel>> getAllModels() async {
    modelsList = await ApiService.getModels(); 
    return modelsList;
  }
}
