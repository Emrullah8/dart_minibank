//Kullanıcıdan 4 adımlı bankamatik uygulaması yazın. Kullanıcının bakiyesi 10.000 TL olacak ve çekmek
//istediği tutar bu tutardan fazla olursa yetersiz bakiye uyarısı versin.
// Para yatırma işlemi yapılırsa bakiyenin üzerine girilen tutar eklensin.
// 1.Bakiye Sorgulama 2.Para Çekme 3.Para Yatırma 4.Çıkış
// Kullanıcının seçimlerine göre de işlemlerin içerisine girip yapmak istediği işleme göre adımları yazın.
//Switch case ile yapılacak.

import 'dart:io';

void main() {
  int bakiye = 10000;
  print("Hoş geldiniz lütfen kart şifrenizi giriniz");
  int sifre = int.parse(stdin.readLineSync()!);
  if (sifre != 1234) {
    print("Şifre yanlış");
    exit(0);
  } else {
    sifre = 1234;
  }
  {
    print("Hoşgeldiniz.");
  }
  print(
      "Lütfen yapmak istediğiniz işlemi seçin. \n 1.Bakiye Sorgulama \t 2.Para Çekme \n 3.Para Yatırma \t 4.Çıkış");
  int secim = int.parse(stdin.readLineSync()!);

  switch (secim) {
    case 1:
      print("Bakiyeniz $bakiye TL'dir.");
    case 2:
      print("Ne kadar para çekmek istediğinizi giriniz.");
      int cekim = int.parse(stdin.readLineSync()!);
      if (cekim > bakiye) {
        print("Bakiyeniz yetersizdir.");
      } else
        () {
          print("Para çekimi yapılmıştır. Bakiyeniz ${bakiye - cekim}");
          exit(0);
        };
    case 3:
      print("Para yatırabilirsiniz.");
      int yatirma = int.parse(stdin.readLineSync()!);
      print("Para yatırılmıştır. Bakiyeniz ${bakiye + yatirma}");

    case 4:
      print("Çıkış yapılmıştır.");

      break;
    default:
  }
}
