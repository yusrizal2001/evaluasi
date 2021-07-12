import 'dart:io';

void main(List<String> arguments) {
  print("Gaji Pokok : ");
  int iGajiPokok = int.tryParse(stdin.readLineSync());
  print("Jumlah Anak : ");
  int iJmlAnak = int.tryParse(stdin.readLineSync());
  double iTunjangan;

  if (iJmlAnak <= 3 && iJmlAnak > 0) {
    iTunjangan = iJmlAnak * 0.1 * iGajiPokok;
  } else if (iJmlAnak > 3) {
    iTunjangan = 3 * 0.1 * iGajiPokok;
  } else {
    iTunjangan = 0;
  }

  print("Tunjangan Anak : ");
  print(iTunjangan.toInt());
}