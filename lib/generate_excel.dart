import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Future<void> generateSummaryXLSX() async {
  String fileName = "Журнал заказов ${DateFormat("dd.MM.yyyy").format(DateTime.now())}.xlsx";
  var excel = Excel.createExcel();
  Sheet sheetObject = excel[excel.getDefaultSheet() as String];

  //list = await MyApi
  List list = ['one', 'two', 'three'];
  sheetObject.cell(CellIndex.indexByColumnRow(rowIndex: 1, columnIndex: 1)).value = list[0];
  sheetObject.cell(CellIndex.indexByColumnRow(rowIndex: 2, columnIndex: 1)).value = list[1];

  //I generate in web
  try {
    excel.save(fileName: fileName);
  } catch (e) {
    debugPrint(e.toString());
  }
}
