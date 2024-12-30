import 'package:flutter/material.dart';
import 'package:islami/view/homescreen.dart';
import 'package:islami/widgets/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});
  static const routeName = '/slider';
  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  final _pageController = PageController();
  int currentindex = 0;
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF202020),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/islamilogo.png'),
            Expanded(
              child: Center(
                child: PageView.builder(
                  onPageChanged: (value) {
                    currentindex = value;
                    isLastPage = value == 4;
                    setState(() {});
                  },
                  itemCount: 5,
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return getSliderItem(
                      index.toString(),
                      context,
                      index,
                    );
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                currentindex == 0
                    ? Text(
                        'Back',
                        style: TextStyle(
                          fontFamily: 'jannalt',
                          color: Colors.transparent,
                          fontSize: 16,
                        ),
                      )
                    : TextButton(
                        onPressed: () {
                          currentindex--;
                          _pageController.animateToPage(
                            currentindex,
                            duration: Duration(seconds: 1),
                            curve: Curves.easeInOut,
                          );
                          setState(() {});
                        },
                        child: Text(
                          'Back',
                          style: TextStyle(
                            fontFamily: 'jannalt',
                            color: Color(0xFFE2BE7F),
                            fontSize: 16,
                          ),
                        ),
                      ),
                Spacer(),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 5,
                  effect: CustomizableEffect(
                    dotDecoration: DotDecoration(
                      width: 7,
                      height: 7,
                      color: Color(0xFF707070),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    activeDotDecoration: DotDecoration(
                      width: 18,
                      height: 7,
                      color: Color(0xFFFFD482),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
                Spacer(),
                isLastPage == false
                    ? TextButton(
                        onPressed: () {
                          currentindex++;
                          _pageController.animateToPage(
                            currentindex,
                            duration: Duration(seconds: 1),
                            curve: Curves.easeInOut,
                          );
                          setState(() {});
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(
                            fontFamily: 'jannalt',
                            color: Color(0xFFE2BE7F),
                            fontSize: 16,
                          ),
                        ),
                      )
                    : TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            Homescreen.routeName,
                          );
                        },
                        child: Text(
                          'Finish',
                          style: TextStyle(
                            fontFamily: 'jannalt',
                            color: Color(0xFFE2BE7F),
                            fontSize: 16,
                          ),
                        ),
                      ),
              ],
            )
          ],
        ),
      ),
    );
  }
}