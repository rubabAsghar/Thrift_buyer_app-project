import '../../const/seller const/const.dart';

Widget Normaltext({text,color =Colors.white , size = 14.0}){
  return "$text".text.color(color).size(size).make();
}

Widget Boldtext({text,color =Colors.white, size = 14.0}){
  return "$text".text.color(color).size(size).make();
}