import 'package:shoeskit/pages/onboarding.dart';

class OnBoarding{
  final String title;
  final String image;
  final String subtitle;
  
  OnBoarding({
    this.title,
    this.image,
    this.subtitle
  });
}

List<OnBoarding> onBoardingContent = [
  OnBoarding(
    title: 'Selamat datang di Shoeskit',
    image: 'assets/images/onboarding_1.png',
    subtitle: 'Kami merupakan toko sepatu premium yang hanya menjual produk berkualitas dan terpercaya. Jangan ragu untuk berbelanja di Shoeskit, karena produk disini 100% original.'
  ),
  OnBoarding(
    title: 'Tersedia berbagai merek',
    image: 'assets/images/onboarding_2.png',
    subtitle: 'Kami menyediakan berbagai merek sepatu ternama seperti Nike, Adidas,dan masih banyak lagi. Jadi kamu bisa memilih merek sepatu favorit kamu di Shoeskit.'
  ),
  OnBoarding(
    title: 'Berbelanja dengan mudah',
    image: 'assets/images/onboarding_3.png',
    subtitle: 'Kamu bisa membeli sepatu impianmu hanya dengan menggunakan aplikasi Shoeskit yang terinstall di smartphonemu dengan mudah . Jadi tunggu apa lagi...'
  ),
];