import 'dart:io';

void main(List<String> arguments) {
  print("Jam Masuk : ");
  int iMasuk = int.tryParse(stdin.readLineSync());
  print("Jam Keluar : ");
  int iKeluar = int.tryParse(stdin.readLineSync());
  int iLama;
  int iBiaya;

  if (iKeluar >= iMasuk) {
    iLama = iKeluar - iMasuk;
  } else {
    iLama = (12 - iMasuk) + iKeluar;
  }

  if (iLama > 2) {
    iBiaya = 2000 + ((iLama - 2) * 500);
  } else {
    iBiaya = 2000;
  }

  print(iBiaya);
}