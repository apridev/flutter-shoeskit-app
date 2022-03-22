import 'package:flutter/material.dart';
import 'package:shoeskit/onboarding_data.dart';
import 'package:shoeskit/template.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;

  PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndikator(index) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 12),
      duration: Duration(milliseconds: 400),
      width: 12,
      height: 12,
      decoration: BoxDecoration(
          color: currentIndex == index ? primaryColor : onboardingColor,
          shape: BoxShape.circle),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemCount: onBoardingContent.length,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: 60, right: defaultMargin, left: defaultMargin),
                      child: Text(
                        onBoardingContent[index].title,
                        style: primaryTextStyle.copyWith(
                            fontSize: 18, fontWeight: semiBold),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                      child: Text(
                        onBoardingContent[index].subtitle,
                        style: primaryTextStyle.copyWith(
                            fontSize: 12, letterSpacing: 0.5, wordSpacing: 2),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 50, left: defaultMargin, right: defaultMargin),
                      child: Center(
                        child: Image.asset(
                          onBoardingContent[index].image,
                          width: 306,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Column(
                  children: [
                    currentIndex == onBoardingContent.length - 1 ? 
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 143,
                              height: 35,
                              margin: EdgeInsets.only(
                                right: 10
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: productColor
                              ),
                              child: TextButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, '/login_page');
                                },
                                child: Text('Masuk', style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: semiBold
                                ),),
                              ),
                            ),
                            Container(
                              width: 143,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: primaryColor
                              ),
                              child: TextButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, '/register_page');
                                },
                                child: Text('Daftar', style: whiteTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: semiBold
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ) :
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OnBoardNavBtn(
                          name: 'Masuk',
                          onPressed: () {
                            Navigator.pushNamed(context, '/login_page');
                          },
                        ),
                        Row(
                          children: List.generate(
                            onBoardingContent.length,
                            (index) => dotIndikator(index),
                          ),
                        ),
                        Container(
                          width: 65,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: primaryColor,
                          ),
                          child: TextButton(
                            onPressed: (){
                               _pageController.nextPage(
                                duration: Duration(milliseconds: 400),
                                curve: Curves.easeInOut);
                            },
                            child: Text('Lewati', style: whiteTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: semiBold
                            ),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnBoardNavBtn extends StatelessWidget {
  const OnBoardNavBtn({Key key, this.name, this.onPressed}) : super(key: key);
  final String name;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Text(
          name,
          style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
        ));
  }
}
