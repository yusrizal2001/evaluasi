import 'dart:io';

void main(List<String> args) {
  int iJamStart = int.tryParse(stdin.readLineSync());
  print("Jam Masuk: " + iJamStart.toString());
  int iMenitStart = int.tryParse(stdin.readLineSync());
  print("Menit Masuk: " + iMenitStart.toString());
  int iJamStop = int.tryParse(stdin.readLineSync());
  print("Jam Keluar: " + iJamStop.toString());
  int iMenitStop = int.tryParse(stdin.readLineSync());
  print("Menit Keluar: " + iMenitStop.toString());

  int iToMenit1, iToMenit2, iSelangMenit, iJamDurasi, iMenitDurasi;

  iToMenit1 = iJamStart * 60 + iMenitStart;
  iToMenit2 = iJamStop * 60 + iMenitStop;

  if (iToMenit2 >= iToMenit1) {
    iSelangMenit = iToMenit2 - iToMenit1;
  } else {
    iSelangMenit = ((12 * 60) - iToMenit1) + iToMenit2;
  }

  iJamDurasi = iSelangMenit ~/ 60;
  iMenitDurasi = iSelangMenit % 60;

  print("Lama Jam: " + iJamDurasi.toString());
  print("Lama Menit: " + iMenitDurasi.toString());
}