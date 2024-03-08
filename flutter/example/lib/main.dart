import 'package:flutter/material.dart';

void main() {
  runApp(const BlocApp());
}



//presnation : UI, UI based on Logic(Bloc/Riverpod/Getx etc)

//Domain: 1.usecase-logic -> convert model to entity, 
//        2.repository -> abstract

//Data: 1. Datasource-> fetch data from Remote/Local convert it to Model
//      2. repository -> handle response