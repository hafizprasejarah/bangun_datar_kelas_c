
import 'package:get/get.dart';

class SegitigaController extends GetxController{
  double set = 0.5;
  int a = 0;
  int t = 0;
  final hasil = "".obs;

  void hitungLuas(){
    num hitung = set * a * t ;
    hasil.value = "Hasil Perhitungan Luas Segitiga dari $a x $t adalah $hitung";
  }

  void hitungKeliling(){

    num hitung = a + a + a;
    hasil.value = "Hasil Perhitungan Keliling Segitiga adalah sisi $a X 3 = $hitung ";
  }

}